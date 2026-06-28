# Migaki Whitepaper

Source and release assets for:

**Migaki: Toward an Execution Optimizer for Agentic Systems**

This repository is a living draft until the 1.0 release. Draft/version labels live inside the paper source itself.

## Repository Layout

```txt
.
+-- LICENSE
+-- README.md
+-- dist/
|   `-- migaki-whitepaper.pdf
+-- paper/
|   +-- main.tex
|   +-- preamble.tex
|   +-- bibliography.tex
|   +-- references.bib
|   `-- sections/
`-- scripts/
    +-- build-pdf
    +-- clean
    `-- clean-all
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
- an environment that can run executable scripts with a `/bin/sh` shebang

The repository does not prescribe a TeX distribution, operating system, CPU architecture, or interactive shell. Install any TeX distribution that provides `pdflatex`, then run the script from the repository root. Because the scripts carry their own interpreter line, the same command can be launched from `sh`, `bash`, `zsh`, `fish`, or `nushell`.

```sh
./scripts/build-pdf
```

The generated PDF is written to:

```txt
dist/migaki-whitepaper.pdf
```

Intermediate LaTeX files are written under `build/latex/`.

## Cleanup

```sh
./scripts/clean
```

Remove generated PDF output too:

```sh
./scripts/clean-all
```

## License

This whitepaper is licensed under the Creative Commons Attribution 4.0 International License. See `LICENSE`.
