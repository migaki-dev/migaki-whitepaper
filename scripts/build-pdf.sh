#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
BUILD_DIR="$ROOT_DIR/build/latex"
DIST_DIR="$ROOT_DIR/dist"
OUTPUT_PDF="$DIST_DIR/migaki-whitepaper-v0.3.pdf"

if ! command -v pdflatex >/dev/null 2>&1; then
  printf 'Error: pdflatex was not found on PATH.\n' >&2
  printf 'Install a LaTeX distribution such as TeX Live, BasicTeX, or MacTeX, then rerun this script.\n' >&2
  exit 127
fi

mkdir -p "$BUILD_DIR" "$DIST_DIR"

cd "$ROOT_DIR/paper"

for _ in 1 2 3; do
  pdflatex \
    -interaction=nonstopmode \
    -halt-on-error \
    -file-line-error \
    -output-directory "$BUILD_DIR" \
    main.tex
done

cp "$BUILD_DIR/main.pdf" "$OUTPUT_PDF"
printf 'Wrote %s\n' "$OUTPUT_PDF"
