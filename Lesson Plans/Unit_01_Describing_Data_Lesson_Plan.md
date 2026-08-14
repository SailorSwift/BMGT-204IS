# Unit 1 · Describing Data — Instructor Lesson Plan

**BMGT 240IS · Fall 2026 · Section 002 · Xuying W. Swift**
Doane & Seward, *Applied Statistics in Business and Economics*, 7e — Chapters 1–4
Seven meetings: **Thu Aug 27 → Thu Sep 17, 2026** · JABS 215 · TR 12:15–1:30 pm (75 min)

---

## 1. The Unit at a Glance

| # | Date | Topic | Ch | Format | Due |
| --- | --- | --- | --- | --- | --- |
| 1 | Thu, Aug 27 | Course overview; what analytics is and is not | 1 | Lecture + discussion | — |
| 2 | Tue, Sep 1 | Data types, measurement scales, sampling | 2 | Lecture + **Lab** (setup) | — |
| 3 | Thu, Sep 3 | Cleaning a real dataset | 2 | **Lab** | Quiz 1 |
| 4 | Tue, Sep 8 | Describing data visually; how charts mislead | 3 | Lecture + demo | — |
| 5 | Thu, Sep 10 | PivotTables and charts | 3 | **Lab** | Quiz 2 |
| 6 | Tue, Sep 15 | Center, variability, shape | 4 | Lecture + demo | — |
| 7 | Thu, Sep 17 | Standardization, outliers, boxplots | 4 | Lecture + **Lab** | Quiz 3 · **SP1 assigned** |

### The unit's through-line

One question, asked seven times in progressively sharper form: **what can I honestly say about a dataset I did not create?**

- Sessions 1–2 establish that the answer depends on *where the data came from*.
- Session 3 establishes that it depends on *what condition the data is in*.
- Sessions 4–5 answer it with a picture.
- Sessions 6–7 answer it with a number.

Say this out loud in session 1 and refer back to it at the top of each session. Students who see Unit 1 as "four unrelated chapters of vocabulary" disengage by week 3; students who see it as one escalating question do not.

### Unit learning outcomes

By Sep 17 a student should be able to:

1. **U1-A** Classify a variable by type (categorical / discrete numerical / continuous numerical), by structure (cross-sectional / time series), and by measurement level (nominal / ordinal / interval / ratio) — and say what each classification licenses them to compute.
2. **U1-B** Name the sampling method behind a dataset, and identify the specific bias it is vulnerable to.
3. **U1-C** Take a messy Excel file and produce a clean, documented, analysis-ready table.
4. **U1-D** Choose the right chart for a variable-and-question pair, build it in Excel, and defend the choice.
5. **U1-E** Identify at least four ways a chart can mislead, and repair one.
6. **U1-F** Compute and — more importantly — *interpret* measures of center, variability, and shape, and know when the mean is the wrong answer.
7. **U1-G** Standardize an observation, flag outliers by a stated rule, and read a boxplot.
8. **U1-H** Write two sentences a manager could act on, given any of the above.

Maps to syllabus Objective 1 (gather, clean, describe, summarize in Excel) and Objective 8 (quantitative reasoning). Assessed by Quizzes 1–3, Small Project 1, Exam 1.

### Materials inventory (already in this repo)

| Session | Deck | Data |
| --- | --- | --- |
| 1 | `Chapters/CHAPTER1/Chap01_PPT.pptx` | `CHAPTER1/Examples/Apple.xlsx`, `Exercises/NoodlesSalad.xlsx`, `Exercises/NoodlesSqFt.xlsx` |
| 2 | `Chapters/CHAPTER2/Chap02_PPT.pptx` + `Learning Stats/Unit_01_Overview_of_Statistics/01-01…01-03` | `CHAPTER2/Examples/SmallData.xlsx`, `Exercises/RandBetween.xlsx`, `Exercises/PickEight.xlsx` |
| 3 | Chap02 deck, slides 41–49 | `CHAPTER2/Examples/CEOComp.xlsx`, `Examples/Bankruptcies.xlsx`, `Exercises/LateShow.xlsx` |
| 4 | `Chapters/CHAPTER3/Chap03_PPT.pptx` | `CHAPTER3/Examples/` — `PERatios`, `BirthLife`, `Concessions`, `Instagram`, `ScatterPlots`, `Recessions` |
| 5 | Chap03 deck, slides 39–50 | `CHAPTER3/Examples/PivotTable.xlsx`, `Examples/Taxes.xlsx`, `Exercises/Homes.xlsx` |
| 6 | `Chapters/CHAPTER4/Chap04_PPT.pptx` | `CHAPTER4/Examples/` — `GPASurvey`, `JetBlue`, `PERatios`, `DJIA` |
| 7 | Chap04 deck, slides 30–47 | `CHAPTER4/Examples/Vehicles.xlsx`, `Examples/VailGuestSat.xlsx`, `Examples/StockPrices.xlsx` |

**Prep note:** delete the `~$*.pptx` and `~$*.xlsx` lock files in `Chapters/` before posting anything to Canvas — those are Office temp artifacts from an open file, not content.

### Two calendar realities to plan around

- **Roster churn.** Sep 1 is the last day to self-add; Sep 9 the last day to add via instructor and to self-drop; Sep 16 the last day to drop without a "W." Sessions 2 and 3 will contain students who missed session 1. Budget two minutes at the top of each for a genuine catch-up pointer, and do not form any durable groups before Sep 15.
- **The course is over-enrolled** (40 in a 38-seat room, 2 waitlisted). Verify seating and power outlets in JABS 215 before session 2, since half of these meetings are laptop labs. If outlets are short, tell students on day 1 to arrive charged.

---

## Session 1 · Thu, Aug 27 — Course Overview and What Statistics Is For

**Chapter 1 · Deck: `Chap01_PPT.pptx` · Not a lab, but bring the projector workbook**

### Objectives

Students will be able to: state how the course is graded and when things are due (S1-1); give one concrete business decision improved by data and one damaged by its misuse (S1-2); name three logical pitfalls and spot them in a claim (S1-3).

### Why this session matters more than it looks

This is the only session where you set expectations before anyone has a grade to be anxious about. Two things need to land: **interpretation is the graded skill**, and **the lowest quiz is dropped, so there are no make-ups**. Every make-up request you field in November traces back to a student who did not hear that on August 27.

### Timing

| Min | Segment | What happens |
| --- | --- | --- |
| 0–5 | **Arrival hook** | Chart on screen as students walk in, no commentary. Suggested: a truncated-axis chart from Chap03 slides 44–50. Let them look at it. |
| 5–8 | Welcome, name, pronouns | Model the syllabus's name/pronoun policy by doing it yourself. |
| 8–13 | **Open with the hook** | "What does this chart want you to believe? What does the data actually say?" Take three answers, do not resolve it. Say: "We come back to this on September 8." |
| 13–35 | **Syllabus walkthrough** | See script below. 22 minutes, not 40. |
| 35–45 | Why study statistics (slides 3–12) | Compress. Pick two motivations, not six. |
| 45–57 | Applying statistics in business (13–17) + Analytics in Action (37–41) | Anchor on a business function students recognize: pricing, staffing, quality. |
| 57–68 | **Logical pitfalls** (26–32) + practice slides 33–36 | The high-value block. Run as think-pair-share. |
| 68–73 | Ethics and communicating with numbers (20–25) | Short. Tie to the AI policy already covered. |
| 73–75 | Close + assignment | Preview session 2, state the laptop requirement, give the Excel pre-check. |

