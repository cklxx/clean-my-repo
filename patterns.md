# Slop Pattern Catalog

A reference of common AI-generated slop patterns and what to replace them with.
Organized to match the tiers in `prompt.md`.

## Filler openers

Phrases that announce a sentence instead of starting it. Delete them.

| Slop | Replace with |
|------|--------------|
| It's worth noting that X | X |
| It's important to note that X | X |
| It's important to understand that X | X |
| It's worth mentioning that X | X |
| It goes without saying that X | X |
| Needless to say, X | X |
| In today's world, X | X |
| In the modern era, X | X |
| In the current landscape, X | X |
| When it comes to X, Y | X: Y or just Y |
| As far as X is concerned, Y | Y |
| It should be noted that X | X |
| One thing to keep in mind is that X | X |
| Here's the thing: X | X |
| Here's what X | X |
| Here's why X | X |
| The truth is, X | X |
| Let me be clear: X | X |
| I'm going to be honest, X | X |
| The uncomfortable truth is X | X |
| It turns out X | X |

## Emphasis crutches

Add no meaning. Delete.

| Slop | Replace with |
|------|--------------|
| Full stop. / Period. | (cut) |
| Let that sink in. | (cut) |
| This matters because | (cut, state the reason) |
| Make no mistake | (cut) |
| Here's why that matters | (cut, state the reason) |

## Hedging

Words that weaken a claim. Cut unless the uncertainty is the point.

| Slop | Replace with |
|------|--------------|
| may | is / does (or keep if genuinely uncertain) |
| might | is / does |
| could | can / is |
| can be considered | is |
| tends to | does / is |
| is often | is (or specify when) |
| is generally | is |
| is typically | is |
| in many cases | usually / often (or cut) |
| to some extent | cut |
| somewhat | cut |
| rather | cut |
| quite | cut |
| fairly | cut |
| relatively | cut |
| could potentially | could OR potentially (not both) |
| may eventually | may OR eventually (not both) |
| might ultimately | might OR ultimately (not both) |

## Generic adjectives

Adjectives that sound impressive but mean nothing. Replace with the specific
claim if the text states it; otherwise delete.

| Slop | Replace with |
|------|--------------|
| comprehensive | what it covers |
| robust | how it's robust |
| seamless | cut |
| cutting-edge | what's new |
| innovative | what's new |
| state-of-the-art | what's new |
| powerful | how it's powerful |
| efficient | how it's efficient |
| user-friendly | how |
| scalable | how |
| flexible | how |
| versatile | how |
| holistic | cut |
| strategic | cut or specify |
| significant | how significant (number) |
| impactful | describe the impact |
| actionable | practical, useful |
| transformative | describe what changed |
| unprecedented | name the precedent it breaks |

## Verbose phrases

Shorter equivalents exist. Use them.

| Slop | Replace with |
|------|--------------|
| in order to | to |
| due to the fact that | because |
| a large number of | many |
| the majority of | most |
| in spite of the fact that | although |
| at this point in time | now |
| in the event that | if |
| has the ability to | can |
| is able to | can |
| it is necessary to | must |
| plays a role in | affects |
| in terms of | cut or rephrase |
| a significant amount of | much / many |
| a wide variety of | many / various |
| a number of | several / many |
| the process of | cut |
| on a regular basis | regularly |
| in close proximity to | near |
| prior to | before |
| subsequent to | after |
| in the near future | soon |
| at the present time | now |
| for the purpose of | to |
| with regard to | about |
| with respect to | about |
| in the context of | in |
| as a means of | to |
| by means of | by |
| serves as | is |
| boasts | has |
| features (verb) | has, includes |
| utilized | used |
| leveraged | used |

## AI-favorite verbs

Verbs that sound dynamic but mean almost nothing. Replace with the plain verb.

| Slop | Replace with |
|------|--------------|
| harness | use |
| leverage | use |
| unlock | enable / reveal |
| elevate | improve / raise |
| navigate | handle / deal with |
| delve (into) | examine / look at |
| explore | look at / test |
| embrace | adopt / use |
| foster | encourage / build |
| streamline | simplify |
| optimize | improve (or specify how) |
| empower | let / allow |
| revolutionize | change (or specify how) |
| facilitate | make easier / help |
| synergize | combine |
| catalyze | cause / start |
| unpack | explain / break down |
| showcase | show / demonstrate |
| underscore | highlight / show |

