# clean-my-repo

This project provides a skill for cleaning AI-generated slop from text.

## Skill

The `clean-my-repo` skill removes AI writing patterns (filler openers, hedging,
AI-favorite words, sentence-structure tells, chatbot artifacts) while preserving
facts, code, quotes, and the author's voice.

## Usage

- Global install: `./install.sh` (installs to `~/.claude/skills/` and `~/.codex/skills/`)
- Project-local install: `./install.sh --local`

After installation, the skill triggers automatically when you ask to clean up
AI-generated text.
