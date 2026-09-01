# Session 1 · Thu, Aug 27, 2026 — Course Launch & Data and Statistics

**BMGT 240IS Business Analytics** · Fall 2026 · Section 002 · CRN 23266 · Swift
**12:15–1:30 pm · JABS 215 · 75 minutes · no in-class quiz**
**Text:** Camm et al., *Essentials of Modern Business Statistics with Microsoft Excel*, 9e — **§1.1–1.3**
**Deck:** `Chapters/CAMM_EMBS_9e_PPTs/Camm_EMBS_9e_PPT_CH01.pptx` — **slides 4–14** (slides 15–25 belong to Sep 1)
**Data:** `DATAFiles/Ch01/DATAfiles/compactsuv.xlsx` · `DATAFiles/Ch01/DATAfiles/nations.xlsx`

---

## Objectives

By the end of the period a student can:

- **S1-1** Given a data table, name the elements, the variables, and the observations, and say how many of each there are.
- **S1-2** Classify a variable by scale of measurement (nominal, ordinal, interval, ratio) and decide from that whether it is categorical or quantitative.
- **S1-3** State why a variable's scale determines which arithmetic is legitimate — and give one example of an average Excel will happily compute that means nothing.
- **S1-4** Distinguish cross-sectional from time series data, and say which one a given file holds.

Plus the administrative outcome: every student knows they need MindTap access **before Thu Sep 3**, and knows where the syllabus lives.

---

## The design problem in this session

**Four things want this period and only three fit at full depth.** You have asked for a self-introduction, a 40-student icebreaker, a detailed syllabus walkthrough, and §1.1–1.3. Here is the honest arithmetic: 40 students introducing themselves with five facts each, at a realistic 45 seconds including transitions and the one student who cannot choose between Mulan and Moana, is **30 minutes** — 40% of the class. Add an 8-minute self-introduction and a 20-minute syllabus tour and there are 17 minutes left for content on the day the course's core vocabulary is introduced.

**The recommended fix is index cards, and it is better teaching, not just faster.** Students write all five items on a card at the door. The verbal round is then only **name · hometown · hero or princess** — three items, ~33 seconds each, 22 minutes. You keep the cards, which gives you day-1 attendance, the year-and-interests data you actually wanted, and a name-learning aid you will use for cold calls all semester. A verbal round of five items gives you none of that, because you cannot remember 200 facts.

The second real problem: **whatever you say only today, some of the room will not hear.** Last day to add via instructor is **Wed Sep 9**, so sessions 2 and 3 contain students who were not here. Every load-bearing administrative fact said today must be repeated on Sep 1 and posted to Canvas. Treat today's syllabus segment as the first of three passes, not the only one.

**Protect the 52–72 block.** If you run long, cut from the syllabus segment, not from content — the syllabus is posted and re-covered; the vocabulary in §1.2 is assumed by every session after this one, and the measurement-scale question is what Project 1 is graded on.

---

## Timing — recommended (index-card icebreaker)

| Min | Segment | What happens |
| --- | --- | --- |
| 0–4 | **Doors and cards** | Hand a card to each student as they come in, prompt written on the board. Seating triage — 40 enrolled, 38 seats. |
| 4–12 | **Who I am** | Your background and interests. Land the office-hours line. |
| 12–34 | **Icebreaker round-robin** | Name · hometown · superhero or Disney princess. Hard 30-second cap, visible timer. |
| 34–52 | **The syllabus — what will actually cost you points** | Seven items, in the order below. Not a page-by-page read. |
| **52–72** | **§1.1–1.3 — Data and Statistics** ← *protected* | The hook demo, the vocabulary, the scale taxonomy, cross-sectional vs time series. |
| 72–75 | **Close** | Assignment, MindTap warning, Sep 1 preview. |

Sums to 75. Slack is deliberately zero in the icebreaker and borrowed back at 34 if the round runs fast.

### Alternative timing — full five-item verbal round

Use this only if you would rather have the full verbal round than the content block. It costs you the scale taxonomy, which then has to be squeezed into Sep 1 on top of §1.4–1.9 *and* the ToolPak lab — a session that is already full.

| Min | Segment |
| --- | --- |
| 0–3 | Doors and settle |
| 3–11 | Who I am |
| 11–41 | Icebreaker — all five items, 45 sec each |
| 41–55 | Syllabus — items 1–4 only, rest deferred to Sep 1 |
| 55–72 | §1.1–1.2 hook and vocabulary only; **scales deferred to Sep 1** |
| 72–75 | Close |

---

## Segment 1 · Who I am (4–12)

Your background, from the Canvas overview page: M.S. in Computer Science and a Graduate Certificate in Artificial Intelligence from MSU (2023), B.A. in Computer Science with a Mathematics minor (2019), also MSU, and seven years working as a software engineer.

