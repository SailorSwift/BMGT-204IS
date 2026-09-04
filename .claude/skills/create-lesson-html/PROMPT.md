# How to invoke `create-lesson-html`

The skill's Step 0 stalls unless the invocation already carries the parameters. Paste one of the
blocks below after the skill name and it reads sources instead of asking questions.

**Do not source the schedule from a syllabus file.** Chapter, sections, session number, and date
come from you in the invocation. The skill's job is to read the four content sources — Instructor
Manual, deck, textbook, `Chapters/Chapter_examples/` — and the previous session plan in
`Lesson Plans/`, which is the only schedule fact it can verify on its own.

---

## Template

```
/create_lesson_html

Session <NN> · <Day, Mon DD, YYYY> · Chapter <N>, §<x.x>–<y.y>
Minutes: 75 · Quiz: <none | 10-min quiz at the top>
Format: <concepts, no keyboards | Excel lab, lockstep | mixed>

Fixed constraints (build around these, do not relitigate):
- <a lab, an activity, a project launch, a guest, a deadline announcement>
- <what the NEXT session owns, so this plan knows what may not slide into it>

Carried in from Session <NN-1>:
- <what the previous plan deferred or promised — read its closing section>

Watch out for:
- <room dynamics, pacing that failed last time, a topic that ate 20 minutes>
```

Leave out anything you genuinely do not know rather than guessing — the skill will read the
previous plan. What it cannot recover on its own is the **fixed constraints** and **what actually
happened in the room**, so those two lines are the ones worth typing.

---

## Filled example

Shape only — replace every specific with the real ones for the session you are planning.

```
/create_lesson_html

Session 06 · Tue, Sep 15, 2026 · Chapter 3, §3.1
Minutes: 75 · Quiz: none
Format: concepts day — mean, median, mode, weighted and geometric mean, percentiles, quartiles

Fixed constraints:
- Session 7 (Thu Sep 17) is the §3.2–3.5 lab and has no room to absorb overflow, so §3.1
  must close completely today. Name what gets cut first with that in mind.
- Geometric mean gets taught, not skipped — students meet it again in the project.
- Two minutes of administrative at the top, not ten.

Carried in from Session 05:
- Session 5 closed on "two quantitative variables moving together is a fact about the data,
  not a fact about the world" and named that as the bridge into Chapter 3. Open on it.
- Anyone who did not finish activity 2.4b did it at home — 60 seconds to collect, not a re-teach.

Watch out for:
- Session 5 was a full-period lab; the room arrives expecting keyboards. Say in the first
  minute that today is board work, and why.
- Weighted mean is where the arithmetic-fluency gap shows. Budget a worked example, not a slide.
```

---

## Two things worth saying in the invocation, always

1. **Whether there are keyboards.** A concepts session and a lab session are different documents
   — different timing granularity, different segment scripts. The skill cannot infer it from the
   section numbers.
2. **What must not slide.** Step 5 asks the plan to name what gets cut first if the period runs
   long. That judgment is only correct if the plan knows which block is load-bearing for the
   *next* session — and only you know what the next session owns.
