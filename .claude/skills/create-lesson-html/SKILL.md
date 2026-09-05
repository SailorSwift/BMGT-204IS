---
name: create-lesson-html
description: Build a class-session lesson plan for BMGT 240IS as a styled HTML page. Use when the user asks for a lesson plan, class plan, session plan, or teaching plan for a chapter or a class date. Reads the Cengage Instructor Manual, the lecture deck, the textbook PDF, and the chapter examples before drafting, then iterates on the draft with the user.
---

# Create a lesson plan (HTML)

A lesson plan here is **the instructor's script for one 75-minute class period** — not a
chapter summary and not a student handout. Every claim in it should be traceable to one of
four sources, and the whole point of Steps 1–4 is that you read those sources *before* you
write, so the plan says "deck slides 12–19, §2.1, `softdrink.xlsx`" instead of plausible
guesses.

Do not skip steps because you already "know" the statistics. You almost certainly do know the
statistics. What you do not know without reading is which of the twelve learning objectives
this deck actually front-loads, which example the book works, and which slide the instructor
should be on at minute 40. That is the content of a lesson plan.

---

## Step 0 · Settle the parameters before reading anything

**First, read the course facts.** Both files, before anything else.

```bash
cat Course_Facts/Course_Catalog.md          # the eight course outcomes — read these first
cat Course_Facts/Fall_2026_Calendar.md      # 29-session map, S01 Aug 27 -> S29 Dec 10
```

The **catalog** tells you what this session is *for*. The **calendar** tells you when it happens —
session numbers and dates come from there, never from the Tue/Thu pattern, because Fall Break and
the finals-week boundary delete sessions and counting forward from the last plan silently drifts.

You need these. Ask for whatever the user did not give, in one message — not one at a time,
and do not start reading with only a chapter number.

| Parameter | Why it changes the plan |
| --- | --- |
| **Chapter** (e.g. 2) | Selects all four source files. |
| **Sections** (e.g. §2.1–2.2) | A chapter is 3–5 class periods. Without this you plan a chapter, not a session. |
| **Session number and date** | Goes in the filename and header; drives "last time / next time". |
| **Minutes**, and whether there is a quiz | 75 minutes minus a 10-minute quiz is a materially different plan. |
| **Anything already fixed** — a lab, a project launch, an activity the user wants | These are constraints, not suggestions. Build around them. |

Then check what came before: `ls "Lesson Plans/"*/` — plans are filed by teaching week
(`Lesson Plans/Week3/`), so list the folders, then read the highest-numbered session inside the
latest one. It tells you what the room already knows, what was deferred into this session, and
what house voice these plans use. **Deferred material from the previous session is a hard
input** — if Session 1 pushed the scale taxonomy to Session 2, Session 2 owes it.

The previous plan is also the only schedule fact you can verify. **Do not source the chapter,
sections, session number, or date from a syllabus file** — the parameters above come from the
user, and a stale syllabus will quietly contradict them.

### When the invocation carries no parameters

This is the normal case — the user types the slash command and nothing else. **Do not answer it
with a multiple-choice question.** Read the previous plan first, then print the block below
*already filled in* with your best reading of it, and ask the user to correct what is wrong:

```
Session 06 · Tue, Sep 15, 2026 · Chapter 3, §3.1
Minutes: 75 · Quiz: none
Format: concepts day — mean, median, mode, weighted and geometric mean, percentiles, quartiles

Fixed constraints:
- <a lab, a project launch, a deadline announcement, an activity already decided>
- <what the NEXT session owns, so this plan knows what may not slide into it>

Carried in from Session 05:
- <what the previous plan deferred or promised — read its closing section>

Watch out for:
- <room dynamics, pacing that failed last time, a topic that ate 20 minutes>
```

