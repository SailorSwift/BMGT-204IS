# Deck Spec Format and MSU Branding

`scripts/build_deck.py` turns a markdown deck spec into an MSU-branded `.pptx`
built on the university template. You write the spec; the script owns layout and
branding.

```bash
# check the spec, write nothing
python .claude/skills/lesson_planner/scripts/build_deck.py <spec.md> --validate

# build
python .claude/skills/lesson_planner/scripts/build_deck.py <spec.md> -o "Decks/Session_08_Probability.pptx"
```

Requires `python-pptx` (`pip install python-pptx`). Run from the repo root so the
default template path resolves.

## Spec syntax

````markdown
---
title: Center, Variability, and Shape
subtitle: BMGT 240IS · Session 6 · Tue Sep 15, 2026 · Ch 4
---

# A section divider — one big idea, no bullets

## A content slide title
### Optional subheading
- A bullet
  - A sub-bullet, two spaces per level
- **bold**, *italic*, and `=STDEV.S(A2:A159)` in monospace

> A line to say out loud, rendered in italic

## A table slide
| Measure | Excel | Use when |
| --- | --- | --- |
| Mean | `=AVERAGE(...)` | Symmetric, no extremes |

## A two-column slide
::: left
**Supplier A**
- 48, 49, 50, 51, 52
::: right
**Supplier B**
- 5, 27, 50, 73, 95
:::

## A slide with instructor notes
- What the room sees

NOTES: What you actually do here. Everything after NOTES: until the next
heading becomes the speaker-notes field.
````

| Syntax | Becomes |
| --- | --- |
| `---` frontmatter | The branded title slide. `title:` is required. |
| `#` | Section Header layout — use for the 2–4 pivots in a session |
| `##` | A content slide |
| `###` | The template's Subheading placeholder |
| `-` / `*` | Bullets; two leading spaces per level, four levels max |
| `\|…\|` | A table; first row is the header, styled MSU blue with white bold text |
| `::: left` / `::: right` | Two Content layout |
| `>` | An italic line — good for "say this out loud" |
| `NOTES:` or `???` | Speaker notes |
| `**b**` `*i*` `` `code` `` | Bold, italic, monospace (Consolas, for Excel formulas) |

Layout is chosen automatically: table-only slides get *Title Only*, two-column
slides get *Two Content*, everything else gets *Title and Content*. Body text
shrinks by line count (≤5 inherits the template, then 18 / 16 / 14 pt).

## What `--validate` warns about

Density and readability, not style: more than 14 lines on a slide, a bullet over
130 characters (that is a notes-field sentence), a title that will wrap past 70
characters, a table wider than 6 columns, and a deck with no speaker notes at
all.

## Branding — read this before changing the script

Brand values come from the **MSU Brand Kit** at
`C:\Users\h69j985\Documents\ai_skunkwork\msu-brand-kit`. Its rules bind this
skill.

**The authority chain.** <https://www.montana.edu/brandtoolkit/> is what MSU
published and always wins. The kit's `reference/evidence/` is a dated verbatim
capture of it. `tokens/` + `dist/` are machine-enforced to agree with that
capture. `reference/guidance/` is UDA interpretation and is **never** a value
source.

**Never hand-write a brand color literal.** The kit permits one in exactly two of
its own files, and nothing in this repo is one of them. `build_deck.py` therefore
contains no hex values:

- **Default:** it references the template's theme slots (`accent1`, `accent2`, `lt1`), so whatever the MSU template defines is what renders. Zero values written.
- **`--tokens <path to dist/msu.css>`:** it parses the published `--msu-web-*` values out of the kit's *generated* artifact at run time. Referenced, never retyped.

```bash
python ... build_deck.py spec.md -o out.pptx \
  --tokens "C:/Users/h69j985/Documents/ai_skunkwork/msu-brand-kit/dist/msu.css"
```

**Web values, never print.** Slides are a screen target, so `msu.color.web.*`
applies. Mixing in the print values is a defect. `--tokens` reads only
`--msu-web-*` for this reason.

**`msu.*` versus `kit.*`.** `--msu-*` names carry values MSU published. `--kit-*`
names are UDA defaults with no institutional authority — the neutral grays, the
spacing scale, the Arial/Helvetica stack. Never present a `kit.*` value as an MSU
standard. The monospace font this script uses for Excel formulas is a local
choice of ours, not an MSU standard.

**Gold on light is decoration only.** Open item OI-4 in the kit records a
measured accessibility conflict: gold on white is 1.84:1 and gold on gray-050 is
1.69:1, both below the 3:1 floor for a graphic that carries meaning. UDA adopted
the rule on 2026-08-06 — gold may decorate, but must never be the sole carrier
of meaning. Nothing enforces it. Pairs that do pass, from
`dist/contrast.json`: blue on white 13.81:1, white on blue 13.81:1, gold on blue
7.5:1, gold-light on blue 10.2:1.

**Two facts worth knowing about the template.** Its own theme carries
`accent1 = #162860` and `accent2 = #F3B324`, while the published web values are
`#162960` and `#F4B425` — each off by one hex digit. This is MSU's file, so the
discrepancy is reported, not silently corrected: use the default theme mode to
match the rest of the template, or `--tokens` to match the published palette. Do
not edit the template to "fix" it.

**Logos.** The template already carries MSU marks in its layouts, so the script
adds none. The kit's marks under `assets/logos/msu/` are all
`distribution: review-required`, which is not a soft yes — it means nobody has
established that the file may be passed on. Course material shown to enrolled
students is internal use; before any deck leaves MSU, read the file's entry in
`assets/SOURCES.json`.

**Typefaces.** MSU's Municipal and Rotunda are licensed and are not distributed
with the kit. The script sets no theme fonts and inherits the template's.

## How the template actually works

Two mechanics that will bite anyone editing the script:

1. **The MSU logo is a `blipFill` on the *layout's* placeholder, not a slide shape.** python-pptx clones layout placeholders onto every new slide *without* that fill, so an empty clone sits on top of the layout's logo and hides it. The script deletes every placeholder it did not populate — which is exactly what MSU's own sample slides do.
2. **The title slide's photo, shade, and centered logo are slide-level pictures** on the template's sample title slide, not layout content. The script extracts those image blobs before dropping the sample slides and re-inserts them behind the title text.

The template ships with 5 sample slides; the script removes them.