### Syllabus walkthrough script (22 min)

Do not read the syllabus aloud. Cover exactly these six items, then point to the document for everything else.

1. **The shape of the week** (2 min) — Tuesday introduces, Thursday quizzes then practices. Everything due Tuesday; every quiz Thursday. "You should never have to hunt for what's due."
2. **Grade weights** (3 min) — put the 1000-point table on screen. Emphasize: quizzes 20%, final exam 25%. Note explicitly that **929 points is an A−** and is not rounded.
3. **The quiz drop is the make-up policy** (3 min) — 11 given, best 10 count. Say the consequence plainly: no make-ups, no individual excuses. Invite students with known recurring conflicts (athletics, Guard drill) to see you *this week*.
4. **Where the points actually are on projects** (5 min) — show the SP rubric: 30 correctness, 35 interpretation, 10 reproducibility. Say the line from the syllabus out loud: *a correct number with no business meaning attached earns partial credit at best.* This is the single most useful sentence of the day.
5. **The AI policy** (5 min) — permitted for learning, not for producing submitted work; two conditions are disclosure and the explanation standard. Then give the reason, not just the rule: the skill this course certifies is judging whether output is trustworthy, and that is precisely the skill lost by letting a model produce output unexamined. Say "I do ask" and mean it.
6. **Laptop + Excel desktop with the Analysis ToolPak** (4 min) — free through MSU Microsoft 365; **the browser version will not work**. Do not let anyone spend the week fighting installation alone — we set it up together on Tuesday.

Skip in class, point to in the document: late-work percentages, incomplete grades, FERPA, the full date table.

### Core content

**Statistics as a discipline** (slides 4–7). The definition that sticks is not the textbook one; it is: *statistics is the science of turning data into a defensible claim.* "Defensible" is the operative word — the whole course is about what makes a claim survive challenge.

**Descriptive vs. inferential** — introduce here as the map of the semester. Units 1 is describing what you have; Units 3–4 are claiming something about what you don't. Draw it once on the board; students refer to that drawing all term.

**Statistical challenges and imperfect data** (slides 18–19). This is worth real time because it pre-empts a complaint you will otherwise hear all semester: "this dataset is messy." Yes. That is the job.

### Discussion block: Logical Pitfalls (11 min)

Run slides 27–32 as think-pair-share rather than lecture. Give each claim, 30 seconds silent, 60 seconds pairs, then take answers.

| Claim to put on screen | The pitfall | What to draw out |
| --- | --- | --- |
| "Ice cream sales and drowning deaths rise together, so ice cream is dangerous." | Correlation ≠ causation (confounding: summer) | Ask for the lurking variable *before* naming it. |
| "Our new website launched in March and Q2 sales were up 12%, so the site worked." | Post hoc ergo propter hoc | Ask: what else happened in Q2? |
| "I surveyed my 40 followers and 85% prefer our brand." | Unrepresentative sample | Plant the seed for session 2. |
| "Sales are up 300%!" (from 1 unit to 4) | Small-base percentage / missing denominator | Best one for a business audience. |
| "This drug is 99% effective" (no control group) | Missing comparison | Introduces the idea of a baseline. |

**Closing question for the block:** "Which of these have you personally seen used in an ad or a headline this month?" Their examples are better than yours, and this is the moment the room decides whether this course is about them.

### Common misconceptions to head off

- *"Statistics is math."* It uses arithmetic; the hard part is judgment. Say this on day 1 to the students who have already decided they are bad at this.
- *"More data is always better."* A million rows of biased data is a million rows of wrong. Session 2 makes this concrete.
- *"The computer will tell me the answer."* Excel will tell them a number. Which number to ask for, and what it means, is the course.

### Assignment before Tue Sep 1

1. Read Ch 1 (optional — textbook is recommended, not required) and Ch 2 §2.1–2.3.
2. **Required, 10 minutes:** install Excel desktop from MSU Microsoft 365 and confirm the **Analysis ToolPak** loads. Post a screenshot of the Data tab showing "Data Analysis" to the Canvas check-in. This is not graded; it is so you know who to help on Tuesday.
3. Bring a laptop, charged.

### Exit ticket (last 2 min, index card)

> "Name one decision you or someone you know made in the last month that data could have improved."

Read these before Tuesday. They give you the business contexts to reference for the whole semester, and they tell you who is already thinking like an analyst.

---

## Session 2 · Tue, Sep 1 — Data Types, Measurement Scales, Sampling · **Lab: Excel setup**

**Chapter 2 · Deck: `Chap02_PPT.pptx` slides 3–40 · Supplements: `Learning Stats/Unit_01_Overview_of_Statistics/01-01 Excel for PC.pptx`, `01-02 Excel for Mac.pptx`, `01-03 Excel Tips.pptx`**

### Objectives

U1-A and U1-B, plus: Analysis ToolPak installed and verified on every machine in the room.

### The design problem in this session

You have to do two unlike things — a taxonomy lecture and a software setup — in 75 minutes, on the day when new adds are still arriving. Resolve it by putting the setup **first**, as a 12-minute block with peer help, so that late arrivals and broken installs get absorbed while the content that follows does not depend on their laptop working.

### Timing

| Min | Segment | Notes |
| --- | --- | --- |
| 0–3 | Catch-up pointer for new adds | Where the deck and syllabus live; the day-1 exit ticket in one sentence. |
| 3–15 | **ToolPak install sprint** | See procedure below. Identify the 3–4 students who get it working first and deputize them. |
| 15–30 | Variables and data types (slides 3–11) | Includes the two in-deck check questions on slides 10–11. |
| 30–45 | Levels of measurement (12–20) | Includes Likert scales — the interesting case. |
| 45–52 | **Card sort activity** | See below. Highest-retention 7 minutes of the session. |
| 52–68 | Sampling concepts and methods (21–39) | Random vs. non-random; the four random methods. |
| 68–73 | **Random sample demo in Excel** | `RandBetween.xlsx`, `PickEight.xlsx`. |
| 73–75 | Sources of bias preview + assignment | Slides 41–42 as a teaser for Thursday. |

### Lab procedure: Analysis ToolPak (12 min)

Put both paths on screen simultaneously — the room will be roughly 60/40 Windows/Mac.

**Windows:** File → Options → Add-ins → Manage: *Excel Add-ins* → **Go** → check **Analysis ToolPak** → OK. Verify: the **Data** tab now ends with a **Data Analysis** button.

