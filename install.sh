#!/usr/bin/env bash
# Install clean-my-repo as a skill for Claude Code and/or Codex.
# Usage: ./install.sh [--global|--local]
#   --global  install to ~/.claude/skills and ~/.codex/skills (default)
#   --local   install to ./.claude/skills and ./.agents/skills (project-local)

set -euo pipefail

REPO_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SKILL_NAME="clean-my-repo"
MODE="${1:---global}"

install_for_claude() {
  local target_dir="$1"
  local dest="$target_dir/$SKILL_NAME"

  mkdir -p "$target_dir"

  if [ -L "$dest" ] || [ -d "$dest" ]; then
    echo "Claude: $dest already exists, updating..."
    rm -rf "$dest"
  fi

  ln -s "$REPO_DIR" "$dest"
  echo "Claude: installed -> $dest"
}

install_for_codex() {
  local target_dir="$1"
  local dest="$target_dir/$SKILL_NAME"

  mkdir -p "$target_dir"

  if [ -L "$dest" ] || [ -d "$dest" ]; then
    echo "Codex: $dest already exists, updating..."
    rm -rf "$dest"
  fi

  ln -s "$REPO_DIR" "$dest"
  echo "Codex: installed -> $dest"
}

if [ "$MODE" = "--local" ]; then
  install_for_claude "$REPO_DIR/.claude/skills"
  install_for_codex "$REPO_DIR/.agents/skills"
  echo
  echo "Local install done. Add to CLAUDE.md / AGENTS.md to enable."
else
  install_for_claude "$HOME/.claude/skills"
  install_for_codex "$HOME/.codex/skills"
  echo
  echo "Global install done. The skill is available in all projects."
  echo "Claude: restart or run /skills to load."
  echo "Codex: restart or run /skills to load."
fi
