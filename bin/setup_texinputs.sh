BIN_DIRECTORY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
LATEX_TEMPLATES_DIRECTORY="$(cd "$(dirname "$BIN_DIRECTORY")" && pwd)"

if [[ "$TEXINPUTS" == "" ]]; then
  export TEXINPUTS=".:$LATEX_TEMPLATES_DIRECTORY:$(kpsepath tex)"
else
  export TEXINPUTS=".:$LATEX_TEMPLATES_DIRECTORY:$TEXINPUTS"
fi
