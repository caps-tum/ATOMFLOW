/**
 * Testbench: atomflow_controller
 *
 * Calls three IPs:
 *   IP1  reconstruct()                  — image analysis (called inside atomflow_controller)
 *   IP2  sortLatticeByRowParallel_HLS() — sorting (called inside atomflow_controller)
 *   IP3  atomflow_controller()          — combined controller under test
 *
 * Test 1: MODE_QUBIT_READOUT  → emissions computed, moveCount == 0
 * Test 2: MODE_INITIALIZATION → emissions computed, moveCount > 0
 * Test 3: 16x32 parking grid  → call full controller with 16x16 zone detections
 */

#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <cstring>
#include <cstdlib>
#include <cctype>
#include <limits>
#include "atomflow_controller.hpp"

// ── path helper ──────────────────────────────────────────────────────────────
static std::string repo_root()
{
    std::string f = __FILE__;
    std::string dir = f.substr(0, f.find_last_of("/\\"));
    return dir + "/../..";
}

static std::string case_path(const std::string& set, const std::string& file)
{
    return repo_root() + "/Image_analysis/test_cases/" + set + "/" + file;
}

static std::string data_path(const std::string& file)
{
    return case_path("16x16", file);
}

// True when a token can actually be converted by std::stod. Checking only
// !empty() is not enough: a CRLF fixture yields "\r", which is non-empty but
// throws.
static bool numeric_token(const std::string& t)
{
    for (char ch : t)
        if (!std::isspace(static_cast<unsigned char>(ch))) return true;
    return false;
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
        // Some fixtures are CRLF (Image_analysis/test_cases/10x10). A trailing
        // '\r' survives getline and turns the last field of every line into a
        // token that is non-empty but not numeric, so std::stod throws.
        if (!line.empty() && line.back() == '\r') line.pop_back();
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
                if (!numeric_token(s)) continue;
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
                if (i < elems.size() && numeric_token(elems[ei]) && i % 32 != 31)
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
                projs[i] = (i < elems.size() && numeric_token(elems[i])) ? std::stod(elems[i]) : 0.0f;
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
        if (!line.empty() && line.back() == '\r') line.pop_back();   // CRLF fixtures
        if (!found) {
            size_t c = line.find(": ");
            if (c != std::string::npos && line.substr(0, c) == "fullImage") found = true;
        } else {
            std::istringstream ss(line); std::string tok;
            while (std::getline(ss, tok, '|'))
                if (numeric_token(tok)) img[off++] = std::stof(tok);
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

// ── atom-number conservation check ──────────────────────────────────────────
// Replays moves one at a time and verifies the exact population delta:
//   * a normal move must conserve atom count;
//   * a discard move must lose exactly the occupied source intersections whose
//     paired destinations are outside the grid.
static int count_atoms(const Array2D& a)
{
    int n = 0;
    for (size_t r = 0; r < (size_t)a.rows(); ++r)
        for (size_t c = 0; c < (size_t)a.cols(); ++c)
            if (const_cast<Array2D&>(a)(r, c)) ++n;
    return n;
}

static bool check_conservation(Array2D state, const ParallelMove* moves,
                               unsigned int moveCount, const char* label)
{
    int before = count_atoms(state);
    int discarded = 0;
    bool ok = true;
    for (unsigned int m = 0; m < moveCount; ++m) {
        const ParallelMove& move = moves[m];
        const ParallelMove::Step& first = move.steps[0];
        const ParallelMove::Step& last = move.steps[move.stepsCount - 1];
        int expectedDiscard = 0;
        for (size_t r = 0; r < first.rowSelectionCount; ++r) {
            for (size_t c = 0; c < first.colSelectionCount; ++c) {
                int srcRow = first.rowSelection[r];
                int srcCol = first.colSelection[c];
                bool srcOnGrid = srcRow >= 0 && srcRow < state.rows() &&
                                 srcCol >= 0 && srcCol < state.cols();
                bool dstOnGrid = last.rowSelection[r] >= 0 &&
                                 last.rowSelection[r] < state.rows() &&
                                 last.colSelection[c] >= 0 &&
                                 last.colSelection[c] < state.cols();
                if (srcOnGrid && !dstOnGrid && state(srcRow, srcCol))
                    ++expectedDiscard;
            }
        }

        int pre = count_atoms(state);
        bool executed = move.execute(state);
        int post = count_atoms(state);
        int actualDiscard = pre - post;
        bool flaggedDiscard = (move.flags & MOVE_FLAG_DISCARD) != 0;

        if (!executed || actualDiscard != expectedDiscard ||
            (!flaggedDiscard && actualDiscard != 0)) {
            ok = false;
            std::cout << "    move #" << m << ": population delta mismatch"
                      << " (executed=" << executed
                      << ", flagDiscard=" << flaggedDiscard
                      << ", expectedDiscard=" << expectedDiscard
                      << ", actualDiscard=" << actualDiscard << ")\n";
        }
        discarded += actualDiscard;
    }
    int after = count_atoms(state);
    std::cout << "  " << label << " conservation: " << before << " atoms -> "
              << after << " (" << discarded << " discarded)"
              << (ok ? "  OK\n" : "  VIOLATION\n");
    return ok;
}

// ── move stream audit (issues 3.3 / out-of-range destinations) ───────────────
// Classifies every emitted move WITHOUT changing behaviour:
//   executable       — non-empty selections, in-bounds destination
//   sentinel discard — destination -1 (the only documented discard encoding)
//   offgrid discard  — destination < -1 or >= grid size; produced on purpose by
//                      the unusable-atom removal path (sortRemainingRowsOrCols)
//                      but not part of any documented protocol
//   NOP              — a step has an empty row/col selection; execute() rejects
//                      it, yet its 5 beats still cross the wire (host filters)
static bool audit_moves(const ParallelMove* moves, unsigned int moveCount,
                        int rows, int cols)
{
    unsigned int nExec = 0, nSentinel = 0, nOffgrid = 0, nNop = 0, nMismatch = 0;
    unsigned int nFlagDisagree = 0;
    std::cout << "\n  Move audit (grid " << rows << "x" << cols << "):\n";
    for (unsigned int m = 0; m < moveCount; ++m) {
        const ParallelMove& mv = moves[m];
        bool empty_sel = (mv.stepsCount == 0), mismatch = false;
        bool off_grid = false, sentinel = false;
        if (mv.stepsCount > 0) {
            const ParallelMove::Step& fs = mv.steps[0];
            const ParallelMove::Step& ls = mv.steps[mv.stepsCount - 1];
            mismatch = (fs.colSelectionCount != ls.colSelectionCount ||
                        fs.rowSelectionCount != ls.rowSelectionCount);
            for (size_t st = 0; st < mv.stepsCount; ++st)
                if (mv.steps[st].colSelectionCount == 0 ||
                    mv.steps[st].rowSelectionCount == 0) empty_sel = true;
            for (size_t i = 0; i < ls.rowSelectionCount; ++i) {
                int16_t v = ls.rowSelection[i];
                if (v == -1) sentinel = true;
                else if (v < -1 || v >= rows) off_grid = true;
            }
            for (size_t i = 0; i < ls.colSelectionCount; ++i) {
                int16_t v = ls.colSelection[i];
                if (v == -1) sentinel = true;
                else if (v < -1 || v >= cols) off_grid = true;
            }
        }
        // ordering: every multi-tone selection must be strictly increasing;
        // C-sim execute() rejects violations but synthesized RTL executes them
        bool bad_order = false;
        for (size_t st = 0; st < mv.stepsCount; ++st) {
            const ParallelMove::Step& sp = mv.steps[st];
            for (size_t i = 1; i < sp.rowSelectionCount; ++i)
                if (sp.rowSelection[i] <= sp.rowSelection[i-1]) bad_order = true;
            for (size_t i = 1; i < sp.colSelectionCount; ++i)
                if (sp.colSelection[i] <= sp.colSelection[i-1]) bad_order = true;
        }
        const char* cls = 0;
        if (empty_sel)      { cls = "NOP (empty selection)";              ++nNop; }
        else if (mismatch)  { cls = "INVALID (first/last count mismatch)"; ++nMismatch; }
        else if (bad_order) { cls = "INVALID (selection not strictly increasing:"
                                    " C-sim rejects, RTL would execute)";  ++nMismatch; }
        else if (off_grid)  { cls = "discard (off-grid, undocumented)";    ++nOffgrid; }
        else if (sentinel)  { cls = "discard (-1 sentinel)";               ++nSentinel; }
        else                { ++nExec; }
        // Cross-check the on-wire flag against what the coordinates imply.
        // A disagreement means the producer and the host disagree about the
        // packet's meaning — exactly the protocol drift the flag exists to stop.
        bool flagSaysDiscard = (mv.flags & MOVE_FLAG_DISCARD) != 0;
        bool coordsSayDiscard = sentinel || off_grid;
        if (!empty_sel && flagSaysDiscard != coordsSayDiscard) {
            ++nFlagDisagree;
            std::cout << "    move #" << m << ": FLAG MISMATCH (flags=0x"
                      << std::hex << (unsigned)mv.flags << std::dec
                      << " but coordinates say discard=" << coordsSayDiscard << ")\n";
        }
        if (cls) std::cout << "    move #" << m << ": " << cls << "\n";
        if (bad_order) {  // dump the offending move in full
            for (size_t st = 0; st < mv.stepsCount; ++st) {
                const ParallelMove::Step& sp = mv.steps[st];
                std::cout << "      step " << st << ": rows[";
                for (size_t i = 0; i < sp.rowSelectionCount; ++i)
                    std::cout << (i ? "," : "") << sp.rowSelection[i];
                std::cout << "] cols[";
                for (size_t i = 0; i < sp.colSelectionCount; ++i)
                    std::cout << (i ? "," : "") << sp.colSelection[i];
                std::cout << "]\n";
            }
        }
    }
    std::cout << "    summary: " << moveCount << " raw = "
              << nExec << " executable + " << nSentinel << " sentinel-discard + "
              << nOffgrid << " offgrid-discard + " << nNop << " NOP + "
              << nMismatch << " mismatch\n";
    std::cout << "    MOVE_FLAG_DISCARD agrees with coordinates on all "
              << moveCount << " moves: "
              << (nFlagDisagree == 0 ? "yes" : "NO") << "\n";
    if (nNop + nMismatch > 0)
        std::cout << "    -> " << (nNop + nMismatch) << " moves are pure wire waste"
                  << " and currently force host-side cleaning\n";
    return nFlagDisagree == 0;
}

static bool test_move_validator()
{
    ParallelMove valid;
    ParallelMove::Step start, elbow, end;
    start.rowSelection[start.rowSelectionCount++] = 1;
    start.colSelection[start.colSelectionCount++] = 2;
    elbow.rowSelection[elbow.rowSelectionCount++] = 1;
    elbow.colSelection[elbow.colSelectionCount++] = 3;
    end.rowSelection[end.rowSelectionCount++] = 4;
    end.colSelection[end.colSelectionCount++] = 3;
    valid.steps[valid.stepsCount++] = start;
    valid.steps[valid.stepsCount++] = elbow;
    valid.steps[valid.stepsCount++] = end;

    if (!move_is_emittable(valid)) return false;

    ParallelMove emptyMiddle = valid;
    emptyMiddle.steps[1].rowSelectionCount = 0;
    if (move_is_emittable(emptyMiddle)) return false;

    ParallelMove mismatchedMiddle = valid;
    mismatchedMiddle.steps[1].rowSelection[1] = 2;
    mismatchedMiddle.steps[1].rowSelectionCount = 2;
    if (move_is_emittable(mismatchedMiddle)) return false;

    ParallelMove duplicateTone = valid;
    for (size_t i = 0; i < duplicateTone.stepsCount; ++i) {
        duplicateTone.steps[i].rowSelection[0] = 1;
        duplicateTone.steps[i].rowSelection[1] = 1;
        duplicateTone.steps[i].rowSelectionCount = 2;
    }
    if (move_is_emittable(duplicateTone)) return false;

    ParallelMove tooManySteps = valid;
    tooManySteps.stepsCount = MAX_MOVE_STEPS + 1;
    if (move_is_emittable(tooManySteps)) return false;

    ParallelMove tooManyRows = valid;
    tooManyRows.steps[0].rowSelectionCount = AOD_ROW_LIMIT + 1;
    if (move_is_emittable(tooManyRows)) return false;

    ParallelMove empty;
    if (move_is_emittable(empty)) return false;

    return true;
}

static bool test_move_capacity_guard()
{
    static HLSMoveList list;
    list.clear();
    ParallelMove move;
    for (size_t i = 0; i < HLS_MAX_MOVES; ++i)
        if (!list.push_back(move)) return false;
    if (list.size() != HLS_MAX_MOVES || list.overflow) return false;
    if (list.push_back(move)) return false;
    if (!list.overflow || list.size() != HLS_MAX_MOVES) return false;

    hls::stream<ap_uint<512>> stream("capacity_stream");
    HLSMoveStream streamedList(stream);
    streamedList.count = HLS_MAX_MOVES;
    if (streamedList.push_back(move)) return false;
    if (!streamedList.overflow || streamedList.count != HLS_MAX_MOVES) return false;
    if (!stream.empty()) return false;

    return true;
}

// ─────────────────────────────────────────────────────────────────────────────
int main()
{
    std::cout << "=== TEST 0: moving-list structural guards ===\n";
    if (!test_move_validator()) {
        std::cerr << "FAIL: move validator accepted an invalid move or rejected a valid move\n";
        return 1;
    }
    if (!test_move_capacity_guard()) {
        std::cerr << "FAIL: move-list capacity overflow was not fail-closed\n";
        return 1;
    }
    std::cout << "PASS: validator and 512-move capacity guards\n\n";

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
    unsigned int       status    = 0;
    unsigned int       tFilled = 0, tRequired = 0;

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
            ZRS, ZRE, ZCS, ZCE, moveStream, &moveCount, &status,
            &tFilled, &tRequired);
        // READOUT mode: stream empty, nothing to drain
    }

    // Check: moveCount == 0, status == OK
    std::cout << "  moveCount = " << moveCount << "  (expected 0)"
              << "  status = " << status << "\n";
    if (moveCount == 0 && status == ATOMFLOW_STATUS_OK)
         { std::cout << "  PASS\n"; pass++; }
    else { std::cout << "  FAIL\n"; fail++; }

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
            ZRS, ZRE, ZCS, ZCE, moveStream, &moveCount, &status,
            &tFilled, &tRequired);
        // Drain stream → moveList_buf for move replay below
        drain_movestream(moveStream, moveList_buf, moveCount);
    }

    // Check: moveCount > 0; status must be written (16x16 has no parking, so
    // a partial fill legitimately reports ERR_SORT — record, don't fail on it)
    std::cout << "  moveCount = " << moveCount << "  (expected > 0)"
              << "  status = " << status
              << (status == ATOMFLOW_STATUS_OK ? " (OK)" :
                  status == ATOMFLOW_STATUS_ERR_SORT ? " (ERR_SORT)" : " (UNEXPECTED)")
              << "  targets = " << tFilled << "/" << tRequired << "\n";
    // No parking columns here, so the fill is partial by construction and the
    // controller must say so rather than reporting OK.
    if (moveCount > 0 && status == ATOMFLOW_STATUS_ERR_SORT && tFilled < tRequired)
         { std::cout << "  PASS (partial fill correctly reported)\n"; pass++; }
    else { std::cout << "  FAIL: partial fill not reported\n"; fail++; }
    if (!audit_moves(moveList_buf, moveCount, ROWS, COLS))
        { std::cout << "  FAIL: flag/coordinate disagreement\n"; fail++; } else pass++;

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

        // Atom conservation before replaying for the fill map
        {
            Array2D t2_conserve(ROWS, COLS, false);
            for (int r = 0; r < ROWS; ++r)
                for (int c = 0; c < COLS; ++c)
                    t2_conserve(r, c) = (emissions[r * COLS + c] > threshold);
            if (!check_conservation(t2_conserve, moveList_buf, moveCount, "Test 2"))
                { std::cout << "  FAIL: atoms created\n"; fail++; } else pass++;
        }

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
    // TEST 3 — IP3: full controller with zone-only detection and parking
    //
    // The controller embeds 16×16 detections into cols 8-23 of a 16×32 lattice.
    // Cols 0-7 and 24-31 start empty and are used only during sorting.
    // Zone: [0,16)×[8,24)   Target: oxxxxxxooxxxxxxo on rows r%4==0,1
    // =========================================================================
    std::cout << "\n=== TEST 3: atomflow_controller  (16x16 detection, 16x32 parking grid) ===\n";
    {
        const unsigned int T3_TR  = 16, T3_TC  = 32;   // total lattice
        const unsigned int T3_ZR  = ROWS, T3_ZC = COLS; // zone size = 16×16
        const unsigned int T3_ZRS = 0,    T3_ZRE = T3_TR;
        const unsigned int T3_ZCS = (T3_TC - T3_ZC) / 2;  // 8
        const unsigned int T3_ZCE = T3_ZCS + T3_ZC;        // 24

        // Target: oxxxxxxooxxxxxxo on rows r%4∈{0,1}, zone-relative (16×16)
        static uint8_t t3_target_mem[T3_ZR * T3_ZC];
        make_target(t3_target_mem, T3_ZR, T3_ZC);
        Array2D t3_target(T3_ZR, T3_ZC, false);
        for (unsigned int r = 0; r < T3_ZR; ++r)
            for (unsigned int c = 0; c < T3_ZC; ++c)
                t3_target(r, c) = (t3_target_mem[r * T3_ZC + c] != 0);

        // Run the complete controller: reconstruct 16×16 detections, embed
        // them in the central zone, and sort using the empty side columns.
        static IMAGE_DTYPE t3_emissions[MAX_ATOM_SITES];
        memset(t3_emissions, 0, sizeof(t3_emissions));
        unsigned int t3_move_count = 0;
        unsigned int t3_status = 0;
        unsigned int t3_filled = 0, t3_required = 0;
        hls::stream<ap_uint<512>> t3_stream("t3_stream");
        atomflow_controller(
            MODE_INITIALIZATION, threshold,
            nLocs, ps0, ps1, locs, psfSS, projSz,
            projs_local_packed, projs, projs_local_sz,
            fullImg_packed, frows, fcols,
            t3_emissions, T3_TR, T3_TC, t3_target_mem,
            T3_ZRS, T3_ZRE, T3_ZCS, T3_ZCE,
            t3_stream, &t3_move_count, &t3_status,
            &t3_filled, &t3_required);
        unsigned int t3_stream_beats = (unsigned int)t3_stream.size();
        drain_movestream(t3_stream, moveList_buf, t3_move_count);

        // Rebuild the controller's initial physical grid for move replay.
        Array2D t3_state(T3_TR, T3_TC, false);
        for (int r = 0; r < ROWS; ++r)
            for (int c = 0; c < COLS; ++c)
                t3_state(r, T3_ZCS + c) = (t3_emissions[r * COLS + c] > threshold);
        {
            Array2D t3_conserve(T3_TR, T3_TC, false);
            for (int r = 0; r < ROWS; ++r)
                for (int c = 0; c < COLS; ++c)
                    t3_conserve(r, T3_ZCS + c) = (t3_emissions[r * COLS + c] > threshold);
            if (!check_conservation(t3_conserve, moveList_buf, t3_move_count, "Test 3"))
                { std::cout << "  FAIL: atoms created\n"; fail++; } else pass++;
        }
        for (unsigned int m = 0; m < t3_move_count; ++m)
            moveList_buf[m].execute(t3_state);

        int t3_atoms = 0, t3_tgts = 0;
        for (int i = 0; i < nLocs; ++i)
            if (t3_emissions[i] > threshold) ++t3_atoms;
        for (unsigned int r = 0; r < T3_ZR; ++r)
            for (unsigned int c = 0; c < T3_ZC; ++c)
                if (t3_target(r, c)) ++t3_tgts;

        std::cout << "  lattice=" << T3_TR << "x" << T3_TC
                  << "  zone=[" << T3_ZRS << "," << T3_ZRE
                  << ")x[" << T3_ZCS << "," << T3_ZCE << ")\n";
        std::cout << "  atoms=" << t3_atoms << "  target sites=" << t3_tgts << "\n";

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
        const unsigned int t3_beats_per_move =
            (unsigned int)((sizeof(ParallelMove) + 63) / 64);
        bool t3_stream_ok =
            t3_stream_beats == t3_move_count * t3_beats_per_move;
        std::cout << "  status = " << t3_status
                  << (t3_status == ATOMFLOW_STATUS_OK ? " (OK)" : " (NOT OK)")
                  << "  targets = " << t3_filled << "/" << t3_required
                  << "  (controller's own count)\n";
        // The controller's self-reported fill must match the host's replay
        if (t3_filled != (unsigned)t3_met || t3_required != (unsigned)t3_total) {
            std::cout << "  FAIL: controller reports " << t3_filled << "/" << t3_required
                      << " but host replay says " << t3_met << "/" << t3_total << "\n";
            fail++;
        } else pass++;
        if (t3_met == t3_total && t3_move_count > 0 && t3_stream_ok &&
            t3_status == ATOMFLOW_STATUS_OK)
            { std::cout << "  PASS\n"; pass++; }
        else { std::cout << "  FAIL\n"; fail++; }
        if (!audit_moves(moveList_buf, t3_move_count, (int)T3_TR, (int)T3_TC))
            { std::cout << "  FAIL: flag/coordinate disagreement\n"; fail++; } else pass++;

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
        std::cout << "  moves=" << t3_move_count
                  << "  stream beats=" << t3_stream_beats << "\n";
    }

    // =========================================================================
    // TEST 4 — input validation: invalid configs must emit zero moves and a
    // specific error status; a valid config with nothing to do must report OK.
    // (Before the status register existed these cases were indistinguishable.)
    // =========================================================================
    std::cout << "\n=== TEST 4: input validation negative paths ===\n";
    {
        struct NegCase {
            const char*  name;
            int          gr, gc, nloc;
            unsigned int r0, r1, c0, c1;
            unsigned int expect_status;
        };
        const NegCase cases[] = {
            {"grid_cols > MAX_COLS",          16, 64, nLocs, 0,16,  8,24, ATOMFLOW_STATUS_ERR_ZONE},
            {"grid_rows = 0",                  0, 32, nLocs, 0,16,  8,24, ATOMFLOW_STATUS_ERR_ZONE},
            {"zone rows inverted",            16, 32, nLocs, 16,0,  8,24, ATOMFLOW_STATUS_ERR_ZONE},
            {"zone cols inverted",            16, 32, nLocs, 0,16, 24,8,  ATOMFLOW_STATUS_ERR_ZONE},
            {"zone col end beyond grid",      16, 32, nLocs, 0,16,  8,40, ATOMFLOW_STATUS_ERR_ZONE},
            {"zone row end beyond grid",      16, 32, nLocs, 0,20,  8,24, ATOMFLOW_STATUS_ERR_ZONE},
            {"atom count != zone area",       16, 32, nLocs - 1, 0,16, 8,24, ATOMFLOW_STATUS_ERR_ATOM_COUNT},
            // A negative count is caught by the image-parameter check, which runs
            // first because it gates all DDR traffic.
            {"atom count negative",           16, 32, -1,    0,16,  8,24, ATOMFLOW_STATUS_ERR_IMAGE_CFG},
        };
        static uint8_t t4_target_mem[16 * 16];
        make_target(t4_target_mem, 16, 16);
        static IMAGE_DTYPE t4_emissions[MAX_ATOM_SITES];

        bool t4_ok = true;
        for (const NegCase& c : cases) {
            hls::stream<ap_uint<512>> t4_stream("t4_stream");
            unsigned int mc = 0xDEADBEEF, st = 0, t4f = 0, t4r = 0;
            atomflow_controller(
                MODE_INITIALIZATION, threshold,
                c.nloc, ps0, ps1, locs, psfSS, projSz,
                projs_local_packed, projs, projs_local_sz,
                fullImg_packed, frows, fcols,
                t4_emissions, c.gr, c.gc, t4_target_mem,
                c.r0, c.r1, c.c0, c.c1, t4_stream, &mc, &st, &t4f, &t4r);
            bool ok = (mc == 0 && t4_stream.size() == 0 && st == c.expect_status);
            std::cout << (ok ? "  ok   " : "  FAIL ")
                      << "moveCount=" << mc << " beats=" << t4_stream.size()
                      << " status=" << st << " (expect " << c.expect_status << ")"
                      << "  <- " << c.name << "\n";
            if (!ok) t4_ok = false;
            while (!t4_stream.empty()) t4_stream.read();
        }

        // ── image-parameter negative paths ──────────────────────────────
        // The reconstruction datapath implements one fixed configuration; the
        // controller must reject anything else instead of silently computing
        // wrong emissions.
        {
            struct ImgCase {
                const char* name;
                int ps0, ps1, psf, projSz, frows, fcols;
                unsigned int expect_status;
            };
            const ImgCase icases[] = {
                {"projShape0 != 31",     30, 31, 1, projSz, frows, fcols, ATOMFLOW_STATUS_ERR_IMAGE_CFG},
                {"projShape1 != 31",     31, 32, 1, projSz, frows, fcols, ATOMFLOW_STATUS_ERR_IMAGE_CFG},
                {"psfSupersample != 1",  31, 31, 2, projSz, frows, fcols, ATOMFLOW_STATUS_ERR_IMAGE_CFG},
                {"image wider than PIXEL",31,31, 1, projSz, frows, PIXEL+1, ATOMFLOW_STATUS_ERR_IMAGE_CFG},
                {"fullImage_rows = 0",   31, 31, 1, projSz, 0,     fcols, ATOMFLOW_STATUS_ERR_IMAGE_CFG},
                {"imageProjectionSize too big", 31,31,1,
                                          IMAGE_PROJECTION_SIZE+1, frows, fcols, ATOMFLOW_STATUS_ERR_IMAGE_CFG},
            };
            for (const ImgCase& c : icases) {
                hls::stream<ap_uint<512>> st_s("t4_img");
                unsigned int mc = 0xDEADBEEF, st = 0, t4f = 0, t4r = 0;
                atomflow_controller(
                    MODE_INITIALIZATION, threshold,
                    nLocs, c.ps0, c.ps1, locs, c.psf, c.projSz,
                    projs_local_packed, projs, projs_local_sz,
                    fullImg_packed, c.frows, c.fcols,
                    t4_emissions, 16, 32, t4_target_mem,
                    0, 16, 8, 24, st_s, &mc, &st, &t4f, &t4r);
                bool ok = (mc == 0 && st_s.size() == 0 && st == c.expect_status);
                std::cout << (ok ? "  ok   " : "  FAIL ")
                          << "moveCount=" << mc << " status=" << st
                          << " (expect " << c.expect_status << ")  <- " << c.name << "\n";
                if (!ok) t4_ok = false;
                while (!st_s.empty()) st_s.read();
            }

            // An atom whose 31x31 window would run off the image edge: the
            // extraction path would turn the negative origin into a huge AXI
            // address, so this must be refused rather than read.
            {
                static atom_location edge_locs[MAX_ATOM_SITES];
                memcpy(edge_locs, locs, sizeof(atom_location) * (size_t)nLocs);
                edge_locs[0].x = 2.0f;   // window origin = 2 - 15 = -13
                edge_locs[0].y = 2.0f;
                hls::stream<ap_uint<512>> st_s("t4_edge");
                unsigned int mc = 0xDEADBEEF, st = 0, t4f = 0, t4r = 0;
                atomflow_controller(
                    MODE_INITIALIZATION, threshold,
                    nLocs, ps0, ps1, edge_locs, psfSS, projSz,
                    projs_local_packed, projs, projs_local_sz,
                    fullImg_packed, frows, fcols,
                    t4_emissions, 16, 32, t4_target_mem,
                    0, 16, 8, 24, st_s, &mc, &st, &t4f, &t4r);
                bool ok = (mc == 0 && st_s.size() == 0 &&
                           st == ATOMFLOW_STATUS_ERR_ATOM_OOB);
                std::cout << (ok ? "  ok   " : "  FAIL ")
                          << "moveCount=" << mc << " status=" << st
                          << " (expect " << ATOMFLOW_STATUS_ERR_ATOM_OOB
                          << ")  <- atom window off image edge\n";
                if (!ok) t4_ok = false;
                while (!st_s.empty()) st_s.read();
            }
        }

        // Unknown modes must be rejected before image or target memory is read.
        {
            hls::stream<ap_uint<512>> st_s("t4_mode");
            unsigned int mc = 0xDEADBEEF, st = 0, t4f = 0, t4r = 0;
            atomflow_controller(
                0xFFu, threshold,
                nLocs, ps0, ps1, locs, psfSS, projSz,
                projs_local_packed, projs, projs_local_sz,
                fullImg_packed, frows, fcols,
                t4_emissions, 16, 32, t4_target_mem,
                0, 16, 8, 24, st_s, &mc, &st, &t4f, &t4r);
            bool ok = (mc == 0 && st_s.size() == 0 &&
                       st == ATOMFLOW_STATUS_ERR_MODE);
            std::cout << (ok ? "  ok   " : "  FAIL ")
                      << "moveCount=" << mc << " status=" << st
                      << " (expect " << ATOMFLOW_STATUS_ERR_MODE
                      << ")  <- unknown mode\n";
            if (!ok) t4_ok = false;
        }

        // INITIALIZATION consumes the threshold, so NaN/Inf is a hard input
        // error. READOUT deliberately does not impose this unused constraint.
        {
            hls::stream<ap_uint<512>> st_s("t4_threshold_nan");
            unsigned int mc = 0xDEADBEEF, st = 0, t4f = 0, t4r = 0;
            atomflow_controller(
                MODE_INITIALIZATION, std::numeric_limits<float>::quiet_NaN(),
                nLocs, ps0, ps1, locs, psfSS, projSz,
                projs_local_packed, projs, projs_local_sz,
                fullImg_packed, frows, fcols,
                t4_emissions, 16, 32, t4_target_mem,
                0, 16, 8, 24, st_s, &mc, &st, &t4f, &t4r);
            bool ok = (mc == 0 && st_s.size() == 0 &&
                       st == ATOMFLOW_STATUS_ERR_NONFINITE);
            std::cout << (ok ? "  ok   " : "  FAIL ")
                      << "moveCount=" << mc << " status=" << st
                      << " (expect " << ATOMFLOW_STATUS_ERR_NONFINITE
                      << ")  <- NaN emission threshold\n";
            if (!ok) t4_ok = false;
        }

        // Coordinate finiteness is checked before round() and AXI address math.
        {
            static atom_location nonfinite_locs[MAX_ATOM_SITES];
            memcpy(nonfinite_locs, locs, sizeof(atom_location) * (size_t)nLocs);
            nonfinite_locs[0].x = std::numeric_limits<float>::infinity();
            hls::stream<ap_uint<512>> st_s("t4_coord_inf");
            unsigned int mc = 0xDEADBEEF, st = 0, t4f = 0, t4r = 0;
            atomflow_controller(
                MODE_INITIALIZATION, threshold,
                nLocs, ps0, ps1, nonfinite_locs, psfSS, projSz,
                projs_local_packed, projs, projs_local_sz,
                fullImg_packed, frows, fcols,
                t4_emissions, 16, 32, t4_target_mem,
                0, 16, 8, 24, st_s, &mc, &st, &t4f, &t4r);
            bool ok = (mc == 0 && st_s.size() == 0 &&
                       st == ATOMFLOW_STATUS_ERR_NONFINITE);
            std::cout << (ok ? "  ok   " : "  FAIL ")
                      << "moveCount=" << mc << " status=" << st
                      << " (expect " << ATOMFLOW_STATUS_ERR_NONFINITE
                      << ")  <- Inf atom coordinate\n";
            if (!ok) t4_ok = false;
        }

        // Positive control: valid geometry, empty target -> nothing to do,
        // and (unlike every case above) status must be OK.
        {
            static uint8_t empty_target[16 * 16];
            memset(empty_target, 0, sizeof(empty_target));
            hls::stream<ap_uint<512>> t4_stream("t4_ok_stream");
            unsigned int mc = 0xDEADBEEF, st = 0, t4f = 0, t4r = 0;
            atomflow_controller(
                MODE_INITIALIZATION, threshold,
                nLocs, ps0, ps1, locs, psfSS, projSz,
                projs_local_packed, projs, projs_local_sz,
                fullImg_packed, frows, fcols,
                t4_emissions, 16, 32, empty_target,
                0, 16, 8, 24, t4_stream, &mc, &st, &t4f, &t4r);
            // A valid config must never yield a config-error code; the sorter
            // may legally emit discard moves for the now-unneeded atoms, so we
            // pin only the status-code contract here and report the rest.
            bool ok = (st == ATOMFLOW_STATUS_OK || st == ATOMFLOW_STATUS_ERR_SORT);
            std::cout << (ok ? "  ok   " : "  FAIL ")
                      << "moveCount=" << mc << " beats=" << t4_stream.size()
                      << " status=" << st << " (expect OK=" << ATOMFLOW_STATUS_OK
                      << " or ERR_SORT=" << ATOMFLOW_STATUS_ERR_SORT
                      << ", never a config error)  <- valid config, empty target\n";
            if (!ok) t4_ok = false;
            drain_movestream(t4_stream, moveList_buf, mc);
            if (!audit_moves(moveList_buf, mc, 16, 32)) t4_ok = false;
            while (!t4_stream.empty()) t4_stream.read();
        }

        if (t4_ok) { std::cout << "  PASS\n"; pass++; }
        else       { std::cout << "  FAIL\n"; fail++; }
    }

    // =========================================================================
    // TEST 5 — every real dataset in the repo, through the COMPLETE controller.
    //
    // Everything else in this file measures one 16x16 fixture. This sweep asks
    // the question a reviewer will ask: does rearrangement actually succeed at
    // other array sizes, on real emission data rather than synthetic lattices?
    //
    // Each zone gets as much parking as MAX_COLS allows; a zone that fills the
    // grid completely has none, which is the known-partial case.
    // Lattices are dumped to build/lattices.txt for tools/plot_lattices.py.
    // =========================================================================
    std::cout << "\n=== TEST 5: all real datasets, full controller ===\n";
    {
        struct DS { const char* name; int zoneR, zoneC; };
        const DS sets[] = {
            {"10x10", 10, 10}, {"12x12", 12, 12}, {"16x16", 16, 16},
            {"24x24", 24, 23}, {"28x28", 28, 28},
        };

        std::string dumpdir = repo_root() + "/build";
        (void)!system(("mkdir -p '" + dumpdir + "'").c_str());
        std::ofstream dump(dumpdir + "/lattices.txt");

        static atom_location  t5_locs[MAX_ATOM_SITES];
        static IMAGE_DTYPE    t5_pl[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE];
        static IMAGE_DTYPE    t5_pr[IMAGE_PROJECTION_SIZE];
        static int            t5_plsz[IMAGE_PROJECTION_SIZE];
        static IMAGE_DTYPE    t5_img[FULL_IMAGE_SIZE];
        static IMAGE_DTYPE    t5_strided[FULL_IMAGE_SIZE];
        static ap_uint<512>   t5_plpk[IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE * 32 / 512];
        static ap_uint<512>   t5_imgpk[FULL_IMAGE_SIZE * 32 / 512];
        static IMAGE_DTYPE    t5_em[MAX_ATOM_SITES];
        static uint8_t        t5_tgt[MAX_ROWS * MAX_COLS];

        printf("  %-7s %-7s %-7s %5s %6s %7s %6s %8s %7s  %s\n",
               "dataset","zone","grid","atoms","targ","filled","moves","created","status","verdict");
        bool t5_ok = true;
        for (const DS& ds : sets) {
            int nL=0, a0=0, a1=0, pss=0, psz=0, fr=0, fc=0;
            memset(t5_plsz, 0, sizeof(t5_plsz));
            if (!parse_inputs(case_path(ds.name, "restoutput.txt"), t5_locs, nL,
                              a0, a1, pss, psz, t5_pl, t5_pr, t5_plsz, fr, fc) ||
                !parse_fullimage(case_path(ds.name, "fullImage_output.txt"), t5_img)) {
                printf("  %-7s  FIXTURE PARSE FAILED\n", ds.name); t5_ok = false; continue;
            }
            memset(t5_strided, 0, sizeof(t5_strided));
            for (int r = 0; r < fr; ++r)
                for (int c = 0; c < fc; ++c)
                    t5_strided[r * PIXEL + c] = t5_img[r * fc + c];
            pack512(t5_pl,      t5_plpk,  (size_t)IMAGE_PROJECTION_LOCAL * IMAGE_PROJECTION_SIZE);
            pack512(t5_strided, t5_imgpk, FULL_IMAGE_SIZE);

            int park = (MAX_COLS - ds.zoneC) / 2;
            int gR = ds.zoneR, gC = ds.zoneC + 2 * park;
            unsigned zr0 = 0, zr1 = (unsigned)ds.zoneR;
            unsigned zc0 = (unsigned)park, zc1 = (unsigned)(park + ds.zoneC);
            make_target(t5_tgt, ds.zoneR, ds.zoneC);

            unsigned mc = 0, st = 0, tf = 0, tr = 0;
            memset(t5_em, 0, sizeof(t5_em));
            { hls::stream<ap_uint<512>> s0("t5_readout");
              atomflow_controller(MODE_QUBIT_READOUT, 0.0f, nL, a0, a1, t5_locs, pss, psz,
                                  t5_plpk, t5_pr, t5_plsz, t5_imgpk, fr, fc, t5_em,
                                  gR, gC, t5_tgt, zr0, zr1, zc0, zc1, s0, &mc, &st, &tf, &tr); }
            float lo = 1e30f, hi = -1e30f;
            for (int i = 0; i < nL; ++i) { if (t5_em[i] < lo) lo = t5_em[i];
                                          if (t5_em[i] > hi) hi = t5_em[i]; }
            float th = (hi + lo) / 2.0f;

            memset(t5_em, 0, sizeof(t5_em));
            hls::stream<ap_uint<512>> strm("t5_stream");
            atomflow_controller(MODE_INITIALIZATION, th, nL, a0, a1, t5_locs, pss, psz,
                                t5_plpk, t5_pr, t5_plsz, t5_imgpk, fr, fc, t5_em,
                                gR, gC, t5_tgt, zr0, zr1, zc0, zc1, strm, &mc, &st, &tf, &tr);
            unsigned beats = (unsigned)strm.size();
            drain_movestream(strm, moveList_buf, mc);
            while (!strm.empty()) strm.read();

            Array2D before(gR, gC, false);
            int atoms = 0;
            for (int r = 0; r < ds.zoneR; ++r)
                for (int c = 0; c < ds.zoneC; ++c)
                    if (t5_em[r * ds.zoneC + c] > th) { before(r, zc0 + c) = true; ++atoms; }
            Array2D after = before;
            int n0 = count_atoms(after), created = 0;
            for (unsigned m = 0; m < mc; ++m) {
                int pre = count_atoms(after); moveList_buf[m].execute(after);
                int post = count_atoms(after); if (post > pre) created += post - pre;
            }

            bool good = (st == ATOMFLOW_STATUS_OK) && (tf == tr) && created == 0
                     && (beats == mc * ((sizeof(ParallelMove) + 63) / 64));
            const char* verdict = good ? "OK"
                                : (atoms < (int)tr ? "atoms<targ (expected)" : "INCOMPLETE");
            char zs[16], gs[16];
            snprintf(zs, sizeof zs, "%dx%d", ds.zoneR, ds.zoneC);
            snprintf(gs, sizeof gs, "%dx%d", gR, gC);
            printf("  %-7s %-7s %-7s %5d %6u %7u %6u %8d %7u  %s\n",
                   ds.name, zs, gs, atoms, tr, tf, mc, created, st, verdict);
            if (!good && atoms >= (int)tr) t5_ok = false;

            if (dump) {
                dump << "DATASET " << ds.name << " " << gR << " " << gC << " "
                     << zr0 << " " << zr1 << " " << zc0 << " " << zc1 << " "
                     << atoms << " " << tf << " " << tr << " " << mc << "\n";
                for (const char* which : {"BEFORE", "AFTER", "TARGET"}) {
                    dump << which << "\n";
                    for (int r = 0; r < gR; ++r) {
                        for (int c = 0; c < gC; ++c) {
                            int v;
                            if (!strcmp(which, "TARGET"))
                                v = (r < ds.zoneR && c >= (int)zc0 && c < (int)zc1)
                                    ? t5_tgt[r * ds.zoneC + (c - zc0)] : 0;
                            else
                                v = (!strcmp(which, "BEFORE") ? before(r, c) : after(r, c)) ? 1 : 0;
                            dump << v;
                        }
                        dump << "\n";
                    }
                }
            }
        }
        if (dump) { dump.close(); std::cout << "  lattices -> build/lattices.txt\n"; }
        if (t5_ok) { std::cout << "  PASS\n"; pass++; }
        else       { std::cout << "  FAIL\n"; fail++; }
    }

    // ── Final result ─────────────────────────────────────────────────────────
    std::cout << "\n========================================\n";
    std::cout << "RESULT: " << pass << " passed, " << fail << " failed\n";
    if (fail == 0) std::cout << "ALL TESTS PASSED\n";
    std::cout << "========================================\n";
    return (fail == 0) ? 0 : 1;
}
