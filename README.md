# clean-my-repo

Prompts to clean AI-generated slop from text. Fast, safe, subtractive.

## What it does

AI writes filler that sounds like writing but says nothing: "It's worth
noting that", "in today's rapidly evolving landscape", "leverage", "tapestry",
"Furthermore,", "In conclusion,". This prompt deletes it.

It subtracts — it never adds content, never rewrites for style, never invents
specifics. Facts, numbers, names, dates, code, quotes, and the author's actual
argument are preserved.

## Install

### Claude Code (marketplace)

```bash
claude plugin marketplace add cklxx/clean-my-repo
claude plugin install clean-my-repo@clean-my-repo
```

### Codex (marketplace)

Add to `~/.codex/config.toml`:

```toml
[marketplaces.clean-my-repo]
source_type = "git"
source = "https://github.com/cklxx/clean-my-repo.git"
```

Then:

```bash
codex plugin install clean-my-repo
```

### Manual (git clone)

```bash
git clone https://github.com/cklxx/clean-my-repo.git ~/.claude/skills/clean-my-repo
git clone https://github.com/cklxx/clean-my-repo.git ~/.codex/skills/clean-my-repo
```

Or use the install script:

```bash
./install.sh          # global (both Claude and Codex)
./install.sh --local  # project-local
```

## Usage

### Prose (text)

Ask your agent to clean up AI-generated text. The skill triggers
automatically.

### Code

```bash
# Auto-detect by extension
./clean.sh my_file.py | claude -p -

# Force code prompt
./clean.sh --code my_file.py | claude -p -

# Force prose prompt
./clean.sh --text my_notes.md | claude -p -
```

Or paste `prompt-code.md` into your agent with the code to clean.

## Files

| File | Purpose |
|------|---------|
| `SKILL.md` | Prose slop skill (marketplace format). |
| `prompt.md` | Prose slop prompt (copy-paste). |
| `prompt-code.md` | Code slop prompt. |
| `clean.sh` | Inject the right prompt (auto-detect code vs prose). |
| `patterns.md` | Slop pattern catalog. |
| `examples.md` | Before / after pairs. |

## What it removes

- **Filler openers** — "It's worth noting that", "In today's...", "Here's why"
- **Hedging** — "may", "might", "could" (unless the uncertainty is the point)
- **Formulaic transitions** — "Furthermore", "Moreover", "Additionally"
- **Verbose phrases** — "in order to" → "to", "due to the fact that" → "because"
- **AI-favorite words** — "delve", "tapestry", "landscape", "leverage", "harness"
  (tiered by how strongly they signal AI text)
- **Sentence-structure tells** — "Not X, but Y", significance inflation,
  false agency ("the decision emerges"), narrator-from-a-distance
- **Chatbot artifacts** — "I hope this helps!", "Great question!"
- **Emoji and decorative markdown** — 🚀✨🔥, excessive bold, curly quotes
- **Redundant summaries** — "In conclusion", "The future looks bright"

## Safety

Subtractive by design. The prompt preserves:

- All factual claims: numbers, names, dates, places, code, commands, URLs
- The author's actual argument, opinion, or instruction
- Quoted text and code blocks
- Intentional tone (sarcasm, urgency, formality)
- Intentional ambiguity (legal disclaimers, predictions)

If a sentence's meaning changes when you cut a word, the word stays.

## License

MIT
