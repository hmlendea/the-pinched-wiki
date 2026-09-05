# Category Handling Instructions

## Scope
These instructions describe how categories are presently handled within the wiki content.

Category-related content is presently stored in:
- `content/categories/<category_slug>/document.md` for category pages.
- `content/<page_slug>/document.md` for standard pages that are assigned to categories.

## Category Page Structure
A category page uses this structure:

```md
# Category: <Category Name>

- [Child Item](/child_item)
- [Another Child Item](/another_child_item)

## Subcategories

- [Subcategory Name](/categories/subcategory_slug)

<br>

-----
Categories: [Parent Category](/categories/parent_category)
```

Conventions:
- Every category page contains exactly one level-one heading, which is exactly `# Category: <Name>`.
- The list of primary category members appears directly below the title heading.
- All category sections after the primary list use `##`; use `###` and lower levels only for sections nested within those category sections.
- Do not use another `#` heading anywhere in a category page.
- `## Subcategories` is optional and appears only when necessary.
- Every bullet uses one leading `-` followed by one space.
- Subcategory links point to `/categories/...`.
- Link format is Markdown: `[Label](/path)`.
- Category pages must not contain a `[toc]` line.
- Sort the list of primary category members alphabetically by visible page title.
- Sort the list of subcategories alphabetically by visible category title.

## Category Footer Syntax
For both standard pages and category pages (for subcategories), the category footer presently follows this structure:
- One empty line.
- A line containing exactly `<br>`.
- One empty line.
- A horizontal delimiter line, of exactly five dashes: `-----`.
- A final line starting with `Categories: ` followed by a comma+space separated list of links.

## Category Ordering
The `Categories: ...` list is ordered from most specific to most generic.

Ordering principle:
- Start with the narrowest, most concrete classification of the page.
- Continue with more general parent classifications.
- End with the most general umbrella context.

Typical chain examples presently used:
- `Villages in Nucilandia -> Villages -> Localities in Nucilandia -> Localities -> Locations in Nucilandia -> Locations -> Nucilandia`
- `Flags in Nucilandia -> Flags -> Heraldry in Nucilandia -> Heraldry -> Nucilandia`
- `Communes in Nucilandia -> Communes -> Localities in Nucilandia -> Localities -> Locations in Nucilandia -> Locations -> Nucilandia`

Formatting for ordering:
- Keep the order on a single `Categories: ` line.
- Separate entries with `, ` (comma followed by one space).
- Do not alphabetise the categories; preserve taxonomic specificity order.

Example footer:

```md
<br>

-----
Categories: [Cities](/categories/cities), [Locations](/categories/locations)
```

## Spacing and Indentation
Current spacing and indentation conventions are:
- Top-level list items are not indented.
- Nested list items (when present in non-category pages) use two spaces per level.
- One empty line is used between major blocks (heading, lists, subcategories, footer).
- In `Categories: ...`, each category entry is separated by `, ` (comma followed by one space).

## First-Mention Links
Within each section's Markdown text content, link the first mention of every country, language, person, and locality, including when no corresponding wiki page currently exists. Do not count a section heading, HTML content, an infobox, or a table cell as a mention. Use the canonical page path that the page would use when created.

Within each section's Markdown text content, also link the first mention of every other subject that has a corresponding wiki page. Do not link subsequent mentions of the same subject within that section.

Each section and subsection has an independent first-mention scope. A link in a parent, child, or sibling section does not affect whether the first body-text mention in another section must be linked.

In tables and infoboxes, hyperlink every linkable mention. These links do not satisfy or alter the first-mention-link requirement for Markdown text content.

Real-world countries and languages link to their English Wikipedia articles. In-world countries and languages link to their corresponding wiki pages.

## Current Repository Variations
The current repository includes some deviations that should be treated as existing legacy data, not the preferred baseline:
- Some pages use `----` instead of `-----` before the `Categories:` line.
- Some pages omit the `<br>` line before the delimiter.
- A few links in `Categories:` lines point to non-`/categories/...` paths.
- Some taxonomy pages currently contain subcategories without a trailing footer.

When creating new content, follow the baseline structure in this file unless a specific page intentionally mirrors an existing legacy format.
