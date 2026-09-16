# Clean Thesis — Typst

A thesis skeleton with placeholder content, so every element is already wired
up. Replace the text in `content/`, the entries in `bib/` and `glossary.typ`,
the images in `figures/`.

Ported from [cleanthesis](https://github.com/derric/cleanthesis) (R. Langner),
title and part pages after
[sorbonne-univ-cleanthesis](https://github.com/itoumlilt/sorbonne-univ-cleanthesis)
(I. Toumlilt), then reworked well past both.

## Build

```sh
just build     # just watch, just fonts, just clean
```

Never plain `typst compile` — it misses `--font-path fonts` and silently uses
the wrong fonts.

## Layout

```
thesis.typ       the skeleton      <- start here
content/         one file per chapter
cleanthesis.typ  all styling       <- only to restyle
glossary.typ  bib/  fonts/  figures/  gfx/
```

## Helpers

`part` · `paragraph` · `abstract` · `appendix` · `pagestyle` · `cleardoublepage`
`wide` · `listing` · `subfigures` · `subref` · `bitfield`
`gls` (expands on first use) · `glsshort` · `glspl` · `missing-ref`
`toc` · `glossary-list` · `list-of-figures/tables/listings` ·
`thesis-bibliography` · `jury-page` · `copyright-page`

Add `placement: auto` to a figure to let it float instead of leaving a hole.
Titles all live in `strings` at the top of `cleanthesis.typ`.

Packages: [hydra](https://typst.app/universe/package/hydra) (footer marks),
[bytefield](https://typst.app/universe/package/bytefield) (packet diagrams).
