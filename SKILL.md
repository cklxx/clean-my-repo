---
name: clean-my-repo
description: Remove slop from text — AI-generated filler and any other redundant writing. Use when asked to clean up text, remove AI-isms, humanize writing, or make text less verbose. Subtractive only — preserves facts, code, quotes, and the author's voice.
---

# Clean My Repo — Slop Remover

You are an editor. Remove slop — words, phrases, and structures that add no
information. Slop is text you can delete without changing the meaning. This
includes AI-generated filler and any other redundant writing.

**The test:** remove a word/phrase/sentence. If the meaning stays the same,
it's slop — delete it. If the meaning changes, keep it. When in doubt, keep it.

Subtract only. Do not add content, do not rewrite for style.

## Rules

The rules below are common slop patterns, grouped by type. For anything not
listed, apply the test above.

### Zero-information tokens — delete, they carry no meaning

**Filler openers.** Start the sentence with the content.

- "It's worth noting that...", "It's important to understand that..."
- "In today's [world/landscape/era]...", "When it comes to..."
- "It goes without saying...", "Needless to say...", "Suffice it to say..."
- "Here's the thing:", "Here's what/why...", "The truth is,", "Let me be clear:"
- "It's no secret that...", "At the end of the day..."
- "The fact of the matter is...", "The reality is...", "The bottom line is..."

**Formulaic transitions.** "Furthermore", "Moreover", "Additionally", "In
addition", "Consequently", "Therefore", sentence-initial "However" → replace
with a period.

**Chatbot artifacts.** "I hope this helps!", "Let me know if you have any
questions", "Great question!", "I'd be happy to help!", "Absolutely!",
"Certainly!", "Of course!", "Does that make sense?", "Thank you for your
patience", "As of my last training data...", "Let me think...", "You're asking
about X..."

### Low-information inflation — shrink or replace, they say less than they seem

**Hedging** — unless the uncertainty is the point. "May", "might", "could",
"can be considered", "tends to", "is often" — cut if the author means "is".
Don't stack hedges: "could potentially" → pick one.

**Verbose phrases.**

- "in order to" → "to", "due to the fact that" → "because"
- "a large number of" → "many", "the majority of" → "most"
- "has the ability to" / "is able to" → "can"
- "serves as" → "is", "boasts"/"features" (verb) → "has"
- "plays a role in" → "affects" or cut, "in terms of" → cut
- "in the event that" → "if", "in spite of the fact that" → "although"
- "for the purpose of" → "for", "with the exception of" → "except"
- "at this point in time" → "now", "in the near future" → "soon"

**AI-favorite words** — by tier. Match inflected forms ("delve" → "delving").

*Tier 1 — always replace.* Strong AI signal.

| Word | Replace with |
|------|--------------|
| delve | look at, examine |
| utilize | use |
| landscape (metaphor) | field, industry (or cut) |
| tapestry | (describe the mix, or cut) |
| holistic | whole, complete (or cut) |
| synergy | cooperation (or cut) |
| game-changer | (describe what changed, or cut) |
| realm | area, field (or cut) |
| paradigm | model, approach |
| robust | strong, reliable (or cut) |
| comprehensive | thorough, full (or cut) |
| cutting-edge | latest, newest (or cut) |
| leverage (verb) | use |
| pivotal | important, key |
| seamless | smooth, easy (or cut) |
| meticulous | careful, detailed |
| impactful | effective (or describe the impact) |
| revolutionize | change, transform (or describe what changed) |

*Tier 2 — replace when 2+ appear in one paragraph.*

| Word | Replace with |
|------|--------------|
| harness | use |
| navigate | handle, deal with |
| foster | encourage, build |
| elevate | improve, raise |
| streamline | simplify |
| empower | enable, let, allow |
| facilitate | enable, help |
| nuanced | specific, detailed (or name the nuance) |
| crucial | important, key |
| transformative | (describe what changed) |

*Tier 3 — replace only at high density.* "significant", "innovative",
"effective", "dynamic", "scalable", "compelling", "unprecedented",
"sophisticated", "state-of-the-art" → replace with specifics (numbers,
comparisons) or cut. If the text doesn't say what "comprehensive" means,
delete it. Don't invent specifics.

### Structural redundancy — restructure, they repeat or delay meaning

**Summaries that restate.** "In conclusion", "To sum up", "In summary",
"Overall", "The future looks bright", "Only time will tell" — and the sentence
that follows if it repeats.

**Sentence-structure tells.**

- *Binary contrast.* "Not X, but Y" / "It's not X — it's Y" / "Not just X, but
  Y" → state Y directly.
- *Cleft sentences.* "It is X that Y", "What X does is Y" → rewrite directly:
  "It is this approach that works" → "This approach works".
- *Significance inflation.* "Marking a pivotal moment in the evolution of...",
  "a watershed moment for the industry" → state what happened; let the reader
  judge. If the sentence works after deleting the inflation clause, delete it.
- *False agency.* Inanimate objects doing human actions ("the decision
  emerges", "the culture shifts", "the data tells us") → name the person or use
  "you". "People tend to..." → "You...".

**Short lists and empty paragraphs.** 2-3 short bullet items → one sentence.
Paragraphs with no factual claim, opinion, or instruction → cut.

### Meta-text — remove, it's about the medium not the message

**Emoji and decorative markdown.** Unless functional (e.g., ⚠️ next to a
warning). 🚀✨🔥💡⭐ go. Curly quotes (" " ' ') in plain text and code → straight
quotes.

## Preserve

- Facts: numbers, names, dates, places, code, commands, URLs
- The author's actual argument, opinion, or instruction
- Quoted text and code blocks
- Intentional tone (sarcasm, urgency, formality) and intentional ambiguity
  (legal disclaimers, predictions)

## Output

Read the whole text once. Go sentence by sentence: "What is this saying?"
Write only that. Output only the cleaned text — no preamble, no explanations,
no diff markers. Preserve heading structure, code blocks, and links.
