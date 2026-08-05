#!/usr/bin/env bash
# clean.sh — inject the clean-my-repo prompt into an agent context.
# Usage:
#   clean.sh [file]          # auto-detect code vs prose by extension
#   clean.sh --text [file]   # force prose prompt
#   clean.sh --code [file]   # force code prompt
#
# Outputs: <prompt> + <input>
# Pipe to your agent, e.g.: clean.sh file.py | claude -p -

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROMPT_TEXT="$SCRIPT_DIR/prompt.md"
PROMPT_CODE="$SCRIPT_DIR/prompt-code.md"

mode="auto"
file=""

# Parse args
while [ $# -gt 0 ]; do
  case "$1" in
    --text) mode="text"; shift ;;
    --code) mode="code"; shift ;;
    -*) echo "unknown flag: $1" >&2; exit 1 ;;
    *) file="$1"; shift ;;
  esac
done

# Auto-detect by extension
if [ "$mode" = "auto" ] && [ -n "$file" ]; then
  case "$file" in
    *.py|*.js|*.ts|*.jsx|*.tsx|*.go|*.rs|*.java|*.c|*.cpp|*.h|*.hpp|\
    *.rb|*.php|*.swift|*.kt|*.scala|*.sh|*.bash|*.zsh|*.fish|\
    *.sql|*.html|*.css|*.scss|*.vue|*.svelte|*.rs|*.toml|*.yaml|*.yml|\
    *.json|*.xml|*.proto|*.thrift|*.md|*.rst|*.tex)
      # .md/.rst/.tex are text, not code
      case "$file" in
        *.md|*.rst|*.tex) mode="text" ;;
        *) mode="code" ;;
      esac
      ;;
    *) mode="text" ;;
  esac
fi

# Pick prompt
case "$mode" in
  code) prompt="$PROMPT_CODE" ;;
  text|*) prompt="$PROMPT_TEXT" ;;
esac

# Output prompt + input
cat "$prompt"
echo
echo "---"
echo

if [ -n "$file" ]; then
  cat "$file"
else
  cat
fi