Two things worth saying out loud beyond the résumé:

> "I am a software engineer, not a statistician by training. That matters for how this course runs: I care less about whether you can derive a formula than whether you can look at output and tell me whether to trust it. That is the actual job."

> "Office hours are Thursdays, 1:45 to 2:45, JABS 250G — which is fifteen minutes after this class ends, today included. If something in the first week is confusing, you do not have to wait a week."

The second line is worth real time. Day-1 office hours attendance is nearly zero unless you point out that the door is open in fifteen minutes.

---

## Segment 2 · The icebreaker (12–34)

**Card prompt — write on the board before the doors open:**

```
On the card, please write:
  1. Your name (and what you want to be called)
  2. Year / class standing
  3. Hometown
  4. An interest outside of school
  5. Favorite superhero OR Disney princess
```

**Then, out loud, only items 1, 3, and 5.** Say the constraint before you start, or the round will drift:

> "Three things out loud — name, hometown, and your hero or princess. Everything else is on the card and I will read all forty of them tonight. Thirty seconds each, and I am going to be rude about it, because if I am not, we spend half of our first class on this."

**Running it:**

- Start with yourself as the model, at exactly the length you want theirs to be. The first student copies whatever you just did — if your example runs 90 seconds, all forty will.
- Go by physical row, not by roster. Faster, and it does not out anyone whose roster name is not the name they use.
- Put a visible timer on the projector. It does the disciplining so you do not have to.
- **Write nothing down during the round.** You have the cards. Looking down breaks the pace and you will not keep up anyway.

**Failure modes, most frequent first:**

| What happens | What to do |
| --- | --- |
| Round is running long — you are at student 20 at minute 26 | Switch to name + hero only for the remainder. Say you are doing it: *"I am cutting hometown to keep us on time."* |
| A student freezes on the hero question | *"Pass — come back to me,"* and move on immediately. Never let the room watch someone struggle. |
| Answers get competitive and long as students riff | Reset once, cheerfully: *"Love it. Thirty seconds, though."* One reset works; three does not. |
| Late arrivals during the round | Hand them a card, let them go at the end. Do not restart or backtrack. |
| A student is plainly unwilling to speak | Let them hand in the card only. Do not press it on day one. |

**Collect the cards before the syllabus segment.** They are your attendance record for today — cross-reference against `Attendance/BMGT_240IS_Attendance.xlsx` after class, and note that with 40 enrolled and 2 waitlisted, the roster will still move until Sep 9.

---

## Segment 3 · The syllabus — seven things that will cost you points (34–52)

Do **not** read the syllabus. Say this instead:

> "The syllabus is posted and you are responsible for all of it. I am going to spend fifteen minutes on the seven things that, based on how courses like this actually go, are most likely to cost you points if you do not hear them from me now."

1. **MindTap is required and it is where every quiz lives.** Access includes the eBook, so there is no separate book to buy. **First MindTap work — Chapter 1 — is due Thu Sep 3 at 11:59 pm MT.** Get access this weekend. A late purchase is not an excused deadline.
2. **Eleven quizzes, eleven chapter assignments. Lowest quiz dropped, best ten assignments count.** Say the consequence explicitly: *"Those drops are the make-up policy. They exist to cover illness, travel, and a bad week — which is why there are no make-ups and no individually excused deadlines. MindTap enforces the clock, not me."*
3. **Project submission is two steps and the second one is gated.** Files to Canvas › Assignments first; the project quiz then opens *conditional on that upload*. Missing or wrong files reduce or zero the quiz. **Late project work is not accepted** — the window shuts at the start of class. This is the single mechanic students most often get wrong; you will repeat it before every project deadline.
4. **The midterm on Oct 15 is the only exam, and it is 25% of the grade. There is no final exam.** Your final exam period is Final Project presentations — required attendance, and graded. Students plan flights around a final exam that does not exist; say this twice.
5. **The Final Project is a team of four, and multiple regression is required.** Teams form in class **Thu Oct 22**. Proposal Nov 17 · report Dec 8 · presentation Dec 10 or finals week. Peer evaluation moves an individual score by up to ±10%.
6. **AI is permitted for learning and not for producing submitted work.** Explaining a concept, decoding an Excel error, debugging a formula you wrote — fine. Generating your analysis, interpretation, or report — misconduct. Every project needs a disclosure, and *"you must be able to explain, in your own words, every number and sentence you turn in. I do ask."*
7. **Excel desktop with the Analysis ToolPak. The browser version will not run what we need.** Free through MSU Microsoft 365, and we set it up together on Sep 1 — bring a laptop that day.

Close the segment with the two facts students most often learn too late:

