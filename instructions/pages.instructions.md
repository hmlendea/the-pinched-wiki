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

## Reciprocal Succession Updates
When changing a current office-holder or settlement leader, update every affected record in the same change. Update the successor's current infobox or held-office entry, close the predecessor's tenure with the succession date, identify the successor, and update relevant timeline entries where present.

Compliance notes:
- Do not duplicate `[toc]` on pages that already contain it.
- Keep `[toc]` on its own line.

## Table Header Formatting
In every Markdown table, bold the main value in every cell of the header row. This includes both the type and display-name cells of an infobox header.
In infobox header rows, keep the second cell as plain text for the current page title and do not link it.

## Timeline Date Format
When a page contains a `## Timeline` section, each timeline bullet must start with a date in `YYYY-MM-DD` format whenever the exact date is known.

## First-Mention Links
Never link a page to itself. This applies to every mention of the page's title or aliases, including mentions in prose and tables.

Within each section's Markdown text content, link the first mention of every country, language, person, and locality, including when no corresponding wiki page currently exists. Do not count a section heading, HTML content, an infobox, or a table cell as a mention. Use the canonical page path that the page would use when created.

Within each section's Markdown text content, also link the first mention of every other subject that has a corresponding wiki page. Do not link subsequent mentions of the same subject within that section.

Each section and subsection has an independent first-mention scope. A link in a parent, child, or sibling section does not affect whether the first body-text mention in another section must be linked.

In tables and infoboxes, hyperlink every linkable mention. These links do not satisfy or alter the first-mention-link requirement for Markdown text content.

Real-world countries and languages link to their English Wikipedia articles. In-world countries and languages link to their corresponding wiki pages.

Example:

```md
[Romanian](https://en.wikipedia.org/wiki/Romanian_language)
[Nucilandia](/nucilandia)
```