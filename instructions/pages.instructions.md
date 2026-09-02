# Page Instructions

## Scope
These instructions apply to standard wiki pages stored as `content/*/document.md`.
Category pages in `content/categories/*/document.md` follow `instructions/categories.instructions.md`.

## Document Structure
Every standard page must contain exactly one level-one heading, which is reserved for the page title.

```md
# Page Title

| **[Type](/categories/type_category)** | **Page Title** |
| --- | --- |
| **Property** | Value |

Summary text.

[toc]

## Article Section
```

Structure requirements:
- The single `#` heading must be the first heading and contain only the page title.
- The content directly below the title must contain the infobox when applicable, the summary, and exactly one standalone `[toc]` line, in that order.
- All article sections after `[toc]` must use `##`; use `###` and lower levels only for sections nested within those article sections.
- Do not use another `#` heading anywhere in a standard page.

## Required `[toc]` Placement
Every standard page must contain exactly one standalone `[toc]` line.

Placement requirement:
- Place `[toc]` after the summary and immediately before the first `##` article section.
- When the page has no article section, place `[toc]` after the summary and before any footer metadata.

Compliance notes:
- Do not duplicate `[toc]` on pages that already contain it.
- Keep `[toc]` on its own line.

## Table Header Formatting
In every Markdown table, bold the main value in every cell of the header row. This includes both the type and display-name cells of an infobox header.