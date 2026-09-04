# Making a Bar Chart in Excel

**File:** `DATAFiles/Ch01/DATAfiles/nations.xlsx` — stay on the `Data` sheet
**Variable:** `Fitch Outlook`, column E, rows 2–61 (60 nations)

A bar chart needs a **frequency table first**. Excel will not count the categories for you.

---

## 1. Build the frequency table

Type these labels into columns G and H:

| Cell | Type |
| --- | --- |
| G1 | `Outlook` |
| H1 | `Frequency` |
| G2 | `Negative` |
| G3 | `Stable` |
| G4 | `Positive` |
| G5 | `Total` |

Then the formulas:

| Cell | Formula | Result |
| --- | --- | --- |
| H2 | `=COUNTIF($E$2:$E$61,G2)` | 18 |
| H3 | *fill down from H2* | 39 |
| H4 | *fill down from H2* | 3 |
| H5 | `=SUM(H2:H4)` | 60 |

**To fill down:** select H2:H4 and press `Ctrl+D`.

Two things to get right:

- **The `$` signs lock the range** to E2:E61 so it does not slide as you fill. `G2` has no dollars, so it *does* advance to G3 and G4. Reversed, you get zeros.
- **Keep the categories in scale order** — Negative → Stable → Positive. Outlook is ordinal, so the order means something. Sort by count only for nominal variables.

## 2. Check it before charting

| Cell | Formula | Result |
| --- | --- | --- |
| H7 | `=COUNTA(E2:E61)` | 60 |

This must match your total in H5. If it does not, a category is missing or misspelled.

## 3. Add relative and percent frequency

| Cell | Formula | Fill to | Results |
| --- | --- | --- | --- |
| I1 | `Relative Frequency` | — | — |
| I2 | `=H2/$H$5` | I4 | 0.30, 0.65, 0.05 |
| J1 | `Percent Frequency` | — | — |
| J2 | `=I2*100` | J4 | 30, 65, 5 |

Relative frequencies must sum to 1. Check with `=SUM(I2:I4)`.

*Shortcut:* skip column J and format I2:I4 as a percentage — **Home** tab → **%**.

## 4. Insert the chart

1. Select **G1:H4** — the labels and the counts.
2. **Insert** tab → **Insert Column or Bar Chart** → **Clustered Column**.

**Do not include row 5.** The Total of 60 would tower over the largest real category of 39 and flatten the three bars you care about.

## 5. Clean it up

| Fix | How |
| --- | --- |
| Axis starts at zero | Right-click the vertical axis → **Format Axis** → Minimum = `0` |
| Real title | Click the title, type `Fitch Outlook, 60 WTO Nations` |
| Delete the legend | Click it, press `Delete` — one series needs no legend |
| Add axis titles | Select chart → **+** button → check **Axis Titles** |
| No 3-D or gradients | They make bar lengths harder to compare |

---

## Finished result

A table in G1:J5 and a column chart with three bars — **18, 39, 3** — in scale order, zero baseline, titled, no legend.

**Answer key:** Negative 18 · Stable 39 · Positive 3 · Total 60
