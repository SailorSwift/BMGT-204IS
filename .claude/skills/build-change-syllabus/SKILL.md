---
name: build-change-syllabus
description: Build or revise the BMGT 240IS course syllabus as a styled HTML page at Syllabus/Syllabus_2026_Fall.html. Use when the user asks to create, write, update, adjust, or fix the syllabus — a policy, a due date, the grading table, the schedule, or the whole document. Reads the course sources of truth in Course_Facts/ before writing anything.
---

# Build or change the syllabus

The syllabus is the **contract**. A lesson plan that is slightly wrong wastes ten minutes of one
class; a syllabus that is slightly wrong is quoted back to you in week 14 by a student who is
right. Every date, point value, and count in it must be traceable to a file in `Course_Facts/`.

That is the whole discipline of this skill: **you do not know the numbers, and you must not
reconstruct them from memory or from an earlier draft of the syllabus.** You look them up.

---

## Step 0 · Read the sources of truth — before anything else

Non-negotiable, and first, every single time — a full build or a one-line date change alike.

```bash
cat Course_Facts/Fall_2026_Calendar.md      # every date, plus the 29-session map
cat Course_Facts/Grading.md                 # every point value, weight, and count
cat Course_Facts/Course_Catalog.md          # description, prerequisites, the eight outcomes
```

These files outrank the existing syllabus, any prior draft, your memory, and anything the
user said in an earlier session. If the document and a source of truth disagree, **the source of
truth wins and you say so out loud.**

Three rules that follow from that:

1. **Never print a date that is not in the calendar file.** Not a "probably," not an inference
   from the pattern. The term has holidays and a break that delete sessions; guessing produces a
   plausible schedule that is wrong by two class periods.
2. **Never print a number that is not in the grading file.** The weights reconcile exactly —
   1000 points, 100%, 1% = 10 points. An invented number breaks an arithmetic identity a student
   will check.
3. **An `Open` item stays open.** Both files end with an `Open` section listing what is *not*
   settled — the letter-grade scale, the final exam slot, the missing-upload rule. Render each as
   a visible `TODO` in the page, styled so it cannot be mistaken for a decision. Do not fill it
   with something reasonable. A reasonable invention is the single worst failure mode here,
   because it looks exactly like a fact.

**If the user gives a number or date that contradicts a source of truth**, stop and say which
file disagrees and what it says. If they confirm the new value, **update the source-of-truth file
first**, then the syllabus — so the next run inherits the correction instead of re-fighting it.

---

## Step 1 · Establish the mode

```bash
wc -c Syllabus/Syllabus_2026_Fall.html
```

**Empty or missing → BUILD.** Write the whole document, Step 3 onward.

**Has content → ADJUST.** Read it fully before editing. Then change only what was asked, in
place, and re-publish to the same Artifact URL. Never create a second syllabus file, and never
regenerate the document wholesale to make one edit — the user has read this page, and rewriting
prose they already approved is a cost with no benefit.

In ADJUST mode, one thing matters more than the edit itself: **a change to a date or a number
usually has a second home.** A moved exam appears in the schedule table *and* Important Dates. A
changed weight appears in the grading table *and* possibly in a policy sentence. Grep for the old
value across the file before you declare the edit done:

```bash
grep -n "Nov 18\|175\|30%" Syllabus/Syllabus_2026_Fall.html
```

---

## Step 2 · Cross-check the lesson plans

```bash
ls "Lesson Plans/"*/
```

The schedule table and the actual sessions must not drift apart. Lesson plans are filed by week
and named `Session_<NN>_<YYYY-MM-DD>_...`, so the session number and date are in the filename.
Compare them against the session map in the calendar file.

If a lesson plan contradicts the syllabus schedule, **report it rather than silently resolving
it.** The plan may reflect a change the syllabus has not caught up to, or the plan may be the
stale one. Only the user knows which.

---

## Step 3 · Sections, in order

1. **Header** — course, title, term, meeting days/time/room, instructor, contact, office hours.
2. **Course Description** — what the course is, in the catalog's terms.
3. **Learning Objectives** — observable student behavior, not "understand."
4. **Materials** — textbook with edition and ISBN, MindTap, software, anything required.
5. **Grading** — the category table and the project-parts table, straight from `Grading.md`.
   Include the attendance bonus and state plainly that it sits outside the 1000.
