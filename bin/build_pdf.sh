#!/bin/bash

FILE_NAME="$1"
if [[ "$FILE_NAME" == "" ]]; then
  echo "Usage: $0 FILE_NAME"
  exit 1
fi

if ! [[ -e "$FILE_NAME.tex" ]]; then
  echo "The file $FILE_NAME.tex does not exist"
  exit 2
fi

DIRECTORY="$(dirname "$FILE_NAME")"

if [[ "$DIRECTORY" != "." ]]; then
  FILE_NAME="$(basename "$FILE_NAME")"
  cd "$DIRECTORY"
fi

build_pdf() {
  pdflatex $FILE_NAME -interaction=nonstopmode -halt-on-error
}

build_bib() {
  bibtex $FILE_NAME
}

build_pdf

build_bib

build_pdf

build_pdf

exit $?
