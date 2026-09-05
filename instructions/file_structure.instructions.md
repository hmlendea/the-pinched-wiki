# File Structure And Naming Instructions

## Scope
These instructions apply to repository files and directories, especially wiki content under `content/`.

## Repository Structure

```text
content/
  <page_slug>/
    document.md
  categories/
    <category_slug>/
      document.md
instructions/
  <subject>.instructions.md
scripts/
  <action>.sh
```

Conventions:
- `content/` contains the wiki documents synchronised with the remote wiki server.
- Each standard page resides in `content/<page_slug>/document.md`.
- Each category page resides in `content/categories/<category_slug>/document.md`.
- `document.md` is the fixed file name for all wiki pages; do not rename it or add alternate Markdown entry points in page directories.
- `instructions/` contains Markdown instruction documents for content-maintenance conventions.
- `scripts/` contains executable maintenance scripts.

## Directory Naming

Use lower-case `snake_case` for page and category directory names:

Page and category slugs must be all lower-case, contain no special characters, and use underscores instead of spaces.

```text
content/bank_of_nucilandia/document.md
content/categories/cities_in_nucilandia/document.md
```

Rules:
- Use only lower-case ASCII letters, digits, and underscores.
- Separate words with one underscore.
- Do not use spaces, hyphens, punctuation, accented characters, or uppercase characters in directory slugs.
- Name a directory after the canonical English page title, converted to lower-case `snake_case`.
- Retain established directory slugs when revising existing pages, even where a more recent title would produce a different slug.

## File Naming

Use lower-case `snake_case` for repository-specific file names, with a descriptive suffix where the file type has an established convention:
- Instruction files: `<subject>.instructions.md`
- Shell scripts: `<action>.sh`
- Wiki page source: `document.md`

Use lower-case Markdown file names for top-level repository documents where applicable, such as `README.md` and `LICENSE`.