> "One thousand points, and they are not rounded across a boundary — 929 points is an A−. And this is a **new textbook this year**, so chapter numbers do not match older editions or any notes you find from a previous semester. Use the section numbers in the schedule."

**If you are behind schedule, cut items 5 and 6 here** — both get a full treatment later (Oct 22 for teams, and before every project for AI disclosure). Never cut items 1 or 3.

---

## Segment 4 · §1.1–1.3 Data and Statistics (52–72) — *protected*

> **Expanded version:** `Session_01_Segment4_CompactSUV_Walkthrough.md` teaches this whole segment
> on `compactsuv.xlsx` — minute-by-minute, with the §1.1 business framing, the manufactured
> `Recommended` variable, and the §1.3 provenance table. Use that in the room; this section is the
> summary.

Deck slides **4–14**. Twenty minutes, and the shape is: hook, vocabulary, taxonomy, one contrast.

### The hook — predict, then run (52–57)

Open `DATAFiles/Ch01/DATAfiles/compactsuv.xlsx` — 15 compact SUVs, 6 variables. Project it. Point at the **Owner Satisfaction** column: `+`, `++`, `0`, `-`.

Ask for a prediction *before* typing anything:

> "I want to know the average owner satisfaction of a compact SUV. Before I do anything — what do you think Excel is going to tell me?"

Take two or three answers. Someone will say it cannot be done; someone will say zero; someone will say it will error. Then type it in front of them:

```excel
=AVERAGE(E2:E16)      →  0
=COUNT(E2:E16)        →  7
=COUNTA(E2:E16)       →  15
```

**Let the discrepancy sit for a beat before you explain it.** Then:

> "Excel just told me the average owner satisfaction is zero. It did not warn me, it did not error, it gave me a clean number. And it computed that number from **seven** of my fifteen cars — because seven of those cells hold the number zero and the other eight hold text, and AVERAGE silently throws text away. Nothing in Excel will ever tell you that happened. `COUNT` versus `COUNTA` is the only reason we know."

This is the course's through-line in its first thirty seconds: **what can I responsibly conclude from imperfect data?** Say that sentence out loud and tell them it is the question the whole semester asks.

### The vocabulary — the slide to photograph (57–62)

Deck slides 6–7. On `compactsuv.xlsx`:

