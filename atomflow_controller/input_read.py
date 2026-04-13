"""
input_read.py — Parse restoutput.txt and fullImage_output.txt for PYNQ testing.

Matches testbench (tb_atomflow_controller.cpp) parsing exactly:
  - atom_location struct is {float x; float y;} → x first in memory
  - testbench parses: y=parts[0], x=parts[1]  (y first in file)
  - imageProjs_local: stride IMAGE_PROJECTION_LOCAL=1000 per atom, i%32==31 is padding
  - fullImage: re-strided to PIXEL=1024 column layout before packing

Provides:
  parse_input_file(path)                      -> (dict, True)
  parse_fullImage(path)                       -> (list_of_floats, True)
  pack_floats_to_512bit(data)                 -> np.ndarray float32
  pack_fullimage_512bit(raw, rows, cols)      -> np.ndarray float32  (with re-striding)
"""
import numpy as np

# Must match image_analysis.hpp
IMAGE_PROJECTION_LOCAL = 1000   # floats per atom in imageProjs_local buffer
PIXEL                  = 1024   # column stride for fullImage re-striding
FULL_IMAGE_SIZE        = PIXEL * PIXEL


def parse_input_file(filepath):
    """Parse restoutput.txt, matching testbench logic exactly. Returns (data_dict, True)."""
    data = {
        "atomLocationsSize": 0,
        "projShape0": 0,
        "projShape1": 0,
        "psfSupersample": 0,
        "imageProjectionSize": 0,
        "fullImage_rows": 0,
        "fullImage_cols": 0,
        "atomLocations": [],
        "imageProjs": [],
        "imageProjs_local": [],       # flat, stride IMAGE_PROJECTION_LOCAL per atom
        "imageProjs_local_size": [],  # actual size per atom
    }

    with open(filepath, "r") as f:
        for line in f:
            line = line.strip()
            idx = line.find(": ")
            if idx == -1:
                continue
            k = line[:idx]
            v = line[idx + 2:]

            if k == "atomLocationSize":
                data["atomLocationsSize"] = int(v)

            elif k == "projShape0":
                data["projShape0"] = int(v)

            elif k == "projShape1":
                data["projShape1"] = int(v)

            elif k == "psfSupersample":
                data["psfSupersample"] = int(v)

            elif k == "imageProjectSize":
                data["imageProjectionSize"] = int(v)

            elif k == "fullImage_row":
                data["fullImage_rows"] = int(v)

            elif k == "fullImage_col":
                data["fullImage_cols"] = int(v)

            elif k == "atomLocations":
                # Testbench: locs.y = xy[0]; locs.x = xy[1]
                # struct atom_location { float x; float y; } → x first in memory
                # So parts[0]=y, parts[1]=x
                for pair in v.split("||"):
                    pair = pair.strip()
                    if not pair:
                        continue
                    xy = pair.split("|")
                    if len(xy) >= 2:
                        # (y, x) order in file; store as (x, y) matching struct layout
                        data["atomLocations"].append((float(xy[1]), float(xy[0])))  # (x, y)

            elif k == "imageProjs_local":
                # One line per atom, IMAGE_PROJECTION_LOCAL slots, i%32==31 is zero-padding
                all_elems = v.split("|")
                atom_buf = [0.0] * IMAGE_PROJECTION_LOCAL
                actual_size = 0
                ei = 0
                for i in range(IMAGE_PROJECTION_LOCAL):
                    if ei < len(all_elems) and all_elems[ei].strip() and i % 32 != 31:
                        atom_buf[i] = float(all_elems[ei].strip())
                        ei += 1
                    else:
                        atom_buf[i] = 0.0
                        if actual_size == 0:
                            actual_size = i  # first empty/padding slot = actual size
                if actual_size == 0:
                    actual_size = ei  # all slots filled up to ei
                data["imageProjs_local"].extend(atom_buf)
                data["imageProjs_local_size"].append(actual_size)

            elif k == "imageProjs":
                elems = v.split("|")
                data["imageProjs"] = [float(e) for e in elems if e.strip()]

    return data, True


def parse_fullImage(filepath):
    """Parse fullImage_output.txt. Returns (list_of_floats, True).
    Skips the 'fullImage: ' header line, reads all data lines.
    """
    values = []
    with open(filepath, "r") as f:
        for line in f:
            line = line.strip()
            if not line or line.startswith("fullImage"):
                continue  # skip header and blank lines
            for tok in line.split("|"):
                tok = tok.strip()
                if tok:
                    values.append(float(tok))
    return values, True


def pack_floats_to_512bit(data):
    """Pack float list into float32 array aligned to 16-float (512-bit) boundary.
    Use for imageProjs_local and imageProjs buffers.
    """
    arr = np.array(data, dtype=np.float32)
    remainder = len(arr) % 16
    if remainder != 0:
        arr = np.concatenate([arr, np.zeros(16 - remainder, dtype=np.float32)])
    return arr


def pack_fullimage_512bit(raw_values, full_rows, full_cols):
    """Re-stride fullImage from actual column width to PIXEL=1024 columns,
    then return float32 array aligned to 16-float (512-bit) boundary.

    Testbench does:
        fullImg_strided[r * PIXEL + c] = fullImg[r * fcols + c]

    Required because the HLS reconstruct() function internally accesses
    fullImage with PIXEL=1024 column stride.
    """
    raw = np.array(raw_values[:full_rows * full_cols], dtype=np.float32).reshape(full_rows, full_cols)
    strided = np.zeros((full_rows, PIXEL), dtype=np.float32)
    strided[:, :full_cols] = raw
    flat = strided.flatten()  # length = full_rows * PIXEL

    # Pad the rest of FULL_IMAGE_SIZE with zeros
    out = np.zeros(FULL_IMAGE_SIZE, dtype=np.float32)
    n = min(len(flat), FULL_IMAGE_SIZE)
    out[:n] = flat[:n]
    return out
