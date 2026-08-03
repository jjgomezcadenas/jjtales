#!/usr/bin/env bash
# Remove LaTeX build artifacts everywhere in the repository.
# Keeps .tex sources and final .pdf files.
cd "$(dirname "$0")" || exit 1

find . -type f \
  \( -name '*.aux' \
  -o -name '*.log' \
  -o -name '*.out' \
  -o -name '*.synctex.gz' \
  -o -name '*.toc' \
  -o -name '*.fls' \
  -o -name '*.fdb_latexmk' \
  -o -name '*.bbl' \
  -o -name '*.blg' \
  -o -name '*.nav' \
  -o -name '*.snm' \
  -o -name '*.vrb' \) \
  -print -delete