Fill the top three lines yourself and say where each value came from. The previous plan gives you
the session number, the Tue/Thu cadence gives you the date, and its closing paragraph usually
names the next chapter outright ("Session 6 opens Chapter 3, numerical measures"). Fill the
**Carried in** line from that closing section too — that one is your job, not the user's.

Leave the **Fixed constraints** and **Watch out for** placeholders empty. Those are the two things
no file records: what the user has already decided, and what actually happened in the room. Say
plainly that those are the lines worth their typing, and that everything else is a correction to
what you already filled in.

One message, one block, then stop and wait. A wrong guess in a printed block costs the user four
words to fix; a question with four options costs them a decision they did not need to make.

---

## Step 1 · Instructor Manual — `Chapters/CAMM_EMBS_9e_IM/Camm_EMBS_9e_IM_CH<NN>.docx`

The publisher's own teaching notes. **Read this first**, because it is the only source already
written for a teacher rather than a reader — it is where "what is this chapter actually for"
lives.

```bash
python .claude/skills/create-lesson-html/scripts/extract.py \
  "Chapters/CAMM_EMBS_9e_IM/Camm_EMBS_9e_IM_CH02.docx" > "$SCRATCH/im_ch02.txt"
grep -n '^##' "$SCRATCH/im_ch02.txt"      # section map first, then read what you need
```

Pull out and keep:

- **Chapter Objectives** — the numbered LOs. These become your session objectives, narrowed to
  the sections in scope and **rewritten as observable student behavior**. "Understand frequency
  distributions" is not an objective; "given a column of categories, build a frequency
  distribution and say what it shows" is. Tag them `S<session>-<n>` (`S2-1`, `S2-2`) the way the
  existing plans do, so later sessions and quizzes can cite them.
- **Key Terms** — the vocabulary the rest of the book assumes. Anything here you do not define
  out loud becomes a silent prerequisite failure in Chapter 3.
- **Chapter Outline** — the IM's discussion prompts and common-misconception notes. Highest-value
  part of the file, and the part most often skipped. Misconceptions are what cold-call questions
  and checks-for-understanding are built from.
- **Activities and Assessments** — what the publisher already built, so you don't rebuild it.

**Do not paste IM prose into the plan.** It is copyrighted instructor material written in
publisher voice. Use it to decide *what to teach*; write the plan yourself.

---

## Step 1b · Rank the chapter against the course outcomes

Do this immediately after the Instructor Manual, before you look at a single slide. It is what
turns a chapter summary into a lesson plan.

A publisher chapter is written for completeness — every topic a business statistics course
*might* want. Your course has eight outcomes, and they are narrower than the book. So for each
learning objective you pulled from the IM, ask which course outcome it serves:

| | Course outcome (from `Course_Facts/Course_Catalog.md`) |
| --- | --- |
| 1 | Identify, code and summarize data using Excel |
| 2 | Collect samples and estimate unknown parameters |
| 3 | Use discrete and continuous probability distributions |
| 4 | Formulate and test hypotheses |
| 5 | Use regression to analyze data |
| 6 | Complete research projects |
| 7 | Design and conduct research in the future |
| 8 | Use sound quantitative reasoning to analyze business problems |

Sort the chapter's material into three tiers:

- **Load-bearing** — serves a named outcome directly, and later chapters are built on it. This is
  what the session is actually about.
- **Supporting** — serves an outcome, but a later chapter re-teaches it or the project exercises
  it anyway. Teach it, but it yields when time is short.
- **Publisher completeness** — serves no outcome in the list. Name it explicitly as such. This is
  the first thing to cut, and cutting it is not a compromise.

Then say, in one sentence, **what the single most important idea in this session is** — the one
concept that, if a student leaves with nothing else, still moved an outcome forward. Everything
downstream follows from that sentence: it goes first in the objectives, it gets the protected
block in the timing table, and it is the last thing you would cut.

**Do not rank by how much space the book gives a topic, or how many slides the deck spends on
it.** Publisher decks routinely spend a third of a chapter on material that serves no outcome
here. The whole value of this step is that it disagrees with the deck.

