# Category Handling Instructions

## Scope
These instructions describe how categories are presently handled within the wiki content.

Category-related content is presently stored in:
- `content/categories/<category_slug>/document.md` for category pages.
- `content/<page_slug>/document.md` for standard pages that are assigned to categories.

## Category Page Structure
A category page presently uses this structure:

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
- The top heading is exactly `# Category: <Name>`.
- Primary category members are listed as top-level bullets.
- `## Subcategories` is optional and appears only when necessary.
- Every bullet uses one leading `-` followed by one space.
- Subcategory links point to `/categories/...`.
- Link format is Markdown: `[Label](/path)`.

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
- `Villages in Nucilandia -> Villages -> Settlements in Nucilandia -> Settlements -> Locations in Nucilandia -> Locations -> Nucilandia`
- `Flags in Nucilandia -> Flags -> Heraldry in Nucilandia -> Heraldry -> Nucilandia`
- `Communes in Nucilandia -> Communes -> Settlements in Nucilandia -> Settlements -> Locations in Nucilandia -> Locations -> Nucilandia`

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

## Current Repository Variations
The current repository includes some deviations that should be treated as existing legacy data, not the preferred baseline:
- Some pages use `----` instead of `-----` before the `Categories:` line.
- Some pages omit the `<br>` line before the delimiter.
- A few links in `Categories:` lines point to non-`/categories/...` paths.
- Some taxonomy pages currently contain subcategories without a trailing footer.

When creating new content, follow the baseline structure in this file unless a specific page intentionally mirrors an existing legacy format.
