# Before / After Examples

Each pair shows AI slop (before) and the cleaned version (after). These
demonstrate the expected behavior of the prompt.

## Example 1: Filler and hedging

**Before:**

> It's worth noting that in today's rapidly evolving technological landscape,
> artificial intelligence may play a significant role in transforming various
> industries. Furthermore, it's important to understand that AI has the ability
> to automate a large number of tasks that were previously performed by humans.

**After:**

> AI can automate many tasks previously done by humans, transforming industries.

## Example 2: Generic adjectives

**Before:**

> Our comprehensive and robust platform leverages cutting-edge technology to
> deliver seamless, scalable, and user-friendly solutions for businesses of all
> sizes.

**After:**

> Our platform automates [what it does] for businesses.

(If the text doesn't say what the platform does, "comprehensive", "robust",
"cutting-edge", "seamless", "scalable", and "user-friendly" are all deleted.
The remaining sentence is a placeholder — the author needs to fill in what the
platform actually does.)

## Example 3: Verbose phrases

**Before:**

> In order to improve performance, we utilized a caching mechanism due to the
> fact that the database queries were taking a significant amount of time.
> Subsequently, we observed that the response time decreased by a large number
> of milliseconds.

**After:**

> We added caching because database queries were slow. Response time dropped by
> [X] ms.

## Example 4: Formulaic transitions and summary

**Before:**

> The new API supports pagination. Furthermore, it supports filtering by date.
> Additionally, it supports sorting by any field. Moreover, it returns results
> in JSON format. In conclusion, the API is quite feature-rich.

**After:**

> The new API supports pagination, date filtering, sorting by any field, and
> JSON responses.

## Example 5: Emoji and decoration

**Before:**

> 🚀 Welcome to our amazing new feature! ✨
>
> 💡 **Key Highlights:**
> - 🔥 Fast performance
> - 🎯 Easy to use
> - 📊 Real-time analytics
>
> We're super excited about this! 🎉

**After:**

> New feature: fast performance, easy to use, real-time analytics.

## Example 6: Preserving facts and voice

**Before:**

> It's important to note that PostgreSQL 16 was released on September 14, 2023.
> It introduces logical replication on standby servers, which is a pretty big
> deal.

**After:**

> PostgreSQL 16 (released September 14, 2023) adds logical replication on
> standby servers — a big deal.

(The date and version are preserved. "pretty big deal" keeps the author's
casual tone, tightened to "a big deal".)

## Example 7: Intentional hedging

**Before:**

> The treatment may reduce symptoms in some patients, but the trial was small
> and the results are not statistically significant.

**After:**

> The treatment may reduce symptoms in some patients, but the trial was small
> and the results are not statistically significant.

(No change. The hedging is the point — the author is correctly stating that
the evidence is weak. Cutting "may" would misrepresent the claim.)

## Example 8: Code block untouched

**Before:**

> It's worth noting that you can use `grep` to search files. For example:
>
> ```bash
> grep -r "pattern" .
> ```
>
> Furthermore, the `-i` flag makes the search case-insensitive.

**After:**

> Use `grep` to search files:
>
> ```bash
> grep -r "pattern" .
> ```
>
> The `-i` flag makes the search case-insensitive.

## Example 9: Binary contrast

**Before:**

> It's not about the tools. It's about the people. The answer isn't more
> features. It's better focus.

**After:**

> It's about the people. Better focus matters more than more features.

(State the positive claim directly. The "not X, but Y" structure is a
telegraphed reversal that adds no meaning.)

## Example 10: False agency

**Before:**

> The decision emerges from the data. The culture shifts toward remote work.
> The market rewards companies that invest in AI.

**After:**

> The team decided based on the data. Companies shifted toward remote work.
> Buyers pay more for companies that invest in AI.

(Name the actor. Inanimate objects don't "emerge", "shift", or "reward".)

## Example 11: Significance inflation

**Before:**

> We launched the new dashboard, marking a pivotal moment in the evolution of
> our product and a watershed moment for the industry.

**After:**

> We launched the new dashboard.

(State what happened. Let the reader judge significance.)

## Example 12: Chatbot artifacts

**Before:**

> Great question! I hope this helps! Let me know if you have any other
> questions. To summarize, the API supports pagination and filtering.

**After:**

> The API supports pagination and filtering.

(Cut sycophancy, filler closings, and restatements.)

## Example 13: Tier 2 cluster

**Before:**

> We harness the power of AI to navigate the complexities of the modern
> marketplace, fostering innovation and empowering businesses to streamline
> their operations.

**After:**

> We use AI to help businesses simplify their operations.

(Four Tier 2 words in one sentence: harness, navigate, fostering, empower,
streamline. Replace with plain verbs.)