---

## Step 2 · Lecture deck — `Chapters/CAMM_EMBS_9e_PPTs/Camm_EMBS_9e_PPT_CH<NN>.pptx`

The deck is what is physically on the screen, so it sets the **minute-by-minute timing**. A
timing table with wrong slide numbers is worse than no timing table.

```bash
python .claude/skills/create-lesson-html/scripts/extract.py \
  "Chapters/CAMM_EMBS_9e_PPTs/Camm_EMBS_9e_PPT_CH02.pptx" > "$SCRATCH/ppt_ch02.txt"
grep -n '===== SLIDE' "$SCRATCH/ppt_ch02.txt"     # deck map
python .claude/skills/create-lesson-html/scripts/extract.py \
  "Chapters/CAMM_EMBS_9e_PPTs/Camm_EMBS_9e_PPT_CH02.pptx" 6 19 --notes
```

Produce two things:

1. **A slide range for this session**, plus an explicit note of which slides are left for next
   session — the way Session 1 records "slides 15–25 belong to Sep 1". Without that line the
   next plan has to re-derive the split, and will get it wrong.
2. **A judgment about the deck, not an inventory.** Publisher decks routinely open with six
   slides of front matter and run 45+ slides for a chapter that gets three periods. Say which
   slides to skip, which to linger on, which to replace with live Excel. "Present slides 1–24"
   is not teaching work.

Use `--notes` on the slides you will actually teach — the speaker notes carry the step-by-step
Excel click-paths, which are the parts worth transcribing into the plan.

**Two traps the script exists to avoid.** `slideNN.xml` file numbers are not the numbers
PowerPoint displays, and `notesSlideNN.xml` numbers do not track slide numbers either. A naive
`unzip | strip-tags` silently attaches the wrong notes to the wrong slide and sends the
instructor to the wrong slide at minute 40; the script resolves both through the relationship
files. **Also:** the folder holds both `Camm_EMBS_9e_PPT_ CH04.pptx` (leading space) and
`Camm_EMBS_9e_PPT_CH04.pptx`. For Chapter 4, compare them and say which you used.

---

## Step 3 · Textbook — `Books/Essentials of Modern Business Statistics with Microsoft Excel.pdf`

The book is the source of truth for **notation, definitions, and the worked example the students
have in front of them**. Read it so your board work matches their page — if the book computes
the soft-drink example, demo the soft-drink example.

The PDF has front matter, so printed page ≠ PDF page:

```
pdf_page = printed_page + 27          # verified: PDF p.80 is printed p.53
```

```bash
B="Books/Essentials of Modern Business Statistics with Microsoft Excel.pdf"
pdftotext -f 1 -l 12 "$B" - | grep -n -i "chapter 2"    # printed start page, from the TOC
pdftotext -f 78 -l 96 "$B" -                             # then read the section
```

Spot-check the offset rather than trusting it blindly — any page of `pdftotext` output shows
the printed page number in its header or footer.

Take: exact definitions and symbols, the specific numbers in the worked example, the figure and
table numbers you will point at, and end-of-section exercise numbers worth assigning.
`pdftotext` mangles equations and figures — when a formula matters, read that page directly
rather than trusting the text dump.

---

## Step 4 · Chapter examples — `Chapters/Chapter_examples/chapter_<NN>/`

**This folder is the user's own material, and it outranks everything above.** Whatever is here
is what they have decided to teach with — a worked walkthrough, their own dataset, a classroom
activity. If it exists, build the session around it and let the publisher sources become
supporting cast.

```bash
ls -la Chapters/Chapter_examples/chapter_02/
```

The folder is often empty or missing — normal, not an error. Say so in one line and fall back
to the book's worked example. Do not invent an example, and do not stall waiting for one.

While here, confirm the data files the session needs actually exist, because the plan names
their paths and the instructor opens them live in class:

