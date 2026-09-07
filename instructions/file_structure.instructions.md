# File Structure And Naming Instructions

## Scope
These instructions apply to repository files and directories, especially wiki content under `content/`.

## Repository Structure

```text
content/
  <page_slug>/
    document.md
  currencies/
    <currency_slug>/
      document.md
  flags/
    <flag_slug>/
      document.md
  institutions/
    <institution_slug>/
      document.md
  administrative_units/
    <unit_slug>/
      document.md
  political_parties/
    <party_slug>/
      document.md
  deities/
    <deity_slug>/
      document.md
  vessels/
    <vessel_slug>/
      document.md
  persons/
    <person_slug>/
      document.md
  localities/
    <locality_slug>/
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
- Each currency page resides in `content/currencies/<currency_slug>/document.md`.
- Each flag page resides in `content/flags/<flag_slug>/document.md`.
- Each institution page resides in `content/institutions/<institution_slug>/document.md`.
- Each administrative unit page resides in `content/administrative_units/<unit_slug>/document.md`.
- Each political party page resides in `content/political_parties/<party_slug>/document.md`.
- Each deity page resides in `content/deities/<deity_slug>/document.md`.
- Each vessel page resides in `content/vessels/<vessel_slug>/document.md`.
- Each person page resides in `content/persons/<person_slug>/document.md`.
- Each locality page resides in `content/localities/<locality_slug>/document.md`.
- Each category page resides in `content/categories/<category_slug>/document.md`.
- `document.md` is the fixed file name for all wiki pages, including locality pages.
- Currency pages must be stored under `content/currencies/`; do not place currency pages at `content/<currency_slug>/document.md`.
- Flag pages must be stored under `content/flags/`; do not place flag pages at `content/<flag_slug>/document.md`.
- Institution pages must be stored under `content/institutions/`; do not place institution pages at `content/<institution_slug>/document.md`.
- Administrative unit pages must be stored under `content/administrative_units/`; do not place administrative unit pages at `content/<unit_slug>/document.md`.
- Political party pages must be stored under `content/political_parties/`; do not place political party pages at `content/<party_slug>/document.md`.
- Deity pages must be stored under `content/deities/`; do not place deity pages at `content/<deity_slug>/document.md`.
- Vessel pages must be stored under `content/vessels/`; do not place vessel pages at `content/<vessel_slug>/document.md`.
- Person pages must be stored under `content/persons/`; do not place person pages at `content/<person_slug>/document.md`.
- Locality pages must be stored under `content/localities/`; do not place locality pages at `content/<locality_slug>/document.md`.
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