**Mac:** Tools → Excel Add-ins → check **Analysis ToolPak** → OK. Verify: Data tab → **Data Analysis**.

**The three failures you will see, in order of frequency:**

1. *They are in Excel for the web.* No add-ins exist there, at all. This is the syllabus warning made flesh. They need the desktop app from portal.office.com → Install Office.
2. *No Data Analysis button after checking the box.* Quit Excel completely (Mac: ⌘Q, not just closing the window) and reopen.
3. *Not signed in with the MSU account.* Excel is in reduced-functionality mode. Account → Sign in with `netid@montana.edu`.

Anyone still broken at minute 15: pair them with a working neighbor for today, and see you in office hours. Do not spend session time on one machine.

### Core content

**Data types** (slides 3–9). The tree that matters:

```
Data
├── Categorical (qualitative) — labels; count them, don't average them
└── Numerical (quantitative)
    ├── Discrete — countable; "how many"
    └── Continuous — measurable to arbitrary precision; "how much"
```

Then the orthogonal cut: **cross-sectional** (many units, one time) vs. **time series** (one unit, many times). Emphasize *orthogonal* — every dataset has both a type and a structure. `SmallData.xlsx` (8 employees × Age, Salary, Position, Veteran, Education) is cross-sectional; `Bankruptcies.xlsx` (filings by year, 1980–2018) is time series. Open both side by side for ten seconds each. The visual difference — rows are *people* vs. rows are *years* — does more than a definition.

**Levels of measurement** (slides 12–20). The reason this matters is not vocabulary; it is that **the level determines which arithmetic is meaningful.**

| Level | Distinguishes | Meaningful operation | Business example | Meaningless |
| --- | --- | --- | --- | --- |
| Nominal | Categories only | Count, mode | Store region, payment type | "Average region" |
| Ordinal | Order, unequal gaps | Median, percentile | Bond rating, satisfaction rank | "Average gap" between AAA and AA |
| Interval | Equal gaps, arbitrary zero | Add, subtract, mean | Temperature °F, calendar year | "Twice as hot" |
| Ratio | True zero | All, including ratios | Revenue, units sold, time | — |

**Likert scales are the ambiguous case, and that is why they are interesting** (slides 18–19). Strictly ordinal; universally averaged in practice. Do not resolve this for them — pose it: "Vail's guest survey scores satisfaction 1–5. Is the average of 4.2 meaningful?" Let the room argue for two minutes. The honest answer: it is technically ordinal, the practice is defensible when the scale is symmetric and the categories are read as roughly equal-spaced, and *reporting the distribution alongside the mean is what a careful analyst does.* You use `VailGuestSat.xlsx` in session 7, so this pays off later.

**Sampling** (slides 21–39). Population vs. sample; parameter vs. statistic. Get the notation on the board now and never let it slip — **μ, σ, π** are population; **x̄, s, p** are sample. Every confusion in Unit 3 is this confusion, deferred.

| Method | Mechanism | Business use | Fails when |
| --- | --- | --- | --- |
| Simple random | Every item equally likely | Audit sampling | No usable frame exists |
| Systematic | Every *k*th item | Assembly-line QC | Hidden periodicity matches *k* |
| Stratified | Random within subgroups | Survey by region/segment | Strata wrongly defined |
| Cluster | Sample whole groups | Field research by store | Clusters internally homogeneous |
| Judgment | Expert picks | Rapid expert review | Expert's bias is unmeasurable |
| Convenience | Whoever is available | Pilot testing | Always — for inference |

### Activity: Card sort (7 min)

Prepare 12 slips, one variable per slip. Groups of three sort each into **type × structure × measurement level**. Draw the variables from `SmallData.xlsx` and `Vehicles.xlsx`, which they will meet again:

`Age` · `Salary` · `Position` · `Veteran (Y/N)` · `Education (HS/BS/Masters)` · `Ticker symbol` · `Stock Price` · `CityMPG` · `Doors` · `Drive (AWD/FWD)` · `Year of purchase` · `Satisfaction (1–5)`

The productive disagreements are exactly three, and you should let them surface before adjudicating:

- **`Education`** — nominal or ordinal? Ordinal: HS < BS < Masters is a real order.
- **`Doors`** — discrete numerical, but is it *really* numerical? A car with 4 doors does not have twice the doors' worth of anything relative to 2. Discrete ratio, technically; functionally often treated as categorical. Good ambiguity.
- **`Year of purchase`** — interval, not ratio. There is no true zero year, so "2020 is twice 1010" is nonsense.

### Excel demo: taking a random sample (5 min)

Open `Chapters/CHAPTER2/Exercises/RandBetween.xlsx`, then `PickEight.xlsx` (four department lists — Finance, and three others).

```excel
=RANDBETWEEN(1,25)          ' pick a row number — note duplicates are possible
=RAND()                     ' 0–1 uniform; sort by this column for a clean SRS
```

**The teaching moment is the volatility.** Press F9 three times and let them watch every value change. Ask: "Why is that a problem if I'm reporting this sample to a client?" Then show the fix — copy → Paste Special → Values — and name the principle: *reproducibility*. It is 10 points on every small project, and this is where they meet it.

Then show `Data → Data Analysis → Sampling` on the same file, so the ToolPak they just installed does something on the day they install it.

### Misconceptions

- **"Random means haphazard."** Grabbing whoever walks by is convenience, not random. Random has a mechanism.
- **"Bigger sample fixes bias."** Draw it: a biased sampling process converges more precisely on the wrong number. This is the single most important idea in the session.
- **"Numbers are always numerical data."** Zip codes, jersey numbers, ticker IDs. Ask: "Is the average zip code meaningful?"

### Assignment before Thu Sep 3

- Read Ch 2 §2.4–2.6 (sources of error, data sources, survey design).
- ToolPak verified — bring the laptop it works on.
- **Quiz 1 Thursday**, first 10 minutes, covering sessions 1–2.

---

## Session 3 · Thu, Sep 3 — **Lab: Cleaning a Real Dataset** · Quiz 1

**Chapter 2 · Deck slides 41–49 · Data: `CEOComp.xlsx`, `Bankruptcies.xlsx`, `LateShow.xlsx`**

### Objectives

U1-C, plus U1-B applied: given a dataset, name its likely biases.

### Timing

| Min | Segment |
| --- | --- |
| 0–10 | **Quiz 1** (blueprint below) |
| 10–13 | Quiz debrief — the one question most missed, 90 seconds, no more |
| 13–22 | Sources of error and bias (slides 41–42); data sources (43–44) |
| 22–30 | Survey design and question wording (45–49) — the **two-question rewrite** |
| 30–70 | **The clean-up lab** |
| 70–75 | Debrief: the documentation habit; assignment |

### Quiz 1 blueprint (10 min, 5 questions, 20 pts)

Covers sessions 1–2. Keep it to one page, on paper.