- **Element** — the thing measured. Here, a vehicle. **15 of them.**
- **Variable** — a characteristic measured on each element. **6 of them:** Make, Overall Score, Recommended, Owner Satisfaction, Overall MPG, Acceleration. (`Model` is the observation *label*, not a variable — the book's convention, IM ¶208–211.)
- **Observation** — the full set of measurements for one element. **One row. 15 observations.**
- **Data set** — all of it. 15 × 6 = **90 measurements.**

Tell them to photograph this. Then the payoff line:

> "Every dataset for the rest of this course looks exactly like this. Rows are the things, columns are what you measured about them. When a dataset confuses you in November, the first question is always: what is one row?"

Deck slide 7 is the 60-nation table from `nations.xlsx` — use it as the second instance so the vocabulary is not tied to one file. 60 elements, 4 variables, 60 observations.

### The taxonomy, and the arithmetic it licenses (62–68)

Deck slides 8–10. Build the four scales *up* from the hook rather than presenting them as a list. The decision rule matters more than the definitions:

| Scale | You can tell… | Legal arithmetic | In our two files |
| --- | --- | --- | --- |
| **Nominal** | only that two things differ | count, mode | `Make`; `Recommended` (Yes/No); `WTO Status` (57 Member, 3 Observer) |
| **Ordinal** | which is more | + median, ranks | `Owner Satisfaction` (`-` < `0` < `+` < `++`); `Fitch Rating` (16 grades, B− to AAA) |
| **Interval** | how much more | + mean, differences | `Overall Score` — 50 to 84 |
| **Ratio** | how many times more | + ratios | `Overall MPG`; `Acceleration`; `Per Capita GDP` ($798 to $87,097) |

Then **pose two questions and do not resolve them quickly.** These are the genuinely arguable cases and the room should argue:

1. *`Fitch Rating` has sixteen levels from B− to AAA. What is the average credit rating of these 60 nations?* Let them try. The answer is that ordinal data has a median, not a mean — the gap between AAA and AA+ is not the same size as the gap between B and B−, and you do not know what it is. **Callback:** tell them you are deliberately leaving open whether mean or median is the right summary, and that Sep 15 (§3.1) settles it.
2. *`Overall Score` runs 50 to 84. Is a car scoring 84 twice as good as one scoring 42?* No — and that is exactly the interval/ratio line. Zero on this scale is a Consumer Reports convention, not an absence of quality.

Be honest that the boundary is contested:

> "Whether you may average an ordinal scale is a real argument among people who do this for a living, not a settled rule I am hiding from you. Survey researchers average five-point scales constantly. This course's position is that you may do it if you say out loud that you did it and why — which is a sentence you will write in Project 1."

### Cross-sectional versus time series (68–72)

Deck slide 11. Two files, side by side:

- `nations.xlsx` — 60 nations, all measured at **one point in time**. **Cross-sectional.**
- `DATAFiles/Ch02/DATAfiles/gdp_years.xlsx` — 30 countries × 6 years of GDP. Ask: *"Which is this?"*

The answer is worth the ambiguity: **read a row and it is time series; read a column and it is cross-sectional; it is actually panel data, and it is both.** The point is not the label — it is that *the same file supports different questions depending on which direction you read it*, and that you must know which one you are asking.

> "The reason this distinction matters is not vocabulary. It is that a chart which is honest for one of these is misleading for the other, and we start making those charts on Sep 8."

**Consciously deferred to reading:** §1.3's treatment of data sources, observational versus experimental studies, and the cost of data acquisition (deck slides 12–14). Say the deferral rather than skipping it silently: *"§1.3 is three pages on where data comes from and what it costs to get. It is on you to read it, and it comes back when you have to find your own data for the Final Project."*

---

## Misconceptions to head off

1. **"Categorical means text, quantitative means numbers."** The most common and most damaging error, and today's data refutes it directly: `Owner Satisfaction` contains the *number* `0` and is ordinal, not quantitative. A zip code is a number and is nominal. A jersey number is a number and is nominal. **The correction: it is not about what the cell contains, it is about what arithmetic on it would mean.**
2. **"If Excel gives me a number, the number is meaningful."** Killed on purpose in the first five minutes with `=AVERAGE(E2:E16)` → `0`. Refer back to this every time someone accepts output uncritically for the rest of the semester.
3. **"Statistics is about calculation."** The syllabus rubric says otherwise — written interpretation is worth **45 of 100** on Projects 1 and 2, more than correct analysis at 40. Say the number out loud today: *"Interpretation outweighs computation in this course's grading, deliberately. By December you will produce a regression output in forty seconds; the whole game is what you say next."*
4. **"There's a final exam."** There is not. The final exam period is presentations. Expect to correct this in December regardless of how clearly you say it today.

---

## Assignment before Tue Sep 1

- **Read §1.1–1.3** if you have not, and **§1.4–1.9** for Tuesday.
- **Get MindTap access this weekend.** MindTap **Chapter 1** is due **Thu Sep 3, 11:59 pm MT** — the first graded item in the course.
- **Bring a laptop Tuesday** with **Excel desktop** installed. We enable the Analysis ToolPak together, and the browser version will not do it. If a laptop is a problem, email me before Tuesday and we solve it quietly.
- Read the syllabus in full. Bring questions Tuesday; that is a better use of your time than reading it to you was.

---

## Prep checklist — before 12:15 today

- [ ] Print **45** index cards — 40 enrolled, 2 waitlisted, plus slack for adds and one student who ruins a card.
- [ ] Write the five-item card prompt on the board.
- [ ] Open and test on the room projector, in this order: `compactsuv.xlsx`, `nations.xlsx`, `gdp_years.xlsx`, then `Camm_EMBS_9e_PPT_CH01.pptx` at slide 4.
- [ ] **Run `=AVERAGE(E2:E16)`, `=COUNT`, and `=COUNTA` on the room machine before class** and confirm you get `0`, `7`, `15`. The whole hook depends on it.
- [ ] Increase Excel's font/zoom to something readable from the back of JABS 215.
- [ ] Have a visible countdown timer ready for the icebreaker.
- [ ] Confirm 40 usable seats, or know where the extra two students sit.
- [ ] Have the Canvas syllabus page and the course overview page open in tabs — point at them rather than describing them.
- [ ] Note today's date on `Attendance/BMGT_240IS_Attendance.xlsx`; the cards are the day-1 record.

---

## Forward pointers set up today

| Set up today | Paid off |
| --- | --- |
| "Can you average `Fitch Rating`?" left deliberately unresolved | **Tue Sep 15** — §3.1, mean vs median vs mode |
| `=AVERAGE(E2:E16)` → `0`: Excel does not warn you | Every lab; explicitly again **Thu Sep 17** with outliers |
| "A chart honest for one data type misleads for the other" | **Tue Sep 8** — §2.2 histograms and skewness |
| Reading `gdp_years.xlsx` two directions asks two questions | **Thu Sep 10** — §2.3–2.5, crosstabs and Simpson's paradox |
| Through-line: *what can I responsibly conclude from imperfect data?* | Restated at the top of every unit |
