# BMGT 240IS — Grading

**Source of truth.** Every point value, weight, and count in a syllabus or gradebook comes from
this file. Check it before writing any number. If a number is not here, it is not established —
write a visible `TODO` rather than inventing one that looks authoritative.

Settled with the instructor 2026-09-04. Arithmetic verified: weights sum to 100%, points sum to
1000, and **1% = exactly 10 points** in every category.

## Categories

| Category | Given | Counted | Each | Points | Weight |
| --- | --- | --- | --- | --- | --- |
| Assignments | 11 | 10 (drop lowest) | 15 | 150 | 15% |
| Quizzes | 11 | 10 (drop lowest) | 15 | 150 | 15% |
| Exams | 2 | 2 | 125 | 250 | 25% |
| Small project (individual) | 1 | 1 | 150 | 150 | 15% |
| Final project (group) | 1 | 1 | 300 | 300 | 30% |
| **Total** | | | | **1000** | **100%** |

## Project structure

Both projects use the same four parts. The small project is **individual**; the final project is
a **group** project.

| Part | Small (150) | Final (300) |
| --- | --- | --- |
| Topic proposal | 15 | 25 |
| Report + workbook | 85 | 175 |
| Slides | 25 | 50 |
| Presentation | 25 | 50 |

The small project's proposal is 15 points deliberately — one assignment, the atomic unit of the
whole scheme, so "a proposal costs one assignment" is sayable out loud.

## Attendance bonus

**Outside the 1000.** The ceiling is **1015 points (101.5%)**; the four graded categories are
untouched by it.

Attendance is recorded per session — 29 sessions, `Attendance/BMGT_240IS_Attendance_Sessions.xlsx`.

| Sessions missed | Bonus |
| --- | --- |
| 0–3 | 15 |
| 4–6 | 10 |
| 7–9 | 5 |
| 10 or more | 0 |

Three misses out of 29 is a 10.3% absence rate before anything is lost — enough slack for an
illness without case-by-case adjudication. The cap is 1.5% by design: it can lift a borderline
grade across one boundary and can never substitute for competence.

Marking convention the workbook formulas assume: `P` present, anything else absent, **blank for
sessions not yet held**. `Missed` counts only filled cells, so the Bonus column reads correctly
mid-term, not just at the end.

## Canvas setup — the authoritative gradebook

**Grades > Assignment Groups > Weight final grade based on assignment groups** is ON, weighted by
percentage. Five groups:

| Canvas assignment group | Weight | Points in group | Group rule |
| --- | --- | --- | --- |
| Assignments | 15% | 150 (11 × 15, 10 counted) | Drop lowest 1 |
| Quizzes | 15% | 150 (11 × 15, 10 counted) | Drop lowest 1 |
| Exams | 25% | 250 (2 × 125) | — |
| Projects | 45% | 450 (8 items) | — |
| Bonus Credit | 1.5% | 15 | — |
| **Total** | **101.5%** | | |

**The total is 101.5% on purpose.** Canvas permits group weights summing above 100 and will show
a warning saying so — that warning is expected, not a misconfiguration. It is what makes the
attendance bonus sit *outside* the 1000: a student earning no bonus can still reach 100%, and a
student earning all of it reaches 101.5%, which is 1015/1000 exactly.

Do not "fix" the warning by cutting the four graded groups to 98.5%. That would fold the bonus
into the grade, capping a student with zero bonus at 98.5% — the opposite of the design.

**The Bonus Credit group holds one 15-point item**, not a zero-point extra-credit assignment. A
group with 0 points possible is undefined under weighting and Canvas will ignore it. With 15
points possible the tiers map exactly onto the weight:

| Attendance bonus | Group score | Adds to final |
| --- | --- | --- |
| 15 | 15/15 | +1.50% |
| 10 | 10/15 | +1.00% |
| 5 | 5/15 | +0.50% |
| 0 | 0/15 | +0.00% |

**The Projects group needs no subdivision.** All eight project items — four small, four final —
live in it and split it by their own point values: 150/450 of the group is 33.3%, which is 15% of
the final grade, and 300/450 is 66.7%, which is 30%. The weights come out right without separate
groups.

### Three things that will silently break this

1. **Point values must stay proportional inside a group.** Under percentage weighting, Canvas
   computes each group as points earned ÷ points possible. Entering an assignment as 20 points
   instead of 15 does not break the group total, but it makes that one assignment count more than
   its siblings — and the syllabus says they are equal.
2. **Drop-lowest is safe here only because the items are equal.** Canvas drops by impact on the
   group score, not by raw points. With eleven identical 15-point items that is unambiguous. If
   one assignment is ever worth a different amount, "drop the lowest" stops meaning what the
   syllabus says it means.
3. **The percentage view and the 1000-point view agree only because 1% = 10 points exactly.** Any
   change to a category's points without the matching change to its Canvas weight makes the
   syllabus and the gradebook disagree — and students read both.

**Ungraded items:** Canvas's default current grade counts only what has been graded, so a
student's percentage mid-term is computed over a smaller denominator. That is usually what you
want; just know the number in Canvas is not "percent of 1000 earned so far."

## Open — do not invent these

- **Letter-grade scale.** Straight 90/80/70/60, or +/− bands? Any rounding rule?
- **Missing-upload rule.** The retired syllabus reduced or zeroed a project quiz for a missing or
  incorrect file upload, and counted emailed work as not submitted. Unknown whether this survives.
