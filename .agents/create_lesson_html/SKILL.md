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

You need these. Ask for whatever the user did not give, in one message — not one at a time,
and do not start reading with only a chapter number.

| Parameter | Why it changes the plan |
| --- | --- |
| **Chapter** (e.g. 2) | Selects all four source files. |
| **Sections** (e.g. §2.1–2.2) | A chapter is 3–5 class periods. Without this you plan a chapter, not a session. |
| **Session number and date** | Goes in the filename and header; drives "last time / next time". |
| **Minutes**, and whether there is a quiz | 75 minutes minus a 10-minute quiz is a materially different plan. |
| **Anything already fixed** — a lab, a project launch, an activity the user wants | These are constraints, not suggestions. Build around them. |

Then check what came before: `ls "Lesson Plans/"` and read the most recent session. It tells
you what the room already knows, what was deferred into this session, and what house voice
these plans use. **Deferred material from the previous session is a hard input** — if Session 1
pushed the scale taxonomy to Session 2, Session 2 owes it.

---

## Step 1 · Instructor Manual — `Chapters/CAMM_EMBS_9e_IM/Camm_EMBS_9e_IM_CH<NN>.docx`

The publisher's own teaching notes. **Read this first**, because it is the only source already
written for a teacher rather than a reader — it is where "what is this chapter actually for"
lives.

```bash
python .agents/create_lesson_html/scripts/extract.py \
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

## Step 2 · Lecture deck — `Chapters/CAMM_EMBS_9e_PPTs/Camm_EMBS_9e_PPT_CH<NN>.pptx`

The deck is what is physically on the screen, so it sets the **minute-by-minute timing**. A
timing table with wrong slide numbers is worse than no timing table.

```bash
python .agents/create_lesson_html/scripts/extract.py \
  "Chapters/CAMM_EMBS_9e_PPTs/Camm_EMBS_9e_PPT_CH02.pptx" > "$SCRATCH/ppt_ch02.txt"
grep -n '===== SLIDE' "$SCRATCH/ppt_ch02.txt"     # deck map
python .agents/create_lesson_html/scripts/extract.py \
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
(worked answers), `Practice/` (existing student HTML), `Summaries/` (weekly recaps).

---

## Step 5 · Write the plan

Only now do you write. Follow
`Lesson Plans/Session_01_2026-08-27_Course_Launch_and_Data.md` — read it before drafting; it is
the house standard.

**Sections, in order:**

1. **Header** — session number, date, course/section/room/time, textbook sections, deck path
   **with slide range**, data file paths.
2. **Objectives** — 3–5, tagged `S<n>-<n>`, each an observable student behavior.
3. **The design problem in this session** — *the section that makes these plans worth having.*
   State honestly what does not fit in the time available, do the arithmetic out loud, make a
   recommendation, and name **what to cut first if the session runs long**. A plan that pretends
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
should notice." That is [`teaching-guide.md`](../teaching-guide.md) applied to the classroom
rather than to this conversation.

### Output

Write to **`Lesson Plans/Session_<NN>_<YYYY-MM-DD>_<Title_In_Snake_Case>.html`**.

Match the house HTML style — copy the token block and layout from
`Summaries/Week_01_Summary.html`. It is written as **Artifact source**: it begins at `<title>`
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