1. (4) Classify three variables by data type and measurement level. *Use variables not seen in the card sort — e.g. `Complaint category`, `Time to resolve (min)`, `Bond rating`.*
2. (4) One dataset described in a sentence; is it cross-sectional or time series, and how do you know?
3. (4) Name the sampling method from a two-sentence description, and name one bias it is exposed to.
4. (4) A claim with a logical pitfall. Identify it and say why in one sentence.
5. (4) Population parameter or sample statistic? Give the correct symbol. *Tests whether the μ/x̄ distinction landed.*

### Content block: bias and question wording (17 min)

**Sources of error** (slides 41–42) — make each abstract term concrete with a business instance:

| Error | One-line business instance |
| --- | --- |
| Coverage / frame | Phone survey of customers in an age group that no longer answers phones |
| Nonresponse | Only angry customers complete the satisfaction survey |
| Selection | "Rate us!" link on the receipt of a completed purchase — abandoned carts never see it |
| Interviewer | Sales rep asks their own client how satisfied they are |
| Measurement | Ambiguous question; miscalibrated scale |
| Response / social desirability | Self-reported income, hours worked, exercise |

**The two-question rewrite** (7 min, in pairs). Put two badly written survey questions on screen and have pairs rewrite them:

- *"Don't you agree that our excellent new checkout process is an improvement?"* — leading, double-barreled, presupposes.
- *"How satisfied were you with the speed and friendliness of our service?"* — double-barreled; speed and friendliness are different things.

Take two rewrites, put them on screen, and critique the rewrites. Students learn more from watching a decent answer get sharpened than from seeing a bad one fixed.

### The clean-up lab (40 min)

Work on `Chapters/CHAPTER2/Examples/CEOComp.xlsx` — 25 large U.S. firms, columns `Obs · Firm · CEO · One Year Total ($M)`. It is small enough to see whole and real enough to be messy.

**Before touching anything, ask the question that starts every project in this course:** *What is one row?* Here, one row is a firm-CEO pair for one year. Cross-sectional. Say so before cleaning.

Work through these seven moves, projecting and narrating, with students following on their own machines. Pause after each — the pace of the slowest third sets the pace.

| # | Move | Excel | Point to make |
| --- | --- | --- | --- |
| 1 | Header row on top | Delete or move the title row above the headers | Excel tools need row 1 to be headers. This is *why* the title-above-data layout in these files must go. |
| 2 | Make it a Table | Select → **Ctrl+T** → "My table has headers" | Structured references, auto-expanding ranges, filter buttons free. Name it `tblCEO` in Table Design. |
| 3 | Trim and standardize text | `=TRIM(B2)`, `=PROPER(C2)` | Trailing spaces are invisible and break every lookup and PivotTable. Demonstrate: `="["&B2&"]"` to reveal one. |
| 4 | Find duplicates | Home → Conditional Formatting → Highlight Cells → Duplicate Values | **Look before you delete.** Two rows for one firm may be two divisions, not an error. |
| 5 | Remove duplicates | Data → **Remove Duplicates**, choosing key columns | Note that it acts silently and irreversibly. Copy the sheet first. |
| 6 | Find missing values | `=COUNTBLANK(D2:D26)`, filter → Blanks | Blank vs. zero vs. `"N/A"` are three different things. A zero salary is a claim; a blank is an absence. |
| 7 | Sort and filter | Data → Sort; filter dropdowns | Sort **within a Table**, so rows travel together. Show the classic disaster: sorting one column alone and shredding the alignment. |

**Then the interpretation step, which is the actual point of the lab (last 8 min):**

Sort by `One Year Total` descending. Ask:

> "What is the largest value? What is the smallest? Is the largest an error or a fact?"

Then: *"If I report the mean CEO compensation from this table, who is that number about?"* The mean here is dragged by the top few. Do not resolve it — say "September 15" and move on. You have now motivated the median two weeks before you teach it, which is exactly when they need the motivation.

**Documentation close (3 min).** On a new sheet named `README`, have every student type three lines:

```
Source:   Doane & Seward 7e, CEOComp.xlsx, 25 large U.S. firms
Cleaned:  removed title row, trimmed text, removed 1 duplicate, 2 blanks in col D
By/date:  <name>, 2026-09-03
```

Say plainly: **this is 10 of the 75 points on Small Project 1**, and it is the part most students skip. Build the habit on the day it costs nothing.

### If you finish early

`LateShow.xlsx` — ages of 48 moviegoers, laid out as a grid of numbers rather than a column. Ask them to reshape it into a single tidy column. It is a genuinely useful skill and a good five-minute filler.

### Assignment before Tue Sep 8

- Read Ch 3 §3.1–3.3.
- Optional: `Learning Stats/Unit_01_Overview_of_Statistics/01-06 Significant Digits.pdf` and `01-07 Math Review.pdf` for anyone who wants the refresher. Mention it once, without singling anyone out.

---

## Session 4 · Tue, Sep 8 — Describing Data Visually; How Charts Mislead

**Chapter 3 · Deck: `Chap03_PPT.pptx` slides 3–38, 44–50**

### Objectives

U1-D and U1-E.

### The organizing idea

Do not present ten chart types as a catalog. Present **one decision rule**, then hang the chart types on it:

> **What kind of variable, and what question am I asking of it?**

| I have… | I want to show… | Chart |
| --- | --- | --- |
| One numerical variable | Its distribution | Histogram (dot plot / stem-and-leaf if *n* is small) |
| One categorical variable | Comparison of category sizes | Bar or column chart |
| One categorical variable | Which few categories dominate | **Pareto chart** |
| One numerical over time | Trend | Line chart |
| Two numerical variables | Relationship | Scatter plot |
| Two categorical variables | Cross-tabulation | Stacked/clustered column, or a table |

Put this table on the board and leave it there. Students photograph it; it is the single most-referenced artifact of the unit and it is what they need for Small Project 1.

### Timing

| Min | Segment | Deck |
| --- | --- | --- |
| 0–4 | Callback to the Aug 27 hook chart | — |
| 4–8 | **The decision rule table** | 3–4 |
| 8–16 | Stem-and-leaf, dot plots — small-*n* tools | 6–11 |
| 16–34 | **Frequency distributions and histograms** | 12–22 |
| 34–42 | Line charts, log scales | 26–29 |
| 42–52 | Bar, column, **Pareto**, stacked | 30–33 |
| 52–56 | Pie charts — and why to be sparing | 34–35 |
| 56–64 | **Scatter plots** | 36–38 |
| 64–74 | **Deceptive graphs** — the payoff block | 44–50 |
| 74–75 | Assignment; Quiz 2 warning |

### Histograms — the block that needs the most care (18 min)

This is where students lose the thread, because binning feels arbitrary and is arbitrary.

Use `Chapters/CHAPTER3/Examples/PERatios.xlsx` (44 S&P 500 stocks; `PERatio` in column D). Build the frequency distribution live:

1. **How many bins?** Sturges' rule, *k* ≈ 1 + 3.3·log₁₀(n). For *n* = 44: *k* ≈ 6.4, so 6 or 7. State clearly that this is a **starting point, not a law**.
2. **Bin width** = (max − min) / *k*, rounded to something a human would choose — 5, not 4.87.
3. Build the bin table, then `=FREQUENCY(data_array, bins_array)` entered across the output range.
4. Insert → Charts → Histogram (or a column chart with **zero gap width** — make the point that a histogram's touching bars mean the variable is continuous, and a bar chart's gaps mean it is not).

