#!/bin/bash

FILES=$(find -name "*.tex" -not -path "./latex-templates/*")

if [[ "$1" == "-i" ]] || [[ "$1" == "--interactive" ]]; then
  INTERACTIVE=true
  shift
fi

if [[ "$1" == "" ]]; then
  echo "Usage: $0 [-i|--interactive] LANGUAGE"
  exit 1
fi

LANG="$1"

if [[ "$INTERACTIVE" == "true" ]]; then
  for f in $FILES; do
    aspell check $f -t --encoding="utf-8" --lang="$LANG"
  done
else
  cat $FILES | aspell list -t --encoding="utf-8" --lang="$LANG" | sort | uniq --count
fi