6. **Course Schedule** — the session table: session number, date, topic, sections, what is due.
   Every date from the calendar file. Mark Fall Break as a gap, not a session. See the schedule
   pattern below.
7. **Important Dates** — the registrar deadlines students act on: add, drop, drop with a "W",
   break, finals.
8. **Core Perspective: Inquiry — Social Sciences (IS)** — the Core designation and its qualities.
9. **Policies** — late work, make-ups, attendance, academic integrity, AI use, accommodations.
10. **How to Do Well** — direct advice, in your voice.

**Voice:** address the student in second person. Plain declaratives. State the rule and the
reason for it — a policy whose purpose is visible gets argued with less than one that reads as
arbitrary. Do not hedge a rule into a suggestion; if there is discretion, say where it lives.

---

### The schedule pattern

Sessions 1–3 are as the retired syllabus had them. From Session 4 the course runs in **paired
sessions per chapter**: a **lecture day** (concepts, no keyboards) followed by a **lab day**
(Excel, hands on keys). Session 4 is Chapter 2 lecture, Session 5 is Chapter 2 lab. Continue that
pairing — and the lesson plans in `Lesson Plans/Week3/` show what each half looks like in practice.

The pattern does not survive the whole term unmodified, and the schedule must say so honestly
rather than laying down pairs until it runs out of December:

- **Chapters 5 and 6 have no lab.** `DATAFiles/` has folders for Ch01–04 and Ch07–15 and none for
  Ch05 or Ch06 — probability and probability distributions are board-work chapters with no dataset
  to lab with. Schedule them as lecture-only.
- **Presentations are sessions, not footnotes.** The **final project** presents in class —
  ~8 groups is about 2 sessions. Put those in the table as their own rows. The **small project
  does not present**; it is submitted, so it costs no session time.
- **Exams are sessions.** Two of them.

**The catalog decides what the schedule may drop.** `Course_Facts/Course_Catalog.md` names
confidence intervals, hypothesis testing, correlation, and **multiple regression** — so the term
must reach Ch 15, not merely run until December ends. ANOVA, chi-square, and inference about
variances (Ch 11–13) appear nowhere in the description or outcomes: those are the chapters to cut
when the calendar runs short. Cutting regression to preserve sequential order would leave the
course not matching its own catalog entry.

Before writing the table, **do the subtraction out loud**: 29 sessions, minus what is already
spent, minus exams and presentation days, leaves N for chapter content, which at two per chapter
reaches Chapter X. State where the term actually ends in the book. A schedule that quietly assumes
the whole textbook fits is the syllabus equivalent of a lesson plan that pretends everything fits
in 75 minutes — and it fails in week 12, when there is no room left to recover.

## Step 4 · Output

Write to **`Syllabus/Syllabus_2026_Fall.html`**.

House style, matching the lesson plans so the course reads as one set — copy the token block and
layout from `Lesson Plans/Week3/Session_05_2026-09-10_Chapter_2_Excel_Lab.html`. It is **Artifact
source**: begins at `<title>` with `<style>` inline, and carries no `<!doctype>`, `<html>`,
`<head>`, or `<body>` wrapper. Keep the MSU palette (`--msu-blue: #162960`,
`--msu-gold: #f4b425`), the complete light palette on bare `:root`, and both dark-mode blocks.

Give `TODO` items their own visible style — reuse the `.warn` treatment (clay border) so an
unresolved item is obvious on the page rather than buried in a table cell.

Then publish with the **Artifact** tool and hand the user the URL. On a revision, **re-publish to
the same URL** so the link they have stays live.

---

## Step 5 · Report what you could not settle

Close by listing, explicitly:

- every `TODO` still on the page and what it is waiting on,
- anything where a source of truth and the user's instruction disagreed,
- anything the lesson plans contradict.

A syllabus with three named gaps is useful. A syllabus with three invented answers is a liability,
and the difference is invisible on the page — which is exactly why you say it out loud here.
