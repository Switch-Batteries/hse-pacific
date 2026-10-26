#!/usr/bin/env bash
# Generate Switch-branded PDF and Word from docs/sow.md
# using the sibling switch-document-gen repository.
set -euo pipefail

FORMAT="${1:-both}"
INPUT="${2:-docs/sow.md}"

REPO_ROOT="$(cd "$(dirname "$0")" && pwd)"
DOC_GEN="$(cd "$REPO_ROOT/../switch-document-gen" && pwd)"
INPUT_PATH="$REPO_ROOT/$INPUT"
OUT_DIR="$REPO_ROOT/build"
STEM="$(basename "$INPUT_PATH" .md)"
OUT_PATH="$OUT_DIR/${STEM}.pdf"

if [[ ! -d "$DOC_GEN" ]]; then
  echo "error: switch-document-gen not found at $DOC_GEN" >&2
  echo "Clone it as a sibling of this repository." >&2
  exit 1
fi
if [[ ! -f "$INPUT_PATH" ]]; then
  echo "error: input not found: $INPUT_PATH" >&2
  exit 1
fi

mkdir -p "$OUT_DIR"
cd "$DOC_GEN"
python -m switchdoc.cli "$INPUT_PATH" --format "$FORMAT" -o "$OUT_PATH"
