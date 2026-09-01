# Session 1 · Segment 4 — §1.1–1.3 taught on `compactsuv.xlsx`

Companion to `Session_01_2026-08-27_Course_Launch_and_Data.md`. Replaces that plan's
Segment 4. **20 minutes**, minutes 52–72.

**Data:** `DATAFiles/Ch01/DATAfiles/compactsuv.xlsx` — 15 compact SUVs, one sheet (`Data`), range `A1:G16`.

---

## Before you start — one thing to know

`compactsuv.xlsx` is **not** a lecture example in this textbook. It is end-of-chapter exercise
data; it appears nowhere in the Chapter 1 instructor manual. The book's §1.2 vehicle is
`nations.xlsx`, and **deck slides 7–11 all show the nations table.**

So you have a choice, and you should make it before class rather than in front of the room:

- **Recommended: don't project slides 7–11.** Teach the whole segment live in Excel on the SUV
  table and use the deck only for slides 4–6 and 12–14. The vocabulary is identical, the table is
  richer, and live Excel is more convincing than a static slide.
- Or project the slides and bridge explicitly each time — *"the book does this with 60 nations;
  we're doing it with 15 SUVs because you can hold 15 in your head."*

Silently mixing them is the one bad option: students will try to reconcile two datasets and
think they missed something.

---

## The variable count — decide this now

Unlike nations, the book gives no stated count for this file, and the answer is genuinely
ambiguous because **two** columns look like identifiers. The book's own convention
(IM ¶208–211, deck slide 19) is that identifier columns are *labels*, not variables.

`Model` alone is unique across all 15 rows, so it can carry the identifier role by itself. That
leaves `Make` free to be what it actually is — a nominal variable, and a real one, since
**Volkswagen and Jeep each appear twice (13 distinct makes across 15 vehicles).**

**Teach it as: 15 elements · 6 variables · 15 observations · 90 data values.**

Treating `Make` as part of the identifier (5 variables, 75 values) is also defensible. Either is
fine. **Saying one and then contradicting it later is not** — pick one, write it on the board,
and keep it.

---

## Timing within the segment

| Min | Beat | What happens |
| --- | --- | --- |
| 52–55 | **§1.1** — why anyone made this table | The business decision, framed as a job |
| 55–60 | **§1.2** — the hook | `=AVERAGE(E2:E16)` and what Excel does not tell you |
| 60–64 | **§1.2** — vocabulary | Element, variable, observation, data set, on screen |
| 64–69 | **§1.2** — the four scales | Built up from the hook, with two arguable cases |
| 69–71 | **§1.2** — cross-sectional vs time series | One question, one honest answer |
| 71–72 | **§1.3** — where did this come from? | The best thing in the file |

---

## §1.1 · Why anyone built this table (52–55)

Open the file. Don't explain it yet. Give them a job:

> "You work for Ford. That's your row — the Escape. Overall score 69, and you are Recommended,
> which is good. Now look at the two rows above you and the row below you. What do you do on
> Monday?"

Let two or three people answer. Then raise the stakes with the row that makes the point:

> "Now you work for Chevrolet. The Equinox gets **31 miles per gallon** — the best fuel economy
> of any vehicle on this list, and the class average is 24. You beat everybody. And you are
> **not recommended.** What happened?"

Nobody can answer that from this table, and that is the point. §1.1 is the book's list of where
statistics gets used — accounting, finance, marketing, production, economics. You do not need to
read the list. You need them to see that **a table like this one drives a real decision, and that
reading it wrong costs money.**

Hold the Equinox question open. You come back to it in the scales beat.

---

## §1.2 · The hook — predict, then run (55–60)

Point at column E, `Owner Satisfaction`: `+`, `++`, `0`, `-`.

> "Simple question. What is the average owner satisfaction of a compact SUV? Before I touch
> anything — what is Excel going to say?"

Take two or three predictions. Someone says it will error, someone says zero, someone says it
can't be done. Then type all three, in this order:

```excel
=AVERAGE(E2:E16)      →  0
=COUNT(E2:E16)        →  7
=COUNTA(E2:E16)       →  15
```

**Say nothing for a beat.** Let them look at it. Then:

> "Excel says the average owner satisfaction is zero. No warning, no error, a clean number. And
> it built that number out of **seven** of my fifteen cars — because seven of those cells hold the
> *number* zero and the other eight hold text, and AVERAGE throws text away without telling you.
> `COUNT` says 7. `COUNTA` says 15. That gap is the only reason we know anything went wrong."

Then name the course:

> "That is this course, in one formula. Not *how do I compute things* — Excel computes things.
> **What can I responsibly conclude from imperfect data?** That question is the whole semester."

**Optional 30-second contrast, if you have it open:** in `nations.xlsx`,
`=AVERAGE(D2:D61)` on `Fitch Rating` returns `#DIV/0!` — that column is *entirely* text, so Excel
refuses out loud. Same illegal operation, two behaviours. **The dangerous one is the one that
doesn't error.**

---

## §1.2 · The vocabulary (60–64)

On screen, pointing at the actual table. This is the slide to photograph.

| Term | Here | Count |
| --- | --- | --- |
| **Element** | one vehicle | **15** |
| **Variable** | a characteristic measured on each vehicle | **6** — Make, Overall Score, Recommended, Owner Satisfaction, Overall MPG, Acceleration |
| **Observation** | one row — everything known about one vehicle | **15** |
| **Data set** | all of it | 15 × 6 = **90** measurements |

`Model` is the observation label — the name of the row, not a measurement of it.

Read one observation out loud, the way the IM does it for Armenia:

> "The first observation is the Forester: Subaru, 84, Yes, plus, 26, 8.7. Six measurements. That
> is what an observation *is* — not a number, a row."

Then the line that pays off in November:

> "Every dataset in this course looks exactly like this. Rows are the things you're studying,
> columns are what you measured about them. When a file confuses you in week twelve, the first
> question is always: **what is one row?**"

---

## §1.2 · The four scales, built up from the hook (64–69)

Don't present a taxonomy and then find examples. Go the other way — you already have the
evidence on screen.

> "So we can't average column E. We *can* average column F. What's actually different about
> them? It isn't that one has text — let's find the real rule."

| Scale | You can tell… | Legal here | In this table |
| --- | --- | --- | --- |
| **Nominal** | only that two things differ | count, mode | `Make` (13 distinct); `Recommended` (**Yes 7 · No 8**) |
| **Ordinal** | which is more, not how much more | + median, ranks | `Owner Satisfaction` (`-` < `0` < `+` < `++`) → **median `0`, mode `0` (n=7)** |
| **Interval** | how much more | + mean, differences | `Overall Score` (**50–84, mean 67.3**) |
| **Ratio** | how many times more | + ratios | `Overall MPG` (**21–31**); `Acceleration` (**7.2–10.9 sec**) |

Then the two cases worth arguing about. **Pose them, let the room fight, don't rush the answer.**

**1. Is `Overall Score` interval or ratio?** It runs 50 to 84. Is the Forester at 84 "twice as
good" as a hypothetical car at 42?

No — and this is exactly where the interval/ratio line lives. Zero on this scale is a Consumer
Reports convention, not the absence of quality. Differences are meaningful; ratios are not.

**2. Here is the Equinox answer, and it is better than a definition.**

> "The Equinox has the best MPG in the set and scores 63. The GMC Terrain has the best
> acceleration — 7.2 seconds, everyone else is over 8 — and scores 57. Both are *not
> recommended.* So `Overall Score` is not built out of the columns next to it, or at least not
> mostly. It's a **composite** somebody constructed, weighting things we cannot see from here.
> Which means I can compare two scores, and I cannot tell you what a score *is*."

**3. The one they'll miss: `Recommended` is manufactured.** Sort by `Overall Score` and read
column D down the page. It flips exactly once:

- every **Yes** scores 69 or above — 69, 71, 71, 73, 81, 83, 84
- every **No** scores 67 or below — 50, 55, 57, 57, 63, 63, 65, 67

> "`Recommended` isn't an extra fact about these cars. It's a *threshold on a column we already
> have* — somebody drew a line around 68 and everything above it gets a badge. Two questions.
> Who chose 68? And if you're the Hyundai Tucson at 57, does it matter to you whether the line
> was 68 or 55?"

