/**
 * Testbench: atomflow_controller
 *
 * Calls three IPs:
 *   IP1  reconstruct()                  — image analysis (called inside atomflow_controller)
 *   IP2  sortLatticeByRowParallel_HLS() — sorting (called inside atomflow_controller + directly below)
 *   IP3  atomflow_controller()          — combined controller under test
 *
 * Test 1: MODE_QUBIT_READOUT  → emissions computed, moveCount == 0
 * Test 2: MODE_INITIALIZATION → emissions computed, moveCount > 0
 * Test 3: direct sort check   → call IP2 on reconstructed state, verify target filled
 */

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <cstring>
#include "atomflow_controller.hpp"

// ── path helper ──────────────────────────────────────────────────────────────
static std::string data_path(const std::string& file)
{
    std::string f = __FILE__;
    std::string dir = f.substr(0, f.find_last_of("/\\"));
    return dir + "/../../Image_analysis/test_cases/16x16/" + file;
}

// ── string split ─────────────────────────────────────────────────────────────
static std::vector<std::string> split(const std::string& s, const std::string& delim)
{
    std::vector<std::string> out;
    size_t a = 0, b;
    while ((b = s.find(delim, a)) != std::string::npos) {
        if (b != a) out.push_back(s.substr(a, b - a));
        a = b + delim.size();
    }
    out.push_back(s.substr(a));
    return out;
}

// ── parse restoutput.txt ─────────────────────────────────────────────────────
static bool parse_inputs(
    const std::string& fname,
    atom_location* locs, int& nLocs,
    int& ps0, int& ps1, int& psfSS, int& projSz,
    IMAGE_DTYPE* projs_local, IMAGE_DTYPE* projs, int* projs_local_sz,
    int& frows, int& fcols)
{
    std::ifstream f(fname);
    if (!f) { std::cerr << "Cannot open " << fname << "\n"; return false; }
    nLocs = 0; int lptr = 0, lcnt = 0;
    std::string line;
    while (std::getline(f, line)) {
        size_t c = line.find(": ");
        if (c == std::string::npos) continue;
        std::string k = line.substr(0, c), v = line.substr(c + 2);
        if      (k == "atomLocationSize")  nLocs  = std::stoi(v);
        else if (k == "projShape0")        ps0    = std::stoi(v);
        else if (k == "projShape1")        ps1    = std::stoi(v);
        else if (k == "psfSupersample")    psfSS  = std::stoi(v);
        else if (k == "imageProjectSize")  projSz = std::stoi(v);
        else if (k == "fullImage_row")     frows  = std::stoi(v);
        else if (k == "fullImage_col")     fcols  = std::stoi(v);
        else if (k == "atomLocations") {
            for (const auto& s : split(v, "||")) {
                if (s.empty()) continue;
                auto xy = split(s, "|");
                if (xy.size() != 2) continue;
                locs[lptr].y = std::stod(xy[0]);
                locs[lptr].x = std::stod(xy[1]);
                lptr++;
            }
        }
        else if (k == "imageProjs_local") {
            auto elems = split(v, "|"); int ei = 0;
            for (size_t i = 0; i < (size_t)IMAGE_PROJECTION_LOCAL; ++i) {
                if (i < elems.size() && !elems[ei].empty() && i % 32 != 31)
                    projs_local[lcnt * IMAGE_PROJECTION_LOCAL + i] = std::stod(elems[ei++]);
                else {
                    projs_local[lcnt * IMAGE_PROJECTION_LOCAL + i] = 0.0f;
                    if (projs_local_sz[lcnt] == 0) projs_local_sz[lcnt] = (int)i;
                }
            }
            lcnt++;
        }
        else if (k == "imageProjs") {
            auto elems = split(v, "|");
            for (size_t i = 0; i < (size_t)IMAGE_PROJECTION_SIZE; ++i)
                projs[i] = (i < elems.size() && !elems[i].empty()) ? std::stod(elems[i]) : 0.0f;
        }
    }
    return nLocs == lptr;
}

// ── parse fullImage_output.txt ───────────────────────────────────────────────
static bool parse_fullimage(const std::string& fname, IMAGE_DTYPE* img)
{
    memset(img, 0, FULL_IMAGE_SIZE * sizeof(IMAGE_DTYPE));
    std::ifstream f(fname);
    if (!f) { std::cerr << "Cannot open " << fname << "\n"; return false; }
    bool found = false; int off = 0;
    std::string line;
    while (std::getline(f, line)) {
        if (!found) {
            size_t c = line.find(": ");
            if (c != std::string::npos && line.substr(0, c) == "fullImage") found = true;
        } else {
            std::istringstream ss(line); std::string tok;
            while (std::getline(ss, tok, '|'))
                if (!tok.empty()) img[off++] = std::stof(tok);
        }
    }
    return found;
}