**Then the experiment that makes the lesson stick** (5 min): rebuild the same data with 3 bins and with 15 bins. Ask, before revealing: *"Predict what the 3-bin version will look like. Predict the 15-bin version."* Then show both.

> Too few bins hides the shape. Too many shows noise as if it were structure. **The bin count is an analyst's choice, and choices can be dishonest.**

That sentence is the bridge to the deceptive-graphs block at the end of class, and it is the intellectual center of the session.

While the histogram is up, name the three shape descriptors — **skewed right, skewed left, symmetric** — because session 6 depends on them. P/E ratios are right-skewed, which sets up the mean-vs-median problem again.

### Other demos, briefly

- **Line chart + log scale** — `Recessions.xlsx` or `RetailSales.xlsx`. Show the same series on linear and log axes. On a log scale, *equal vertical distances are equal percentage changes*. Useful for any long-run financial series.
- **Pareto** — `Concessions.xlsx` (398 customer complaints, already summarized into `Complaint Categories · Freq · Pct · CumPct`). Sort descending, add the cumulative % line on a secondary axis. Business framing: "Which two fixes remove half the complaints?" This is the chart students will actually use in internships.
- **Scatter** — `BirthLife.xlsx` (153 nations, `LifeExp` vs `BirthRate`). Strong negative relationship. Ask what it means, then immediately ask whether birth rate *causes* shorter life expectancy. Callback to session 1's pitfalls, and a forward pointer to correlation in session 7 and regression in November.
- **Pie charts** — `Instagram.xlsx` (usage frequency by year). Show why a pie with 8 slices is unreadable and the same data as a bar chart is not. Rule of thumb: pie only for a handful of parts of one whole; never for comparing across years.

### Deceptive graphs (10 min) — run as a gallery critique

Slides 44–50 have the examples. For each, one question only: **"What is the trick?"**

| Trick | Tell |
| --- | --- |
| Truncated vertical axis | Baseline not at zero on a bar chart; small differences look huge |
| Area/volume scaling | Icon doubled in *both* dimensions to show a 2× change — reads as 4× |
| Missing or uneven time axis | Gaps between years unequal, or years skipped |
| Cherry-picked window | Series starts at a convenient trough |
| Dual axes tuned to fit | Two scales chosen so unrelated series appear to track |
| 3-D perspective | Front slices look bigger than back slices of equal size |
| No sample size / no denominator | "300% increase" from 1 to 4 |

Close the loop: put the arrival hook chart from Aug 27 back on screen. *"Now — what was the trick?"* They will get it. That eleven-day callback is worth more than another example.

### Assignment before Thu Sep 10

- Read Ch 3 §3.4–3.5 (tables and PivotTables).
- **Find one chart in the wild** — news, a company report, social media — and bring it, printed or on your phone. Be ready to say what it shows well and what it hides. *This is the opener for Thursday's lab; two or three will be shown.*
- **Quiz 2 Thursday**, covering sessions 3–4.

---

## Session 5 · Thu, Sep 10 — **Lab: PivotTables and Charts** · Quiz 2

**Chapter 3 · Deck slides 39–43 · Data: `PivotTable.xlsx`, `Taxes.xlsx`, `Homes.xlsx`**

### Objectives

U1-D executed independently in Excel; PivotTable competence.

### Timing

| Min | Segment |
| --- | --- |
| 0–10 | **Quiz 2** |
| 10–16 | **Charts in the wild** — 2–3 student submissions, 2 min each |
| 16–24 | Tables and effective table design (slides 39–41) |
| 24–48 | **Guided PivotTable build** |
| 48–68 | **Independent challenge** |
| 68–75 | Share-out and debrief |

### Quiz 2 blueprint (10 min, 5 questions, 20 pts)

Covers sessions 3–4.

1. (4) Name two sources of survey bias and give a one-line business example of each.
2. (4) Given a variable and a question, name the appropriate chart and justify in one sentence.
3. (4) A small dataset, *n* = 30. How many bins does Sturges' rule suggest? Show the arithmetic. *(1 + 3.3·log₁₀30 ≈ 5.9 → 6)*
4. (4) A chart is shown. Identify the deception and say how to fix it.
5. (4) Skewed right, skewed left, or symmetric? Given a described distribution — e.g. household income; exam scores where most students did well.

### Charts in the wild (6 min)

Pick submissions before class from what students bring in. Choose one genuinely good chart and one genuinely bad one, in that order. Ending on the bad one is more fun and more memorable.

### Guided PivotTable build (24 min)

`Chapters/CHAPTER3/Examples/PivotTable.xlsx` — 25 Gotham City home sales, columns `Obs · SqFt · Type · Subdivision`. The file already contains a completed PivotTable to the right of the data; **have students close or ignore it and build their own.** Looking at a finished PivotTable teaches nothing.

Sequence, pausing after each step:

1. Click inside the data → **Insert → PivotTable → New Worksheet**.
2. **Rows** = `Subdivision`. Nothing else. Look at it. *"What is this telling me?"*
3. **Values** = `SqFt`, which defaults to **Sum**. Ask: *"Is the sum of square footage a meaningful number?"* It is not, particularly — it depends on how many homes are in the subdivision. Change it: click the field → **Value Field Settings → Average**. **This is the most important click of the day** — the default is rarely the number you want.
4. **Columns** = `Type` (Ranch, Colonial, etc.). Now it is a cross-tabulation of two categorical variables with a numerical summary in the cells.
5. Change Values to **Count of SqFt** to get a plain contingency table. Then Value Field Settings → **Show Values As → % of Grand Total**. Ask what changed and why it is easier to read.
6. **PivotChart** — Insert → PivotChart → Clustered Column. Note that it stays live: change the pivot, the chart follows.
7. **Slicer** — Insert → Slicer → `Type`. Click through the categories. This is the moment the room wakes up; it is worth the 90 seconds.

**Two things to say while building:**

- *"A PivotTable is a question-asking machine, not a report. You will build ten of them and keep one."*
- *"Every PivotTable answers a question you must be able to state in a sentence. If you can't state it, don't build it."*

### Independent challenge (20 min)

Hand out `Chapters/CHAPTER3/Exercises/Homes.xlsx`. Three tasks, in order, with the third open-ended:

1. Build a PivotTable answering: **which category has the highest average price?**
2. Build the chart that displays that answer most honestly, and give it a title that states the finding — not "Chart 1," but "Colonials average 18% more per home."
3. **Find something in this data you did not expect, and be ready to show it in one chart and one sentence.**

Task 3 is the assessment that matters, and it is a rehearsal for Small Project 1. Circulate; ask each group "what's your sentence?" rather than "is your chart done?"

### Debrief (7 min)