That is the §1.2 point students actually need: **a categorical variable can be manufactured out of
a quantitative one, and the cut point is a human decision with consequences.** It comes back on
Sep 8 when they choose histogram class intervals and discover the bins change the story.

**Misconception to kill here, explicitly:** *categorical means text, quantitative means numbers.*
This table refutes it twice — `Owner Satisfaction` contains the number `0` and is ordinal;
`Recommended` is text and is a direct restatement of a number. It is never about what the cell
contains. **It is about what arithmetic on it would mean.**

---

## §1.2 · Cross-sectional vs time series (69–71)

> "When were these cars measured?"

All at once, one model year → **cross-sectional.** Fifteen different elements, one moment.

This file cannot show you the contrast, so say so and show it from elsewhere —
`DATAFiles/Ch02/DATAfiles/gdp_years.xlsx`, 30 countries × 6 years. Ask which it is. The honest
answer: **read a row and it's time series, read a column and it's cross-sectional; it's panel
data and it's both.** The label matters less than knowing which direction your question runs.

> "This matters because a chart that's honest for one of these is misleading for the other, and
> we start making those charts on Sep 8."

---

## §1.3 · Where did this table come from? (71–72)

**This is the strongest thing in the file, and it's worth protecting even if you're over time.**
The book's §1.3 lists three ways to get data — existing sources, observational study, experiment.
Most datasets illustrate one. **This one contains all three, side by side:**

| Column | How it was obtained | Book's category |
| --- | --- | --- |
| `Overall MPG`, `Acceleration` | Consumer Reports drove the cars on a test track under controlled conditions | **experiment** / controlled measurement |
| `Owner Satisfaction` | they surveyed people who own one | **observational study** — a survey |
| `Overall Score` | CR combined the above using weights of their own choosing | a constructed **composite** |
| `Recommended` | a threshold applied to `Overall Score` | **derived** from another column |

> "Four columns, four different kinds of knowing. The 0-to-60 time is a stopwatch on a test
> track — measure it again and you'll get 8.7 again. The satisfaction column is people's
> *opinions*, collected from whoever answered. And 'Recommended' isn't a measurement at all;
> it's a decision. All four sit in the same table, formatted identically, and Excel treats them
> exactly the same. **Nothing about a spreadsheet tells you which is which. That's your job.**"

If you have thirty seconds more, land §1.3's data-errors bullet:

> "And when nobody checks — you get errors nobody catches. Ask me about Costa Rica on Tuesday."

*(That's the setup for the three real data errors in `nations.xlsx`: the corrupted
`CoStable Rica`, South Korea's GDP wrong by 17×, and Cape Verde's GDP copied from Canada. They're
documented on the `Summary` sheet of `nations_with_summary.xlsx` with live `MATCH` formulas
locating each one. Good Sep 1 opener.)*

**Consciously deferred to reading:** the rest of §1.3 — the catalogue of existing data sources
(¶150–155) and the full observational-vs-experiment treatment. Say the deferral out loud:
*"§1.3 has three pages on where data comes from and what it costs to get. Read it. It comes back
when you have to find your own data for the final project."*

---

## If you run short

Cut in this order:

1. The `gdp_years.xlsx` time-series contrast — say "cross-sectional, and we'll meet the
   alternative Tuesday" and move on. **Saves 2 min.**
2. The `Overall Score` interval-vs-ratio argument. **Saves 2 min.**
3. The `nations.xlsx` `#DIV/0!` contrast. **Saves 1 min.**

**Never cut:** the `=AVERAGE(E2:E16)` hook, the vocabulary table, or the §1.3 provenance table.
Those three are what the rest of the course stands on.

---

## Prep — 3 minutes

- [ ] Open `compactsuv.xlsx`, go to a blank cell (e.g. `I2`), and **run the three formulas now** to
      confirm `0`, `7`, `15`. Delete them before class so the reveal is live.
- [ ] Zoom to ~150% so column E is readable from the back of JABS 215.
- [ ] Decide: 6 variables or 5. Write it on the board.
- [ ] Have `gdp_years.xlsx` open in a second window (skip if cutting that beat).
- [ ] Know where the Equinox row is (row 12) and the GMC Terrain (row 14) so you can point
      without hunting.
