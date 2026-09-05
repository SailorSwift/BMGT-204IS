# BMGT 240IS — Business Analytics

## Sources of truth — check before writing any date or number

[`Course_Facts/`](Course_Facts/) holds the course's settled facts. **Read the relevant file
before producing any date, point value, weight, or count** — in a syllabus, a lesson plan, a
gradebook, or an answer in chat.

- [`Course_Facts/Fall_2026_Calendar.md`](Course_Facts/Fall_2026_Calendar.md) — term dates,
  registrar deadlines, holidays, and the 29-session map (S01 Aug 27 → S29 Dec 10).
- [`Course_Facts/Grading.md`](Course_Facts/Grading.md) — categories, points, weights, project
  parts, attendance bonus, Canvas group setup. 1000 points, 100%, 1% = 10 points.
- [`Course_Facts/Course_Catalog.md`](Course_Facts/Course_Catalog.md) — catalog description,
  prerequisites, and the eight course outcomes. The description names multiple regression, so the
  schedule must reach Ch 15.

These outrank any document in the repo, any earlier draft, and memory. If a document disagrees
with them, the source of truth wins — say so rather than quietly reconciling.

Each file ends with an `Open` section: things deliberately **not** settled. Render those as
visible `TODO`s. Never fill one with a plausible invention — it looks exactly like a fact.

When the user supplies a value that contradicts a source of truth, update the source-of-truth
file first, then whatever cites it.

## Instructions

Instructions for this repo live in [`.agents/`](.agents/). They are imported below.

@.agents/teaching-guide.md