Take three groups' task-3 findings. For each, ask the room: *"What would you need to check before you told a manager that?"* — sample size, whether a category has 3 homes or 30, whether an outlier is driving it. This question is the habit of mind the whole course is teaching, and it also motivates session 6 perfectly: they will keep saying "it depends on the average" and then discover, next Tuesday, that "the average" is three different things.

### Assignment before Tue Sep 15

- Read Ch 4 §4.1–4.4.
- Keep your `Homes.xlsx` workbook. You will reuse it.

---

## Session 6 · Tue, Sep 15 — Descriptive Statistics: Center, Variability, Shape

**Chapter 4 · Deck: `Chap04_PPT.pptx` slides 3–29**

### Objectives

U1-F.

### Timing

| Min | Segment | Deck |
| --- | --- | --- |
| 0–6 | **The two-datasets hook** | — |
| 6–24 | Measures of center: mean, median, mode | 7–11 |
| 24–32 | Shape and the mean–median relationship | 12–13 |
| 32–40 | Geometric mean and growth rates | 14–15 |
| 40–58 | **Measures of variability**: range, variance, SD, CV | 19–26 |
| 58–70 | Chebyshev and the **Empirical Rule** | 27–29 |
| 70–75 | Excel round-up; assignment; SP1 warning |

### Opening hook (6 min)

Put two columns of numbers on screen. Same mean of 50, wildly different spread:

```
A:  48  49  50  51  52
B:   5  27  50  73  95
```

> "Both have a mean of 50. Both have a median of 50. If these are two suppliers' delivery times in hours, which contract do you sign?"

Everyone picks A instantly and for the right reason. Then: *"Say why, in a number."* They cannot yet. That is the session.

This hook does something a definition cannot: it makes variability feel like the answer to a question they already asked, rather than a formula to memorize.

### Measures of center (18 min)

Use `Chapters/CHAPTER4/Examples/GPASurvey.xlsx` — 158 students' GPAs, one clean numerical column. Familiar to the point of being personal, which is why it works.

| Measure | Excel | Use when | Breaks when |
| --- | --- | --- | --- |
| Mean | `=AVERAGE(A2:A159)` | Symmetric, no extreme values | Skew or outliers |
| Median | `=MEDIAN(A2:A159)` | Skewed data, outliers present | Nothing much — it is robust |
| Mode | `=MODE.SNGL(...)`, `=MODE.MULT(...)` | Categorical data; most common value | Continuous data (often no repeats) |
| Geometric mean | `=GEOMEAN(...)` | Averaging growth rates or ratios | Any value ≤ 0 |
| Trimmed mean | `=TRIMMEAN(A2:A159, 0.10)` | Outliers you want dampened, not deleted | You must justify the trim % |
| Midrange | `=(MAX+MIN)/2` | Quick and dirty | Almost always — it uses only 2 of *n* points |

**The characteristic of the mean worth proving** (slide 9): deviations from the mean sum to zero. Do it live — a column `=A2-$mean$`, then `=SUM(...)` → 0 (or 1E-15, which is a nice aside about floating point). This is not trivia; it is why variance squares the deviations, which is the next thing you teach. Landing this makes the variance formula feel inevitable instead of arbitrary.

**Mean vs. median — the callback.** Return to `CEOComp.xlsx` from Sep 3, where you deliberately left this open. Compute both. The mean will sit well above the median because a few enormous packages drag it. Then:

> "'Average CEO pay is $X' — which average? Whose interest does each one serve?"

Then the shape rules (slides 12–13):

- Skewed **right**: mean > median. *Income, home prices, wait times, P/E ratios.*
- Symmetric: mean ≈ median.
- Skewed **left**: mean < median. *Exam scores on an easy test, age at retirement.*

Give them the mnemonic that actually works: **the mean chases the tail.**

### Geometric mean and growth rates (8 min)

`JetBlue.xlsx` — revenue 2011–2015 (4504, …). Compute year-over-year growth rates, then average them two ways:

```excel
=AVERAGE(growth_rates)                      ' arithmetic — wrong for growth
=GEOMEAN(1+growth_rates)-1                  ' geometric — correct
' equivalently, the CAGR:
=(last/first)^(1/n_periods)-1
```

**Make the error concrete rather than asserting it.** A stock rises 100% then falls 50%. Arithmetic mean of the growth rates: +25%. Actual outcome: you are exactly where you started, 0%. Ask which number you would put in a pitch deck, and which one is true.

### Measures of variability (18 min)

Return to columns A and B from the hook and build the answer they could not give at minute 6:

| Measure | Excel | Note |
| --- | --- | --- |
| Range | `=MAX(...)-MIN(...)` | Uses only two values; wrecked by one outlier |
| Variance (sample) | `=VAR.S(...)` | Units are squared — meaningless to a manager |
| Std. deviation (sample) | `=STDEV.S(...)` | Back in original units. **The workhorse.** |
| Coefficient of variation | `=STDEV.S(...)/AVERAGE(...)` ×100 | Unitless — compares spread across different scales |
| Mean absolute deviation | `=AVEDEV(...)` | Intuitive, but poor mathematical properties |

**Two things students consistently get wrong, so address both directly:**

1. **`VAR.S`/`STDEV.S` vs `VAR.P`/`STDEV.P`.** The *n* − 1 versus *n* denominator. Do not attempt to prove unbiasedness now. Give the rule — *if your data is a sample, and it almost always is, use the `.S` versions* — and promise the reason in Unit 3. Flag explicitly that Excel's **Descriptive Statistics** tool uses `.S`. Being honest that you are deferring the reason is better teaching than a hand-wave.
2. **Why square the deviations?** Because they sum to zero otherwise — which you already demonstrated 20 minutes ago. Point back to it.

**Coefficient of variation is the one they will actually use in business** and it is usually undertaught. Make it concrete: comparing the volatility of a $2 stock and a $400 stock, standard deviation is useless and CV is exactly right. Use two columns from `StockPrices.xlsx`.

### Chebyshev and the Empirical Rule (12 min)

| | Applies to | 1 SD | 2 SD | 3 SD |
| --- | --- | --- | --- | --- |
| **Empirical Rule** | Bell-shaped only | ~68% | ~95% | ~99.7% |
| **Chebyshev** | *Any* distribution | — | ≥ 75% | ≥ 88.9% |

The pedagogical point is the trade-off: Chebyshev assumes nothing and tells you little; the Empirical Rule assumes a lot and tells you a great deal. **You buy precision with assumptions.** That sentence describes essentially all of inferential statistics, and this is the first place students can see it.

Verify it live on `GPASurvey.xlsx`: compute mean and SD, then use `=COUNTIFS()` to count observations within ±1 SD and ±2 SD, and convert to percentages. Ask them to **predict before running it**. With *n* = 158 and a roughly bell-shaped GPA distribution, they should land near 68/95, and the near-miss is itself instructive — real data is only approximately anything.

### Assignment before Thu Sep 17

