# Montana State University — Branding Standards (Application Notes)

**Not a value source, and not official MSU guidance.** For any color value, read
the MSU Brand Kit's generated artifacts. For anything authoritative, read the MSU
Brand Guide at <https://www.montana.edu/brandtoolkit/>, maintained by University
Communications. Nothing here has been reviewed or endorsed by University
Communications or Creative Services.

## Where values live

This file previously carried hand-typed hex and CMYK tables. They were removed
on 2026-08-14. The MSU Brand Kit exists precisely because the same palette had
been re-typed by hand across more than twenty files in four different naming
schemes with no way to tell which copy was current, and its governing rule is
that a brand color literal may be hand-written in exactly two of its own files.
This is not one of them.

Brand kit: `C:\Users\h69j985\Documents\ai_skunkwork\msu-brand-kit`

| Need | Read |
| --- | --- |
| Any color value, by eye | `dist/msu-tokens.md` |
| Web, SVG, dashboards, HTML | `dist/msu.css` |
| R and ggplot | `dist/msu-palette.R` |
| LaTeX | `dist/msu-colors.tex` |
| Whether a pair has enough contrast | `dist/contrast.json` — computed; never estimate a ratio |
| A deck | `templates/powerpoint/`, or this repo's `Branding/BlankMSUPowerPoint_2026.04.15.pptx` |
| A logo mark | `assets/logos/msu/`, then that file's entry in `assets/SOURCES.json` |
| Agent instructions | `AGENTS.md` |

### Authority chain

```
1. https://www.montana.edu/brandtoolkit/   MSU published. Controls. Always wins.
2. reference/evidence/                      Dated verbatim capture of (1).
3. tokens/ + dist/                          Machine-enforced to agree with (2).
4. reference/guidance/                      UDA interpretation. Never authoritative.
5. assets/logos/msu/                        MSU marks. Provenance undocumented.
6. assets/logos/uda/, templates/            Per-file authorship, see SOURCES.json.
```

Never cite layer 4 as the reason a value is correct.

### Two namespaces

`--msu-*` names carry values MSU published. `--kit-*` names are UDA defaults with
no institutional authority — the neutral grays, the 8px spacing scale, the radii,
the font stacks. **Never present a `kit.*` value as an MSU standard.**

### Web versus print

`msu.color.web.*` for every screen target, including **slides**, video, and
dashboards. `msu.color.print.*` only for a print layout. They are different
published values and mixing them is a defect.

---

## Application guidance

### Logo

Three symbolic elements: the **Block M** (the "M" on Mount Baldy, built by
students in 1916), the **arc** (MSU's reach across Montana), and the **flame**
("the flame of knowledge, the lamp of learning").

The MSU core logo — or the appropriate college or unit brand-extension logo — is
**required on all communications**. Departments should not use logos other than
the official MSU logo.

**Clear space.** Use the width of the "M" in "Montana" as the minimum surrounding
clear space.

**Minimum size.** Vertical logo 0.875 in (63 px) wide; horizontal logo 1.25 in
(90 px) wide. Never reproduce below these.

**Approved versions.** MSU Blue and Gold. Where legibility requires it: one-color
in MSU Blue or black, reversed to white-and-gold, or solid white on dark
backgrounds.

**File format.** PNG with a transparent background when placing over another
graphic. Do not use JPG unless the background matches exactly.

**Do not** separate or remove parts of the logo, distort it or scale it
non-uniformly, add type or effects to it, build a new logo from any portion of
the mark, change its colors beyond the approved versions, place it on dark or
busy backgrounds without adequate contrast, or use the black or blue logo on a
dark background even with an outline.

Logo minimum size and clear space are **not machine-checkable** by the kit. That
discipline is on the author.

### Accessibility — the one measured conflict

Open item OI-4 in the kit records that MSU's existing guidance conflicts with
WCAG here: **gold on a light background falls below the 3:1 floor** for a graphic
that carries meaning — 1.84:1 on white, 1.69:1 on gray-050. UDA adopted the
application rule on 2026-08-06: **gold on light is decoration only, never the
sole carrier of meaning.** Nothing enforces this.

Pairs that pass, from `dist/contrast.json`: blue on white 13.81:1, white on blue
13.81:1, gold on blue 7.5:1, gold-light on blue 10.2:1, gray-800 on white
11.51:1.

Ratios in that file pair two flat opaque colors. They know nothing about real
adjacency, opacity, layering, or rendered text size — an input to a judgement,
not a verdict.

### Typography

Primary typefaces are **ITC Franklin Gothic Std** (sans, "clean and modern") and
**Adobe Garamond Pro** (serif, "sophisticated, classical"). Municipal and Rotunda
appear in prominent MSU pieces.

**Municipal and Rotunda are licensed and are not distributed with the brand kit**
— request them from MSU Creative Services, and never embed or redistribute them.
For substitute stacks, the kit's `--kit-font-*` values are UDA defaults, not MSU
standards. For video captions and lower-thirds, use Arial or Helvetica.

### Athletic marks

Champ, Cats, the Athletic M, and the Bobcat logo are reserved for the **exclusive
use of Bobcat athletics** and may not be used by academic or administrative
departments.

### Photography

**Personal** — focused on the individual in their environment. **Active** —
students and faculty genuinely involved in learning, discovery, and engagement.
Favor dynamic environments over posed shots; capture vibrancy and diversity.
Imagery must be in focus, properly exposed, and well composed.

Avoid quirky or silly, dark or moody, and anything rude, obscene, or insulting.

Anyone photographed for the university must sign an **MSU photo/video release
form**.

### Video

MSU-resourced video needs opening and closing bumpers with the MSU logo, lower
thirds for subject identification (Arial or Helvetica), an MSU "bug" in the
lower-right corner, and **WCAG 2.0 AA** compliance including transcripts and
audio descriptions.

### Trademarks and distribution

The MSU name and logo are reserved for the MSU community on university-related
projects; outside organizations must request permission, via the Collegiate
Licensing Company or MSU's licensing office. Governing policies: the Graphic
Identity and Branding Policy, and the Trademarks and Licensing Policy.

**Before an asset leaves MSU, read its entry in `assets/SOURCES.json`.** All
seven MSU marks in the kit are `distribution: review-required`, which is not a
soft yes — it means nobody has established that the file may be passed on. So is
`BlankMSUPowerPoint_2025.11.21.pptx` (`origin: unknown`). Course material shown
to enrolled students is internal use; redistribution is a different question.

## Key references

| Resource | URL |
| --- | --- |
| Brand Toolkit | https://www.montana.edu/brandtoolkit/index.html |
| Logo Use Guide | https://www.montana.edu/marketing/logo-use-guide.html |
| Trademarks & Licensing | https://www.montana.edu/marketing/trademarks-licensing/index.html |
| Graphic Identity Policy | https://www.montana.edu/policy/graphics_identification/ |
| Creative Services | https://www.montana.edu/creativeservices/ |
| Photography Branding | https://www.montana.edu/photography/branding.html |
