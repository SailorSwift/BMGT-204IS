# Lesson Plan Structure

The required shape of a unit lesson plan. Derived from
`Lesson Plans/Unit_01_Describing_Data_Lesson_Plan.md`, which is the quality bar
and the best reference for tone. Read it before writing a new unit.

Output path: `Lesson Plans/Unit_0N_<Topic>_Lesson_Plan.md`

---

## Part 1 — Unit front matter

**Header.** Unit number and title, course/term/section/instructor, textbook
chapters, the meeting count with first and last dates, room, and period length.

**The unit at a glance.** One table: session #, date, topic, chapter, format
(lecture / lab / lecture+lab), and what is due. Lifted from the syllabus, never
reinvented.

**The unit's through-line.** *This is the section that makes a plan worth
having.* One question the unit asks in progressively sharper form, plus a
sentence per session showing how it escalates. State why it matters — students
who see a unit as unrelated chapters of vocabulary disengage; students who see
one escalating question do not.

**Unit learning outcomes.** Numbered and labelled (`U2-A`, `U2-B`, …) so
individual sessions can reference them. Each outcome names what the student can
*do*, not what they were exposed to. Close by mapping outcomes to the syllabus
objectives they serve and the assessments that measure them.

**Materials inventory.** A table of session → deck → data files, every path
verified to exist. If material is missing from the repo, say so explicitly and
list what must be added.

**Calendar realities.** The two or three scheduling facts that change how this
unit must be taught — add/drop churn, over-enrollment, a holiday, an exam six
days before a withdrawal deadline.

---

## Part 2 — One block per session

Each session, in this order:

**Heading.** `## Session N · Day, Mon D — Topic`, then a line naming the
chapter, the deck, and whether it is a lab.

**Objectives.** Two or three, referencing the unit outcome labels, plus any
session-specific ones written as `S8-1`, `S8-2`.

**Why this session matters / the design problem in it.** One short paragraph of
honest instructor reasoning: what is genuinely hard here, what students
predictably get wrong, or what two unlike things have to fit in one period. Skip
it only when there is nothing real to say.

**Timing table.** `| Min | Segment | What happens / Deck |`. Must sum to the
period: **75 minutes Tuesday, 65 usable Thursday after the 10-minute quiz.**
Use ranges (`0–5`, `5–13`). Mark the high-value block so it is protected when
the session runs long.

**Core content.** Prose with the actual substance — the definition that sticks,
the table students should photograph, the tree or taxonomy, the formula and what
makes it feel inevitable rather than arbitrary. Name the specific dataset and
column. Include Excel syntax in backticks.

**Activities, demos, labs.** Concrete and runnable: the file, the steps, the
click, the number they should see. For a lab, include the failure modes in
order of frequency and what to do about each. For a discussion, include the
prompts and what to draw out of each.

**Misconceptions to head off.** Two to four, each with the correction. These are
the highest-value lines in a lesson plan.

**Quiz blueprint** — Thursdays only. 5 questions, 20 points, 10 minutes, with
point values, what each question tests, and the answer where it is not obvious.

**Assignment before next session.** Reading, anything to bring, and the next
quiz warning.

**Optional closers.** Exit ticket, "if you finish early" filler, or a forward
pointer that pays off in a later session.

---

## Part 3 — Unit back matter

- **Assessment map** — every graded item in the unit, its date, coverage, and points, then the unit's point total as a share of the 1000.
- **Excel skills ledger** — every skill a student must perform unaided by the end of the unit, with how. Doubles as a Canvas handout and exam review sheet.
- **Differentiation** — for students ahead, for students behind, and *the signal to watch* (which early score predicts trouble, and what to do about it).
- **Prep checklist** — grouped by "Before <date>", as real checkboxes. Anything that must be built, printed, written, or posted in advance.

---

## What separates a good plan from a generic one

The Unit 1 plan is strong for reasons worth copying deliberately:

1. **Callbacks across sessions.** A hook chart shown silently on Aug 27 is resolved on Sep 8. A mean-vs-median question is deliberately left open on Sep 3 and paid off on Sep 15. Plan these on purpose and name the date in both places.
2. **Deferred answers are stated as deferrals.** "We do not need this yet — Unit 3" is better teaching than a hand-wave, and better than silence.
3. **Predict, then run.** Before every demo, students predict. The near-miss is the lesson.
4. **Real ambiguity is posed, not resolved.** Whether averaging a Likert scale is legitimate; whether `QUARTILE.INC` or `.EXC` is right. Let the room argue, then be honest that conventions differ and state which one the course uses.
5. **Business framing on every technique.** Not "compute CV" but "compare the volatility of a $2 stock and a $400 stock."
6. **The instructor is told what to *say*.** Exact sentences worth saying out loud, marked as such.
7. **Interpretation is treated as the graded skill**, because the rubric says it is.
8. **Honest about time.** 22 minutes for the syllabus, not 40. "Compress." "Pick two motivations, not six."

## What to avoid

- A timing table that does not sum to the period.
- Ten techniques presented as a catalog with no decision rule for choosing among them.
- Cited file paths that do not exist.
- Quiz numbering or due dates that contradict the syllabus.
- Objectives that are topics ("students will learn about variance").
- Padding. Every line should change what the instructor does.