- Read Ch 4 §4.5–4.7 (standardization, percentiles, quartiles, boxplots).
- **Bring your laptop — Thursday is a lab and Small Project 1 is assigned.**
- **Quiz 3 Thursday**, covering sessions 5–6.

---

## Session 7 · Thu, Sep 17 — Standardization, Outliers, Boxplots · **Lab** · Quiz 3 · SP1 Assigned

**Chapter 4 · Deck slides 30–47 · Data: `Vehicles.xlsx`, `VailGuestSat.xlsx`**

### Objectives

U1-G, U1-H, and a clear launch for Small Project 1.

### Timing

| Min | Segment |
| --- | --- |
| 0–10 | **Quiz 3** |
| 10–22 | Standardized data and *z*-scores (slides 30–32) |
| 22–34 | Percentiles, quartiles, methods of medians (33–39) |
| 34–46 | **Boxplots** (40–43) |
| 46–58 | **Lab: the Descriptive Statistics tool** |
| 58–64 | Covariance and correlation (44–47) — preview only |
| 64–75 | **Small Project 1 launch** |

### Quiz 3 blueprint (10 min, 5 questions, 20 pts)

Covers sessions 5–6.

1. (4) A PivotTable defaults to Sum. Name one situation where that is the wrong summary and say what to change it to.
2. (4) Five numbers given. Compute the mean and median by hand and say which better represents the data, and why.
3. (4) A distribution has mean 45 and median 60. Describe its shape and sketch it.
4. (4) Two products' price standard deviations, at different price levels. Which is more variable? *(Requires recognizing that CV, not SD, answers this.)*
5. (4) Bell-shaped, mean 100, SD 15. Roughly what percent falls between 70 and 130? *(≈95%)*

### Standardization (12 min)

$$z = \frac{x - \bar{x}}{s} \qquad \texttt{=STANDARDIZE(x, mean, sd)} \quad\text{or}\quad \texttt{=(A2-\$F\$1)/\$F\$2}$$

The framing that makes *z* click: **a z-score is a distance measured in standard deviations, which makes any two variables comparable no matter what units they came in.**

Use `Vehicles.xlsx` (50 vehicles: `HP`, `CityMPG`, `HwyMPG`, `Engine`). A car with 272 HP and 21 city MPG — is it more unusual in horsepower or in fuel economy? You cannot answer in raw units. You can in *z*. Compute both columns and compare.

**Unusual observations** (slide 31), and be explicit that this is a **convention, not a law of nature**:

- |*z*| > 2 — unusual
- |*z*| > 3 — outlier

**Then the question that separates this course from a formula sheet:** *"You found an outlier. Now what?"* Walk the four options and refuse to pick one for them:

1. **A data-entry error** → fix it, and document the fix.
2. **A real but different population** → exclude it, and *say so in your report*.
3. **A real, valid extreme value** → keep it, and report results with and without.
4. **The most interesting thing in the dataset** → investigate it. Fraud detection, quality failures, and breakout products are all outliers.

Say plainly: deleting an inconvenient point without disclosure is the misreporting the syllabus's integrity section names specifically.

### Percentiles, quartiles, boxplots (24 min)

```excel
=QUARTILE.INC(range, 1)     ' Q1 — Excel's inclusive method (matches Descriptive Statistics)
=QUARTILE.EXC(range, 1)     ' Q1 — exclusive method; the textbook may differ
=PERCENTILE.INC(range, 0.9) ' 90th percentile
=MEDIAN(range)              ' = Q2
```

Address the `.INC`/`.EXC` discrepancy head-on rather than hoping nobody notices — someone always does, and treating it as a mistake destroys more confidence than the discrepancy itself. There are several defensible interpolation conventions for a quartile; Excel implements two; the textbook (slides 38–39, "Methods of Medians") may give a third. **Say which one you want used on quizzes and exams — recommend `.INC`, since it matches the ToolPak output they will be reading — and note that on a large dataset the difference is negligible.** This is a good, small demonstration of expert honesty about a genuinely ambiguous convention.

**The five-number summary and the boxplot** — Min, Q1, Median, Q3, Max. IQR = Q3 − Q1. Fences at Q1 − 1.5·IQR and Q3 + 1.5·IQR.

Build one in Excel: Insert → Charts → Box and Whisker, on `CityMPG` from `Vehicles.xlsx`.

**The comparison that makes boxplots worth learning** is not one boxplot — it is several side by side. Split `CityMPG` by `Style` (SUV, Sedan, …) or by `Drive` (AWD/FWD/RWD) and put the boxplots next to each other. Three questions to the room:

1. Which group has the highest median?
2. Which group is most consistent?
3. Which observations are flagged as outliers, and would you exclude them?

Note that a boxplot shows skew through the position of the median line inside the box — a detail students miss unless told, and one that connects straight back to session 6.

### Lab: the Descriptive Statistics tool (12 min)

**Data → Data Analysis → Descriptive Statistics.** Input `CityMPG` and `HwyMPG` together, check **Labels in first row** and **Summary statistics**, output to a new worksheet.

Then read the output line by line, because **reading output is the actual skill**:

| Line | Say this |
| --- | --- |
| Mean, Median, Mode | Compare mean and median → shape, per session 6 |
| Standard Error | "We do not need this yet. Unit 3." — naming and deferring is better than skipping |
| Standard Deviation, Variance | Sample versions, *n* − 1 |
| Kurtosis, Skewness | Skewness sign confirms the mean/median reading; positive = right-skewed |
| Range, Minimum, Maximum | Feed the five-number summary |
| Sum, Count | Sanity check — does Count equal the rows you expect? |

**Two warnings to state explicitly:**

- The output is **static**. Change the data and it does not update. Contrast with live formulas — and note that Small Project 1 awards 10 points for live formulas rather than pasted numbers.
- It reports **no quartiles**. Q1 and Q3 need `QUARTILE.INC` separately. Students who assume the tool gives them everything get stuck here on the project.

### Covariance and correlation — preview only (6 min)

```excel
=CORREL(x_range, y_range)          ' r, from -1 to +1
=COVARIANCE.S(x_range, y_range)    ' sign only is interpretable
```

Keep this to six minutes. Compute *r* for `CityMPG` vs `HwyMPG` (strongly positive) and for `HP` vs `CityMPG` (negative) in `Vehicles.xlsx`. Two points and stop:

- *r* has no units and lives in [−1, +1]. **Covariance's magnitude means nothing on its own** — only its sign.
- **Correlation is not causation, and *r* only measures a *linear* relationship.** Show a *U*-shaped scatter with *r* ≈ 0 to prove that "no correlation" does not mean "no relationship."

Then say where this goes: Chapter 12, November 17, regression. Do not teach it now.

### Small Project 1 launch (11 min)

Assigned today, **due Tue Sep 29**. Individual work. Deliverable: one Excel workbook plus a written interpretation of at most two pages.

Put the rubric on screen and dwell on where the points are:

| Component | Pts |
| --- | --- |
| Correct analysis — right method, right execution | 30 |
| **Written interpretation** — what it means, what it does not mean, what you would do | **35** |
| Reproducible workbook — labeled sheets, live formulas, documented sources | 10 |