// ── pack floats → ap_uint<512> ───────────────────────────────────────────────
static void pack512(const IMAGE_DTYPE* src, ap_uint<512>* dst, size_t n)
{
    union { uint32_t u; float f; } cv;
    size_t nw = (n * 32 + 511) / 512;
    for (size_t i = 0; i < nw; ++i) {
        ap_uint<512> w = 0;
        for (int j = 0; j < 16; ++j) {
            size_t idx = i * 16 + j;
            cv.f = (idx < n) ? src[idx] : 0.0f;
            w.range(j * 32 + 31, j * 32) = cv.u;
        }
        dst[i] = w;
    }
}

// ── drain AXI-Stream move output into a flat array of ParallelMove ───────────
// The stream encodes each ParallelMove as ceil(sizeof(ParallelMove)/64) 512-bit
// words, with the last word zero-padded.  Moves are emitted back-to-back.
static void drain_movestream(hls::stream<ap_uint<512>>& s,
                             ParallelMove* moves, unsigned int moveCount)
{
    const unsigned int N = (unsigned int)((sizeof(ParallelMove) + 63) / 64);
    for (unsigned int m = 0; m < moveCount; ++m) {
        uint8_t* dst = (uint8_t*)&moves[m];
        memset(dst, 0, sizeof(ParallelMove));
        for (unsigned int w = 0; w < N; ++w) {
            if (s.empty()) break;
            ap_uint<512> word = s.read();
            for (int b = 0; b < 64; ++b) {
                unsigned int idx = w * 64 + (unsigned int)b;
                if (idx < sizeof(ParallelMove))
                    dst[idx] = (uint8_t)word.range(b*8+7, b*8);
            }
        }
    }
}

// ── target geometry ──────────────────────────────────────────────────────────
// Row pattern (repeating every 4 rows):
//   rows r%4==0, r%4==1 : o x x x x x x o o x x x x x x o
//                          (cols 1-6 and 9-14 filled, others empty)
//   rows r%4==2, r%4==3 : all empty
static void make_target(uint8_t* tgt, int rows, int cols)
{
    memset(tgt, 0, rows * cols);
    for (int r = 0; r < rows; ++r) {
        if (r % 4 == 0 || r % 4 == 1) {
            for (int c = 0; c < cols; ++c) {
                // filled at cols 1..6 and 9..14 (scaled to actual cols width)
                int half = cols / 2;
                bool left_block  = (c >= 1 && c <= half - 2);   // 1..6  for cols=16
                bool right_block = (c >= half + 1 && c <= cols - 2); // 9..14 for cols=16
                if (left_block || right_block)
                    tgt[r * cols + c] = 1;
            }
        }
    }
}

