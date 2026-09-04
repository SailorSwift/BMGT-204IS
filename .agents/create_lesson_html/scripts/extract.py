#!/usr/bin/env python3
"""Extract plain text from this course's .docx and .pptx source files.

Usage:
    python extract.py <file.docx>                 paragraph-per-line text, headings marked ##
    python extract.py <file.pptx>                 all slides, in DISPLAY order
    python extract.py <file.pptx> 4 14            only display slides 4-14
    python extract.py <file.pptx> 4 14 --notes    include that slide's speaker notes

Two things this handles that a naive `unzip | strip-tags` gets wrong:
  * slideNN.xml file numbers are NOT the numbers shown in PowerPoint. Display
    order lives in ppt/presentation.xml <p:sldIdLst>.
  * notesSlideNN.xml numbering does not track slide numbers either; notes are
    linked from each slide's own .rels file.
Both matter because a lesson plan tells the instructor "deck slides 4-14".
"""
import re
import sys
import zipfile
import xml.etree.ElementTree as ET

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")

A = "{http://schemas.openxmlformats.org/drawingml/2006/main}"
P = "{http://schemas.openxmlformats.org/presentationml/2006/main}"
W = "{http://schemas.openxmlformats.org/wordprocessingml/2006/main}"
R = "{http://schemas.openxmlformats.org/officeDocument/2006/relationships}"
PKG = "{http://schemas.openxmlformats.org/package/2006/relationships}"


def docx_text(path):
    with zipfile.ZipFile(path) as z:
        root = ET.fromstring(z.read("word/document.xml"))
    out = []
    for para in root.iter(W + "p"):
        style = para.find(W + "pPr/" + W + "pStyle")
        name = style.get(W + "val") if style is not None else ""
        text = "".join(t.text or "" for t in para.iter(W + "t")).strip()
        if not text:
            continue
        if name == "Title":
            out += ["", "# " + text]
        elif name.startswith("Heading"):
            out += ["", "## " + text]
        else:
            out.append(text)
    return "\n".join(out)


def shape_lines(xml_bytes):
    root = ET.fromstring(xml_bytes)
    lines = []
    for para in root.iter(A + "p"):
        text = "".join(t.text or "" for t in para.iter(A + "t"))
        text = re.sub(r"\s+", " ", text).strip()
        if text:
            lines.append(text)
    return lines


def slide_order(z):
    """[(display_number, 'ppt/slides/slideNN.xml'), ...] in deck order."""
    rels = ET.fromstring(z.read("ppt/_rels/presentation.xml.rels"))
    target = {r.get("Id"): r.get("Target") for r in rels.iter(PKG + "Relationship")}
    pres = ET.fromstring(z.read("ppt/presentation.xml"))
    out = []
    for i, sld in enumerate(pres.find(P + "sldIdLst").iter(P + "sldId"), start=1):
        t = target[sld.get(R + "id")].lstrip("/").replace("../", "")
        out.append((i, t if t.startswith("ppt/") else "ppt/" + t))
    return out


def notes_part(z, slide_part):
    rels = "ppt/slides/_rels/" + slide_part.rsplit("/", 1)[1] + ".rels"
    if rels not in z.namelist():
        return None
    for r in ET.fromstring(z.read(rels)).iter(PKG + "Relationship"):
        if r.get("Type").endswith("/notesSlide"):
            return "ppt/" + r.get("Target").replace("../", "")
    return None


def pptx_text(path, lo=None, hi=None, notes=False):
    out = []
    with zipfile.ZipFile(path) as z:
        for n, part in slide_order(z):
            if lo is not None and not (lo <= n <= hi):
                continue
            out.append("")
            out.append("===== SLIDE %d  (%s) =====" % (n, part))
            out += shape_lines(z.read(part)) or ["(no text - image or chart only)"]
            if notes:
                np_ = notes_part(z, part)
                if np_:
                    nl = shape_lines(z.read(np_))
                    while nl and nl[-1].isdigit():   # trailing slide-number placeholder
                        nl.pop()
                    if nl:
                        out.append("  -- notes --")
                        out += ["  " + l for l in nl]
    return "\n".join(out)


if __name__ == "__main__":
    src = sys.argv[1]
    args = sys.argv[2:]
    nums = [int(a) for a in args if a.isdigit()]
    if src.lower().endswith(".docx"):
        print(docx_text(src))
    else:
        lo = nums[0] if nums else None
        hi = nums[1] if len(nums) > 1 else lo
        print(pptx_text(src, lo, hi, "--notes" in args))