## AI-favorite nouns

Nouns that sound grand but are usually filler.

| Slop | Replace with |
|------|--------------|
| landscape | field / industry (or cut) |
| tapestry | mix / combination (or cut) |
| realm | area / field (or cut) |
| fabric | structure (or cut) |
| ecosystem | community / system (or cut) |
| arena | field (or cut) |
| domain | area / field |
| paradigm | model / approach |
| methodology | method |
| functionality | features |
| capabilities | features / abilities |
| learnings | lessons / findings |
| thought leader | expert |
| best practices | what works / standard approach |

## Formulaic transitions

Words that connect sentences without adding meaning. Replace with a period.

| Slop | Replace with |
|------|--------------|
| Furthermore, | . |
| Moreover, | . |
| Additionally, | . |
| In addition, | . |
| Consequently, | . |
| Therefore, | . (or cut) |
| Thus, | . (or cut) |
| Hence, | . (or cut) |
| However, (sentence start) | . But / or just the sentence |
| On the other hand, | But / or cut |
| As a result, | . |
| For this reason, | . |
| It follows that | . |
| In light of this, | . |

## Redundant summaries

Sentences that repeat what was just said. Delete the whole sentence.

| Slop |
|------|
| In conclusion, ... |
| To sum up, ... |
| In summary, ... |
| Overall, ... |
| All in all, ... |
| In short, ... |
| To summarize, ... |
| As we've seen, ... |
| As mentioned above, ... |
| As previously stated, ... |
| The future looks bright. |
| Exciting times lie ahead. |
| Only time will tell. |

## Sentence-structure tells

### Binary contrast

"Not X, but Y" / "It's not X — it's Y" / "The answer isn't X, it's Y".
State Y directly.

| Slop | Replace with |
|------|--------------|
| Not X, but Y. | Y. |
| It's not X — it's Y. | Y. |
| The answer isn't X, it's Y. | Y. |
| Not because X, but because Y. | Because Y. |
| It's not just X, it's Y. | Y. |

### Negative listing

"Not X. Not Y. Z." — state Z directly.

### Significance inflation

"Marking a pivotal moment in the evolution of...", "a watershed moment for
the industry". State what happened; let the reader judge significance.

### Aphorism formulas

"X is the language of Y", "the architecture of trust", "X becomes a trap".
Replace with the concrete claim.

### False agency

Inanimate objects doing human actions. Name the person or use "you".

| Slop | Replace with |
|------|--------------|
| the decision emerges | someone decides |
| the culture shifts | people change behavior |
| the data tells us | you can see in the data |
| the market rewards | buyers pay for |
| the complaint becomes a fix | someone fixed it |

### Narrator-from-a-distance

| Slop | Replace with |
|------|--------------|
| People tend to... | You... |
| Nobody designed this. | You don't sit down and decide to... |
| This happens because... | (state the cause directly) |

## Chatbot artifacts

| Slop | Replace with |
|------|--------------|
| I hope this helps! | (cut) |
| Let me know if you have any questions. | (cut) |
| Great question! | (cut) |
| You're absolutely right! | (cut) |
| As of my last training data... | (cut or state the limitation) |
| Let me think... | (cut) |
| Step 1: ... | (just do the steps) |
| Breaking this down... | (cut) |

## Emoji and decoration

Remove unless they serve a function (e.g., ⚠️ next to a warning).

- 🚀 ✨ 🔥 💡 ⭐ 🎯 💪 🎉 🌟 💎 🔑 📌 📍 📊 📈 📉
- Decorative horizontal rules (`---`) that don't separate sections
- Excessive bold: if every other phrase is bold, none of it is emphasis. Bold
  only the 1-2 most important things per section.
- ALL CAPS for emphasis. Use bold or just write the sentence strongly.
- Curly quotes (" " ' ') in plain text and code → use straight quotes.

## Structural bloat

- **Unnecessary section headers.** If a section has one short paragraph, the
  header is probably doing no work. Merge it into the previous section.
- **Lists of 2-3 short items.** Merge into a sentence.
- **Nested lists.** Flatten if the nesting doesn't carry meaning.
- **"Key takeaways" sections** that just repeat the content. Delete.
- **"TL;DR" at the top** that says what the post says. If the post is short
  enough, cut it. If it's long, keep it but make it actually shorter.