// ─────────────────────────────────────────────────────────────────────────────
int main()
{
    // ── 1. Load inputs ───────────────────────────────────────────────────────
    static atom_location  locs[MAX_ATOM_SITES];
    static IMAGE_DTYPE    projs_local[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE];
    static IMAGE_DTYPE    projs[IMAGE_PROJECTION_SIZE];
    static int            projs_local_sz[IMAGE_PROJECTION_SIZE];
    static IMAGE_DTYPE    fullImg[FULL_IMAGE_SIZE];
    memset(projs_local_sz, 0, sizeof(projs_local_sz));

    int nLocs=0, ps0=0, ps1=0, psfSS=0, projSz=0, frows=0, fcols=0;

    if (!parse_inputs(data_path("restoutput.txt"),
                      locs, nLocs, ps0, ps1, psfSS, projSz,
                      projs_local, projs, projs_local_sz, frows, fcols))
        { std::cerr << "FAIL: parse_inputs\n"; return 1; }
    if (!parse_fullimage(data_path("fullImage_output.txt"), fullImg))
        { std::cerr << "FAIL: parse_fullimage\n"; return 1; }

    std::cout << "Loaded: " << nLocs << " atoms, image " << frows << "x" << fcols << "\n\n";

    // ── 2. Pack data for burst_maxi ports ────────────────────────────────────
    // fullImage must be re-strided to PIXEL-column layout (PIXEL=1024 in header)
    static IMAGE_DTYPE    fullImg_strided[FULL_IMAGE_SIZE];
    memset(fullImg_strided, 0, sizeof(fullImg_strided));
    for (int r = 0; r < frows; ++r)
        for (int c = 0; c < fcols; ++c)
            fullImg_strided[r * PIXEL + c] = fullImg[r * fcols + c];

    static ap_uint<512> projs_local_packed[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE * 32 / 512];
    static ap_uint<512> fullImg_packed    [FULL_IMAGE_SIZE * 32 / 512];
    pack512(projs_local,    projs_local_packed, (size_t)IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE);
    pack512(fullImg_strided, fullImg_packed,    FULL_IMAGE_SIZE);

    // ── 3. Setup grid / target ───────────────────────────────────────────────
    const int ROWS = 16, COLS = 16;
    const unsigned int ZRS = 0, ZRE = ROWS, ZCS = 0, ZCE = COLS;

    static uint8_t     tgt[ROWS * COLS];
    static IMAGE_DTYPE emissions[MAX_ATOM_SITES];
    static ParallelMove moveList_buf[HLS_MAX_MOVES];      // deserialized from stream
    unsigned int       moveCount = 0;

    make_target(tgt, ROWS, COLS);

    int pass = 0, fail = 0;

    // =========================================================================
    // TEST 1 — IP3: atomflow_controller  (MODE_QUBIT_READOUT)
    // =========================================================================
    std::cout << "=== TEST 1: atomflow_controller  MODE_QUBIT_READOUT ===\n";
    memset(emissions, 0, sizeof(emissions));
    moveCount = 0;
    {
        hls::stream<ap_uint<512>> moveStream("t1_moveStream");
        atomflow_controller(
            MODE_QUBIT_READOUT, 0.0f /*threshold unused in readout mode*/,
            nLocs, ps0, ps1, locs, psfSS, projSz,
            projs_local_packed, projs, projs_local_sz,
            fullImg_packed, frows, fcols,
            emissions, ROWS, COLS, tgt,
            ZRS, ZRE, ZCS, ZCE, moveStream, &moveCount);
        // READOUT mode: stream empty, nothing to drain
    }

    // Check: moveCount == 0
    std::cout << "  moveCount = " << moveCount << "  (expected 0)\n";
    if (moveCount == 0) { std::cout << "  PASS\n"; pass++; }
    else                { std::cout << "  FAIL\n"; fail++; }

    // Check: emissions non-zero, compute adaptive threshold
    float emin = 1e30f, emax = -1e30f;
    for (int i = 0; i < nLocs; ++i) {
        if (emissions[i] < emin) emin = emissions[i];
        if (emissions[i] > emax) emax = emissions[i];
    }
    float threshold = (emax + emin) / 2.0f;
    std::cout << "  emission range: [" << emin << ", " << emax << "]"
              << "  threshold=" << threshold << "\n";
    if (emax > 0.0f) { std::cout << "  PASS\n"; pass++; }
    else             { std::cout << "  FAIL: all emissions zero\n"; fail++; }

    // Occupancy map
    int n_occ = 0;
    std::cout << "\n  Occupancy map (•=occupied, ·=empty):\n";
    for (int r = 0; r < ROWS; ++r) {
        std::cout << "  ";
        for (int c = 0; c < COLS; ++c) {
            bool occ = (emissions[r * COLS + c] > threshold);
            if (occ) ++n_occ;
            std::cout << (occ ? "•" : "·");
        }
        std::cout << "\n";
    }
    std::cout << "  " << n_occ << "/" << (ROWS * COLS) << " occupied\n";

    // =========================================================================
    // TEST 2 — IP3: atomflow_controller  (MODE_INITIALIZATION)
    // =========================================================================
    std::cout << "\n=== TEST 2: atomflow_controller  MODE_INITIALIZATION ===\n";
    memset(emissions, 0, sizeof(emissions));
    moveCount = 0;
    {
        hls::stream<ap_uint<512>> moveStream("t2_moveStream");
        atomflow_controller(
            MODE_INITIALIZATION, threshold,
            nLocs, ps0, ps1, locs, psfSS, projSz,
            projs_local_packed, projs, projs_local_sz,
            fullImg_packed, frows, fcols,
            emissions, ROWS, COLS, tgt,
            ZRS, ZRE, ZCS, ZCE, moveStream, &moveCount);
        // Drain stream → moveList_buf for move replay below
        drain_movestream(moveStream, moveList_buf, moveCount);
    }

    // Check: moveCount > 0
    std::cout << "  moveCount = " << moveCount << "  (expected > 0)\n";
    if (moveCount > 0) { std::cout << "  PASS\n"; pass++; }
    else               { std::cout << "  FAIL: no moves generated\n"; fail++; }

    // Full movement list
    if (moveCount > 0) {
        std::cout << "\n  Movement list (" << moveCount << " moves):\n";
        for (unsigned int m = 0; m < moveCount; ++m) {
            const ParallelMove& mv = moveList_buf[m];
            std::cout << "  Move #" << m << ": " << mv.stepsCount << " step(s)";
            for (size_t s = 0; s < mv.stepsCount; ++s) {
                const auto& st = mv.steps[s];
                std::cout << "  [";
                if (st.rowSelectionCount > 0) std::cout << "r=" << (int)st.rowSelection[0];
                if (st.colSelectionCount > 0) std::cout << " c=" << (int)st.colSelection[0];
                std::cout << "]";
            }
            std::cout << "\n";
        }
    }

    // Occupancy map before sort
    std::cout << "\n  Occupancy map (•=occupied, ·=empty):\n";
    for (int r = 0; r < ROWS; ++r) {
        std::cout << "  ";
        for (int c = 0; c < COLS; ++c)
            std::cout << ((emissions[r*COLS+c] > threshold) ? "\xe2\x80\xa2" : "\xc2\xb7");
        std::cout << "\n";
    }

    // Post-sort map: replay moves on top of the emissions-derived stateArray
    {
        // Rebuild initial state from emissions
        Array2D t2_state(ROWS, COLS, false);
        for (int r = 0; r < ROWS; ++r)
            for (int c = 0; c < COLS; ++c)
                t2_state(r, c) = (emissions[r * COLS + c] > threshold);

        // Apply all moves in sequence
        if (moveCount > 0) {
            for (unsigned int m = 0; m < moveCount; ++m)
                moveList_buf[m].execute(t2_state);
        }

        // Zone-relative target (zone == full grid here, so relative == absolute)
        Array2D t2_target(ZRE - ZRS, ZCE - ZCS, false);
        for (unsigned int r = 0; r < ZRE - ZRS; ++r)
            for (unsigned int c = 0; c < ZCE - ZCS; ++c)
                t2_target(r, c) = (tgt[(ZRS + r) * COLS + (ZCS + c)] != 0);

        int t2_total = 0, t2_met = 0, t2_miss = 0;
        for (unsigned int r = ZRS; r < ZRE; ++r)
            for (unsigned int c = ZCS; c < ZCE; ++c) {
                bool want = t2_target(r - ZRS, c - ZCS);
                bool have = t2_state(r, c);
                if (want) { ++t2_total; if (have) ++t2_met; }
                if (want != have) ++t2_miss;
            }

        std::cout << "\n  Post-sort lattice (•=target filled, o=extra atom, □=target missing, ·=empty):\n";
        for (unsigned int r = ZRS; r < ZRE; ++r) {
            std::cout << "  ";
            for (unsigned int c = ZCS; c < ZCE; ++c) {
                bool want = t2_target(r - ZRS, c - ZCS);
                bool have = t2_state(r, c);
                if      (have && want)  std::cout << "\xe2\x80\xa2";  // •
                else if (have && !want) std::cout << "o";
                else if (!have && want) std::cout << "\xe2\x96\xa1";  // □
                else                    std::cout << "\xc2\xb7";      // ·
            }
            std::cout << "\n";
        }
        std::cout << "  filled: " << t2_met << "/" << t2_total
                  << "  mismatches=" << t2_miss
                  << (t2_miss == 0 ? "  (perfect)" : "  (partial — expected: no parking space)") << "\n";
    }

    // =========================================================================
    // TEST 3 — IP2: sortLatticeByRowParallel_HLS  (direct call)
    //
    // Embed the 16×16 emission-derived occupancy into cols 8-23 of a 16×32
    // lattice.  Cols 0-7 and 24-31 are empty parking space → 0 mismatch.
    // Zone: [0,16)×[8,24)   Target: oxxxxxxooxxxxxxo on rows r%4==0,1
    // =========================================================================
    std::cout << "\n=== TEST 3: sortLatticeByRowParallel_HLS  (real emissions, 16x32) ===\n";
    {
        const unsigned int T3_TR  = 16, T3_TC  = 32;   // total lattice
        const unsigned int T3_ZR  = ROWS, T3_ZC = COLS; // zone size = 16×16
        const unsigned int T3_ZRS = 0,    T3_ZRE = T3_TR;
        const unsigned int T3_ZCS = (T3_TC - T3_ZC) / 2;  // 8
        const unsigned int T3_ZCE = T3_ZCS + T3_ZC;        // 24

        // Build stateArray: embed 16×16 emission occupancy into zone cols
        Array2D t3_state(T3_TR, T3_TC, false);
        for (int r = 0; r < ROWS; ++r)
            for (int c = 0; c < COLS; ++c)
                t3_state(r, T3_ZCS + c) = (emissions[r * COLS + c] > threshold);

        // Target: oxxxxxxooxxxxxxo on rows r%4∈{0,1}, zone-relative (16×16)
        Array2D t3_target(T3_ZR, T3_ZC, false);
        for (unsigned int r = 0; r < T3_ZR; ++r)
            if (r % 4 == 0 || r % 4 == 1)
                for (int c : {1,2,3,4,5,6, 9,10,11,12,13,14})
                    t3_target(r, c) = true;

        int t3_atoms = 0, t3_tgts = 0;
        for (unsigned int r = 0; r < T3_TR; ++r)
            for (unsigned int c = 0; c < T3_TC; ++c)
                if (t3_state(r, c)) ++t3_atoms;
        for (unsigned int r = 0; r < T3_ZR; ++r)
            for (unsigned int c = 0; c < T3_ZC; ++c)
                if (t3_target(r, c)) ++t3_tgts;

        std::cout << "  lattice=" << T3_TR << "x" << T3_TC
                  << "  zone=[" << T3_ZRS << "," << T3_ZRE
                  << ")x[" << T3_ZCS << "," << T3_ZCE << ")\n";
        std::cout << "  atoms=" << t3_atoms << "  target sites=" << t3_tgts << "\n";

        // Call IP2 directly via streaming overload
        hls::stream<ap_uint<512>> t3_stream("t3_stream");
        HLSMoveStream t3_moves(t3_stream);
        sortLatticeByRowParallel_HLS(t3_state, T3_ZRS, T3_ZRE, T3_ZCS, T3_ZCE,
                                     t3_target, t3_moves);

        // Validate: only count unfilled target sites as failures
        // (extra atoms at non-target positions are acceptable)
        int t3_total = 0, t3_met = 0, t3_extra = 0;
        for (unsigned int r = T3_ZRS; r < T3_ZRE; ++r)
            for (unsigned int c = T3_ZCS; c < T3_ZCE; ++c) {
                bool want = t3_target(r - T3_ZRS, c - T3_ZCS);
                bool have = t3_state(r, c);
                if (want)  { ++t3_total; if (have) ++t3_met; }
                if (!want && have) ++t3_extra;
            }

        std::cout << "  filled: " << t3_met << "/" << t3_total
                  << "  extra atoms=" << t3_extra << "\n";
        if (t3_met == t3_total) { std::cout << "  PASS\n"; pass++; }
        else                    { std::cout << "  FAIL\n"; fail++; }

        // Post-sort zone map
        std::cout << "\n  Post-sort zone (•=target filled, o=extra, □=missing, ·=empty):\n";
        for (unsigned int r = T3_ZRS; r < T3_ZRE; ++r) {
            std::cout << "  ";
            for (unsigned int c = T3_ZCS; c < T3_ZCE; ++c) {
                bool want = t3_target(r - T3_ZRS, c - T3_ZCS);
                bool have = t3_state(r, c);
                if      (have && want)  std::cout << "\xe2\x80\xa2";
                else if (have && !want) std::cout << "o";
                else if (!have && want) std::cout << "\xe2\x96\xa1";
                else                    std::cout << "\xc2\xb7";
            }
            std::cout << "\n";
        }
        std::cout << "  moves=" << t3_moves.count
                  << "  stream beats=" << t3_stream.size() << "\n";
    }

    // ── Final result ─────────────────────────────────────────────────────────
    std::cout << "\n========================================\n";
    std::cout << "RESULT: " << pass << " passed, " << fail << " failed\n";
    if (fail == 0) std::cout << "ALL TESTS PASSED\n";
    std::cout << "========================================\n";
    return (fail == 0) ? 0 : 1;
}
