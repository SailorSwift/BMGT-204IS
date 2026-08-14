---
name: lesson_planner
description: Write instructor lesson plans and MSU-branded slide decks for BMGT 240IS Business Analytics. Use when planning a session, a unit, a lab, a quiz, or a review day; when building or revising a lesson plan in Lesson Plans/; or when generating a .pptx deck from a plan. Knows the Fall 2026 syllabus, the 29-session calendar, the Doane & Seward chapter materials in this repo, and the MSU brand kit.
allowed-tools: Read, Write, Edit, Grep, Glob, Bash
---

# Lesson Planner — BMGT 240IS

Produce instructor lesson plans, and optionally MSU-branded decks, for BMGT 240IS
Business Analytics (Fall 2026, Swift). The bar is
`Lesson Plans/Unit_01_Describing_Data_Lesson_Plan.md` — a plan that tells the
instructor what to *do*, minute by minute, with real file paths and the
misconceptions to head off.

**A plan is not a summary of a chapter.** It is a set of decisions: what to cut,
what to protect when class runs long, which ambiguity to leave open, and what to
say out loud.

## Read first

| File | Why |
| --- | --- |
| `references/course_facts.md` | The 75-minute period, the 29-session map, quiz numbers, due dates, what material actually exists in this repo |
| `references/plan_structure.md` | Required plan shape, and what separates a good plan from a generic one |
| `Lesson Plans/Unit_01_Describing_Data_Lesson_Plan.md` | The quality bar and the tone |
| `references/deck_spec.md` | Deck syntax and the MSU branding rules — only if building a `.pptx` |

`Syllabus/BMGT240IS-Fall2026-Syllabus.md` wins any disagreement about dates,
points, or policy. It is the document students hold.

## Process

### 1. Establish scope and check the calendar

Confirm which sessions are in scope, then read `references/course_facts.md` for
their dates, chapters, quiz numbers, and due items. A Tuesday has **75 minutes**;
a Thursday has **65 usable** after the 10-minute quiz.

Ask the instructor only what you genuinely cannot determine: an unstated
preference between two defensible sequences, or a decision the syllabus leaves
open. Do not ask what the syllabus already answers.

### 2. Inventory the materials — verify every path

Glob the relevant `Chapters/CHAPTER<N>/` and `Learning Stats/Unit_<NN>_*/`
folders. Open the publisher deck to find the slide ranges you will cite, and open
candidate `.xlsx` files to confirm the columns, the row count, and what one row
actually represents.

**Cite no path you have not confirmed exists.** A plan that sends the instructor
to a missing file fails in front of the room. `Chapters/` currently covers only
**Ch 1–4** and `Learning Stats/` only **Units 01–04** — for Ch 5–17 there is no
deck and no dataset folder in the repo. When material is missing, say so in the
plan and list exactly what must be added. Never invent a path.

Ignore `~$*` files — Office lock artifacts, not content.

### 3. Find the through-line before writing any session

One question the unit asks in progressively sharper form, and a sentence per
session showing how it escalates. Write this first; it determines what each
session is for. Then write the unit outcomes as labelled, testable capabilities
(`U2-A`, `U2-B`, …).

### 4. Write the sessions

Follow `references/plan_structure.md`. For each session: objectives, the honest
paragraph about what is hard here, a timing table that **sums to the period**,
core content with real datasets and Excel syntax, activities with concrete steps
and failure modes, misconceptions with corrections, the quiz blueprint on
Thursdays, and the assignment.

Plan callbacks deliberately — set something up in one session, pay it off in a
later one, and name the date in both places.

### 5. Write the unit back matter

Assessment map, Excel skills ledger, differentiation including the signal to
watch, and a prep checklist grouped by date.

### 6. Check the plan before handing it over

- Every timing table sums to 75 (Tue) or 65 + 10 quiz (Thu).
- Every cited path exists.
- Quiz numbers, due dates, and point values match the syllabus.
- Nothing contradicts the conventions in `course_facts.md` (`QUARTILE.INC`, `.S` variants, μ/x̄ notation, live formulas).
- Every objective is something a student can *do*.
- Interpretation is treated as the graded skill, because the rubric says it is.

Write to `Lesson Plans/Unit_0N_<Topic>_Lesson_Plan.md`.

### 7. Build a deck, when asked

Read `references/deck_spec.md`, write a spec, validate, then build:

```bash
python .claude/skills/lesson_planner/scripts/build_deck.py <spec.md> --validate
python .claude/skills/lesson_planner/scripts/build_deck.py <spec.md> -o "Decks/Session_08_Probability.pptx"
```

`references/example_deck_spec.md` is a working spec for Session 6, useful as both
reference and smoke test.

The deck is what the room sees; the plan is what the instructor does. Do not
paste the plan onto slides. Instructor moves belong in `NOTES:`.

Branding rules are not optional and are summarized in `references/deck_spec.md`:
never hand-write a brand color literal, use web values rather than print, keep
gold as decoration only, and let the template's own layouts carry the MSU marks.

## Teaching stance

This course's own `CLAUDE.md` sets a teaching philosophy — discovery over
exposition, small experiments, predicting before running, honesty about
uncertainty. Plans should build lessons that work that way: a hook that poses a
question students cannot yet answer, a prediction before every demo, real
ambiguity posed rather than resolved, and deferred answers named as deferrals
instead of hand-waved.

Business framing on every technique. Not "compute the coefficient of variation"
but "compare the volatility of a $2 stock and a $400 stock."