Say it directly: **the interpretation is worth more than the analysis.** Students will not believe this until they see the first grade, so say it twice today and once more on Sep 22.

Walk the required elements, mapping each to the session that taught it:

1. **Clean the data**, and document what you did — *Sep 3*.
2. **Classify each variable** by type and measurement level — *Sep 1*.
3. **At least three charts**, each with a stated question it answers — *Sep 8, Sep 10*.
4. **Full numerical summary**: center, variability, shape — *Sep 15*.
5. **Outlier check** with a stated rule, and a decision you defend — *today*.
6. **Two pages max** of interpretation aimed at a manager, not at me.

**Anticipate the three failure modes out loud**, since naming them in advance saves the most grading time:

- *A wall of charts with no questions attached.* Every chart needs a sentence.
- *Numbers pasted as values.* Formulas must be live — that is the 10 points.
- *Interpretation that restates the numbers.* "The mean is 43.2" is not interpretation. "Half our stores are below the 40-unit threshold, so the regional target is unrealistic without more staffing" is.

Close with: *"Start by Friday. Not because it is long, but because the messy part of a messy dataset is never where you expect."*

---

## 2. Assessment Map for the Unit

| Item | Date | Covers | Pts |
| --- | --- | --- | --- |
| Quiz 1 | Thu Sep 3 | Sessions 1–2 · Ch 1, Ch 2.1–2.3 | 20 |
| Quiz 2 | Thu Sep 10 | Sessions 3–4 · Ch 2.4–2.6, Ch 3.1–3.3 | 20 |
| Quiz 3 | Thu Sep 17 | Sessions 5–6 · Ch 3.4–3.5, Ch 4.1–4.4 | 20 |
| Small Project 1 | assigned Sep 17, due Sep 29 | All of Unit 1 | 75 |
| Exam 1 | Thu Oct 1 | Ch 1–6 (Units 1–2) | 100 |

Unit 1 alone accounts for **135 points before Exam 1** — 13.5% of the course grade earned in the first four weeks. Say this to students in session 1; the ones who treat September as a warm-up are the ones who need to hear it.

## 3. Excel Skills Ledger

Everything a student must be able to do unaided by Sep 17. Useful as a Canvas handout and as an Exam 1 review checklist.

| Skill | How |
| --- | --- |
| Enable the Analysis ToolPak | Options → Add-ins → Excel Add-ins → Go |
| Create a Table | Ctrl+T |
| Sort / filter without shredding rows | Sort inside a Table |
| Remove duplicates | Data → Remove Duplicates |
| Clean text | `TRIM`, `PROPER`, `CLEAN` |
| Find blanks | `COUNTBLANK`, filter → Blanks |
| Random sample | `RAND`, `RANDBETWEEN`, Paste Special → Values |
| Frequency distribution | `FREQUENCY`, bin table |
| Histogram | Insert → Histogram, or column chart with 0 gap width |
| Line / bar / Pareto / pie / scatter | Insert → Charts |
| PivotTable + PivotChart + Slicer | Insert → PivotTable; **Value Field Settings** |
| Center | `AVERAGE`, `MEDIAN`, `MODE.SNGL`, `GEOMEAN`, `TRIMMEAN` |
| Variability | `VAR.S`, `STDEV.S`, `AVEDEV`, CV by formula |
| Position | `QUARTILE.INC`, `PERCENTILE.INC`, `RANK.EQ` |
| Standardize | `STANDARDIZE` or `=(x-mean)/sd` |
| Boxplot | Insert → Box and Whisker |
| Relationship | `CORREL`, `COVARIANCE.S` |
| Summary in one step | Data Analysis → Descriptive Statistics |
| Conditional counting | `COUNTIF`, `COUNTIFS` |

## 4. Differentiation

**For students who are ahead.** Give the session-5 task 3 ("find something unexpected") as the standing extension — it has no ceiling. In session 6, ask them to derive why the deviations sum to zero rather than just observing it. Point them at `Learning Stats/Unit_01_Overview_of_Statistics/01-04 Using R and RStudio.pptx` if they want a second tool; frame it as optional enrichment, never as an expectation.

**For students who are behind.** The two PDFs in that same folder — `01-06 Significant Digits.pdf` and `01-07 Math Review.pdf` — are the right first stop, and they can be recommended to the whole class in session 3 so no one is singled out. Most students who struggle in Unit 1 are struggling with Excel mechanics, not statistics; that distinction is diagnosable in about ninety seconds of office hours and is worth diagnosing before offering help.

**The signal to watch.** Quiz 1 scores predict the semester more reliably than anything else you will see, because Unit 1 is the least technically demanding material in the course. Anyone below 12/20 on Quiz 1 should get a short personal email — not a warning, an invitation. It is week 2; the cost of intervening is near zero and the last day to drop without a "W" is Sep 16, which lands squarely between Quiz 1 and Quiz 3.

## 5. Prep Checklist

**Before Aug 27**
- [ ] Confirm JABS 215 projector, and count power outlets for the lab days
- [ ] Post syllabus, Ch 1 deck, and the Excel install instructions to Canvas
- [ ] Set office hours (syllabus says TBD, posted week 1) — do this before day 1 if possible
- [ ] Pick the arrival-hook chart from Chap03 slides 44–50
- [ ] Print index cards for the exit ticket

**Before Sep 1**
- [ ] Verify ToolPak on both a Windows and a Mac machine yourself, so the demo does not fail live
- [ ] Print the 12 card-sort slips
- [ ] Post `SmallData.xlsx`, `RandBetween.xlsx`, `PickEight.xlsx`
- [ ] Read the day-1 exit tickets for business contexts to reuse

**Before Sep 3**
- [ ] Write and print Quiz 1
- [ ] Delete the `~$` lock files in `Chapters/` before posting anything
- [ ] Post `CEOComp.xlsx`, `Bankruptcies.xlsx`, `LateShow.xlsx`
- [ ] Prepare the two badly worded survey questions

**Before Sep 8**
- [ ] Build the 3-bin / 7-bin / 15-bin histogram comparison in advance
- [ ] Have the Aug 27 hook chart ready for the callback

**Before Sep 10**
- [ ] Write Quiz 2
- [ ] Pre-screen the student-submitted charts; pick one good, one bad
- [ ] Post `Homes.xlsx`

**Before Sep 15**
- [ ] Prepare the two-column hook (means equal, spreads different)
- [ ] Pre-compute the `CEOComp` mean-vs-median callback

**Before Sep 17**
- [ ] Write Quiz 3
- [ ] **Finalize the Small Project 1 assignment sheet, dataset, and rubric — post to Canvas before class**
- [ ] Build the side-by-side `CityMPG` boxplots by `Style` in advance
- [ ] Decide and announce: `QUARTILE.INC` is the course convention

---

*Prepared for BMGT 240IS, Fall 2026. Session content maps to the Doane & Seward 7e decks in `Chapters/` and the datasets referenced by path throughout.*