```bash
ls DATAFiles/Ch02/DATAfiles/ | grep -iE 'softdrink|audit'
```

Never write a path into the plan you have not listed. Related material: `Solutions/Chapter 02/`
(worked answers) and `Practice/Chapter 02/` (existing student HTML).

---

## Step 5 · Write the plan

Only now do you write. Follow
`Lesson Plans/Week3/Session_05_2026-09-10_Chapter_2_Excel_Lab.html` — read it before drafting;
it is the house standard, for both structure and HTML. Its companion
`Session_04_2026-09-08_Chapter_2_Concepts.html` is the same standard for a no-keyboards session,
so read whichever matches the format you were asked for.

**Sections, in order:**

1. **Header** — session number, date, course/section/room/time, textbook sections, deck path
   **with slide range**, data file paths.
2. **Objectives** — 3–5, tagged `S<n>-<n>`, each an observable student behavior, **ordered by
   outcome alignment with the load-bearing one first**. Name which course outcome each serves.
   The order is a teaching instruction, not a formality: it is the order to teach them in, so the
   session that runs short still delivered the thing that mattered.
3. **The design problem in this session** — *the section that makes these plans worth having.*
   State honestly what does not fit in the time available, do the arithmetic out loud, make a
   recommendation, and name **what to cut first if the session runs long** — which is the Step 1b
   ranking read backwards: publisher-completeness material goes first, supporting material next,
   and the load-bearing concept is never the thing that gets dropped. A plan that pretends
   everything fits is useless at minute 60.
4. **Timing table** — minute ranges summing to the period length, with the protected content
   block marked. Offer a second table only when there is a genuine fork in the road.
5. **Segment walkthroughs** — the actual script: what to say, what goes on the board, the Excel
   click-path, the cold-call question and the answer you are listening for.
6. **Close** — assignment, next-session preview, administrative items.

**Voice:** direct address to the instructor, second person, plain declaratives. Make the
recommendation and state the reason; do not hedge into a menu. This is a colleague's briefing.

**Teaching stance:** build the plan for *discovery* — questions before answers, small
experiments before comprehensive explanation, "what do you notice?" before "here is what you
should notice." That is [`teaching-guide.md`](../../../.agents/teaching-guide.md) applied to the classroom
rather than to this conversation.

### Output

Write to **`Lesson Plans/Week<N>/Session_<NN>_<YYYY-MM-DD>_<Title_In_Snake_Case>.html`**,
where `Week<N>` is the teaching week the date falls in — reuse the existing folder if the week
already has one, create it if this session opens a new week.

Match the house HTML style — copy the token block and layout from
`Lesson Plans/Week3/Session_05_2026-09-10_Chapter_2_Excel_Lab.html`. It is written as
**Artifact source**: it begins at `<title>`
with the `<style>` block inline, and carries no `<!doctype>`, `<html>`, `<head>`, or `<body>`
wrapper. Keep the MSU palette (`--msu-blue: #162960`, `--msu-gold: #f4b425`), the complete light
palette on bare `:root`, and both dark-mode blocks.

Then publish it with the **Artifact** tool so the user has a link they can open on the classroom
machine, and hand them the URL.

---

## Step 6 · Iterate

The first draft is a proposal about how to spend 75 minutes. The user teaches the room and knows
things you do not — that the 12:15 section is quiet, that last week's activity died.

- Edit the file and **re-publish to the same path/URL**, so the link they saved stays live. Never
  create a second artifact for a revision.
- When feedback changes the timing, **re-balance the whole table** — do not bolt five minutes
  onto the end. The period is fixed; something has to give, and naming what gives is the job.
- When feedback contradicts a source, follow the user. They are in the room.
- If a revision needs a fact you did not extract, **go back to the source file** rather than
  filling the gap from memory. That is the entire premise of Steps 1–4.
- Carry anything cut into a "deferred to next session" line, so the next plan inherits it instead
  of losing it.
