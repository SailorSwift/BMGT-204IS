---
title: Center, Variability, and Shape
subtitle: BMGT 240IS · Session 6 · Tue Sep 15, 2026 · Ch 4
---

# Both suppliers average 50 hours. Which contract do you sign?

## Two delivery-time records

::: left
**Supplier A**
- 48, 49, 50, 51, 52
- Mean 50 · Median 50
::: right
**Supplier B**
- 5, 27, 50, 73, 95
- Mean 50 · Median 50
:::

NOTES: Everyone picks A instantly and for the right reason. Then ask them to say
why *in a number*. They cannot yet. That gap is the session. Do not resolve it —
let it sit for 40 minutes until variability answers it.

## Measures of center

| Measure | Excel | Use when | Breaks when |
| --- | --- | --- | --- |
| Mean | `=AVERAGE(A2:A159)` | Symmetric, no extremes | Skew or outliers |
| Median | `=MEDIAN(A2:A159)` | Skewed, outliers present | Nothing much — it is robust |
| Mode | `=MODE.SNGL(...)` | Categorical; most common value | Continuous data |
| Geometric mean | `=GEOMEAN(...)` | Growth rates and ratios | Any value ≤ 0 |
| Trimmed mean | `=TRIMMEAN(A2:A159, 0.10)` | Outliers to dampen, not delete | You must justify the trim % |

NOTES: Data is GPASurvey.xlsx — 158 students, one clean numerical column.
Familiar to the point of being personal, which is why it works.

## Deviations from the mean sum to zero

### Prove it live, do not assert it

- Build a column `=A2-$F$1`, then `=SUM(...)` on it
- Result is 0, or 1E-15 — a nice aside about floating point
- **This is why variance squares the deviations**

> Landing this makes the variance formula feel inevitable instead of arbitrary.

NOTES: Twenty minutes later, when you introduce variance, point back to this
moment explicitly. That callback is the whole reason to spend time here.

## The mean chases the tail

| Shape | Relationship | Business examples |
| --- | --- | --- |
| Skewed right | mean > median | Income, home prices, wait times, P/E ratios |
| Symmetric | mean ≈ median | Heights, measurement error |
| Skewed left | mean < median | Scores on an easy exam, age at retirement |

NOTES: Callback to CEOComp.xlsx from Sep 3, where you deliberately left this
open. Compute both. Then ask: "'Average CEO pay is $X' — which average, and
whose interest does each one serve?"

# Now answer the question from minute 6

## Measures of variability

| Measure | Excel | Note |
| --- | --- | --- |
| Range | `=MAX(...)-MIN(...)` | Two values only; wrecked by one outlier |
| Variance | `=VAR.S(...)` | Squared units — meaningless to a manager |
| Std deviation | `=STDEV.S(...)` | Back in original units. **The workhorse.** |
| Coefficient of variation | `=STDEV.S(...)/AVERAGE(...)` | Unitless — compares across scales |

NOTES: Two things students reliably get wrong. First, .S versus .P — give the
rule (your data is a sample, use .S), promise the reason in Unit 3, and say
plainly that you are deferring it. Second, why square the deviations — point
back to the demo 20 minutes ago.

## You buy precision with assumptions

| | Applies to | 1 SD | 2 SD | 3 SD |
| --- | --- | --- | --- | --- |
| Empirical Rule | Bell-shaped only | ~68% | ~95% | ~99.7% |
| Chebyshev | *Any* distribution | — | ≥ 75% | ≥ 88.9% |

NOTES: The trade-off IS the lesson: Chebyshev assumes nothing and tells you
little; the Empirical Rule assumes a lot and tells you a great deal. That
sentence describes essentially all of inferential statistics, and this is the
first place students can see it. Verify live on GPASurvey with COUNTIFS, and
make them predict before you run it.

## Before Thursday

- Read Ch 4 §4.5–4.7 — standardization, quartiles, boxplots
- **Bring your laptop.** Thursday is a lab and Small Project 1 is assigned
- **Quiz 3 Thursday**, covering sessions 5–6
