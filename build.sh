#!/usr/bin/env bash
# Build main.pdf and refresh preview/slide-NN.png.
# Overfull \vbox warnings mean a frame's content is taller than the 16:9 body
# area (~7cm) -- check the PNGs before shipping.
set -euo pipefail
cd "$(dirname "$0")"

TECTONIC="${TECTONIC:-$HOME/bin/tectonic}"

"$TECTONIC" main.tex

python3 - <<'PY'
import pymupdf
doc = pymupdf.open("main.pdf")
for i, page in enumerate(doc):
    page.get_pixmap(dpi=180).save(f"preview/slide-{i+1:02d}.png")
print(f"main.pdf: {len(doc)} slides -> preview/")
PY
