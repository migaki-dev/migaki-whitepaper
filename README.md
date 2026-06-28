# Migaki Whitepaper

Source and release assets for:

**Migaki: Toward an Execution Optimizer for Agentic Systems**

Current draft: `v0.3`

## Repository Layout

```txt
.
+-- LICENSE
+-- Makefile
+-- README.md
+-- dist/
|   `-- migaki-whitepaper-v0.3.pdf
+-- paper/
|   +-- main.tex
|   +-- preamble.tex
|   +-- bibliography.tex
|   +-- references.bib
|   `-- sections/
`-- scripts/
    `-- build-pdf.sh
```

The LaTeX source is split by responsibility:

- `paper/main.tex` contains document metadata and the section order.
- `paper/preamble.tex` contains packages, styles, theorem setup, and macros.
- `paper/sections/` contains the whitepaper body as named section files.
- `paper/bibliography.tex` keeps the current build `pdflatex`-only.
- `paper/references.bib` mirrors the reference data for future BibTeX or arXiv packaging work.

## Build

Requirements:

- `pdflatex`
- a POSIX shell
- `make` for the convenience target

On macOS, `pdflatex` is available through MacTeX or BasicTeX. For example:

```sh
brew install --cask mactex-no-gui
```

Build the PDF:

```sh
make pdf
```

Or run the script directly:

```sh
./scripts/build-pdf.sh
```

The generated PDF is written to:

```txt
dist/migaki-whitepaper-v0.3.pdf
```

Intermediate LaTeX files are written under `build/latex/`.

## Cleanup

```sh
make clean
```

Remove generated PDF output too:

```sh
make distclean
```

## License

This whitepaper is licensed under the Creative Commons Attribution 4.0 International License. See `LICENSE`.
