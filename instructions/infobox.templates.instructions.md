# Infobox Template Instructions

## Scope
These instructions document how infoboxes should be handled in the wiki content, while also recording relevant legacy repository patterns.

Observed repository state:
- Most content pages begin with an infobox table directly below the page heading.
- The infobox type is defined by the first cell of the first table row.
- Two pages currently have no infobox at all: `content/nucicraft/document.md` and `content/tesa_river/document.md`.
- Two pages currently use an untyped infobox, where the first header cell is blank: `content/crown_of_nucilandia/document.md` and `content/great_walnut/document.md`.

## Infobox-Derived Category Rules
Category membership is mandatory for pages with typed infoboxes.

General rules:
- The category footer must remain ordered from most specific to most generic.
- Required categories are derived from the infobox values, not from arbitrary manual choice.
- If a rule below requires a `Country` category and the relevant infobox property contains multiple countries, include the matching per-country and country-name categories for each linked country.
- If a required specific or per-country category does not yet exist, create or restore that category page before treating the page as complete.
- Legacy pages may currently be missing some of these categories, but new and revised pages must satisfy the rules below.

Category derivation rules by infobox family:
- `Settlement`: require the settlement subtype category, the settlement subtype per-country category when the country is identifiable, `Settlements`, `Settlements in [Country]`, `Locations`, `Locations in [Country]`, and `[Country]`.
- `Institution`: require `Institutions`, any categories implied by the `Type` row, and `[Country]`.
- `Political Party`: require `Political Parties`, `Political Parties in [Country]`, any categories implied by the party type when applicable, and `[Country]`.
- `Administrative Divisions`: require the administrative-division subtype category, the administrative-division subtype per-country category when the country is identifiable, `Administrative Divisions`, `Administrative Divisions in [Country]`, `Locations`, `Locations in [Country]`, and `[Country]`.
- `Public Office`: require `Public Offices`, `Public Offices in [Country]`, any categories implied by the office type when applicable, and `[Country]`.
- `Ethnic Group`: require `Ethnic Groups` and any more specific ethnonym or people-group category when the page defines one.
- `Time Zone`: require `Time Zones`, `Time Zones in [Country]` when countries are listed, and `[Country]`.
- `Language`: require `Languages`, `Languages in [Country]` when countries are listed, and `[Country]`.
- `Religion`: require `Religions` and any broader thematic religion category used by the repository, such as `Religion`.
- `Currency`: require `Currencies`, `Currencies in [Country]` when applicable, and `[Country]`.
- `Flag`: require `Flags`, `Flags in [Country]`, any additional specific category family such as `Heraldry` and `Heraldry in [Country]` when the page belongs there, and `[Country]`.
- `Deity`: require `Deities`, `Deities in [Religion]`, `Religion`, and `[Religion]`.
- `Country`: require `Countries`.

## General Infobox Format
The baseline infobox structure is:

```md
| **[Type](/categories/type_category)** | **Display Name** *(Optional native or alternate name)* |
| --- | --- |
| **Property** | Value |
| **Property** | Value |
```

Formatting conventions currently used:
- The infobox is the first table in the document.
- The header row has exactly two cells.
- The first header cell contains the infobox type, usually as a category link.
- The second header cell contains the page display title.
- Property names are usually bolded in the first column.
- Most typed infobox headers use bolded type links, but some legacy pages use non-bold type links.
- One space is used on both sides of the cell content: `| value |`.
- The separator row usually uses `| --- | --- |`, although some pages align the dashes for visual width.
- Internal line breaks inside values use `<br>`.
- Links use normal Markdown link syntax.
- Images use inline HTML `<img ...>` tags inside the value cell.
- Multi-value rows usually use one of these formats:
  - comma+space separated values for compact lists;
  - `<br>` separated entries for stacked values;
  - `Label *(qualifier)*` for role or date annotations.

## Naming And Value Conventions
Conventions currently visible across infoboxes:
- Settlement and territorial pages usually use title case property names such as `Nickname`, `Demonym`, `Location`, `Leader`, `Foundation`.
- Country pages use mixed naming, including linked labels such as `[Flag](/flag_of_nucilandia)` and `[Time Zone](https://en.wikipedia.org/wiki/Time_zone)`.
- Population rows often encode the snapshot date in the property label itself, for example `**Population** *(2024)*` or `**Population** *(2026-08-21)*`.
- Dates appear in mixed formats in current content:
  - ISO-like full dates such as `2020-05-21`;
  - year-only values such as `2018`;
  - natural-language dates such as `5 May 2022`.
- Country, institution, party, and public office rows often use wiki links for the principal entities.
- Role qualifiers are commonly italicised in parentheses, for example `*([President](/president))*`.
- Alternate-language names in the title cell are commonly italicised and may be placed after a `<br>`.

## Typed Infobox Inventory
Distinct typed infobox labels currently present in first header cells:
- `[Institution](/categories/institutions)`
- `[Settlement](/categories/settlements)`
- `[Country](/categories/countries)`
- `[Political Party](/categories/political_parties)`
- `[Flag](/categories/flags)`
- `[Time Zone](/categories/time_zones)`
- `[Deity](/categories/deities)`
- `[Person](/categories/people)`
- `[Language](/categories/languages)`
- `[Administrative Divisions](/categories/administrative_divisions)`
- `[County](/categories/counties)`
- `[Religion](/categories/religions)`
- `[Currency](/categories/currencies)`
- `[Public Office](/categories/public_offices)`
- `[Book](/categories/books)`
- `[Ethnic Group](/categories/ethnic_groups)`

Legacy typed label variants currently present:
- `[Castles](/categories/castles)` on `content/horidava/document.md`
- `[Companies](/categories/companies)` on `content/imhe_incorporated/document.md`

For new settlement content, use the merged Settlement label with an italic subtype suffix in the first header cell.

## Country Infobox
Header type:

```md
| **[Country](/categories/countries)** | **Country Name** *(Optional short name or alternate form)* |
```

Canonical property order:
1. `[Flag](...)`
2. `[Coat of Arms](...)`
3. `Motto`
4. `Leader`
5. `Government Type`
6. `Established`
7. `Largest City`
8. `Official Languages`
9. `Religion`
10. `Population` with year or snapshot qualifier
11. `Demonym`
12. `Currency`
13. `[Time Zone](https://en.wikipedia.org/wiki/Time_zone)`
14. `Date Format`
15. `Drives On`
16. `Official Website`
17. `Social Media`

Mandatory in all current country pages:
- `Flag`
- `Coat of Arms`
- `Motto`
- `Leader`
- `Government Type`
- `Established`
- `Largest City`
- `Official Languages`
- `Religion`
- `Population`
- `Time Zone`
- `Date Format`
- `Drives On`

Optional in current country pages:
- `Demonym`
- `Currency`
- `Official Website`
- `Social Media`

Value conventions:
- `Leader` may include the office in italicised parentheses.
- `Established` may stack multiple milestones with `<br>`.
- `Official Languages` are comma+space separated.
- `Population` keeps the date or year in the property label, not only in the value.

Mandatory categories:
- `Countries`

## Institution Infobox
Header type:

```md
| **[Institution](/categories/institutions)** | **Institution Name** <br> *(Optional local-language name)* |
```

Canonical property order:
1. `Motto`
2. `Logo`
3. `Image`
4. `Type`
5. `Status`
6. `Country`
7. `Headquarters`
8. `Region Served`
9. `Established`
10. `Leader`
11. `Speaker`
12. `Appointed by`
13. `Responsible to`
14. `Official Language`
15. `Eligibility`
16. `Purpose`
17. `Structure`
18. `Length of term`
19. `Voting system`
20. `Last election`
21. `Next election`
22. `Colors`

Mandatory in all current institution pages:
- `Type`
- `Country`
- `Established`

Common optional rows:
- `Logo`
- `Image`
- `Status`
- `Headquarters`
- `Leader`

Subtype-specific optional rows currently used:
- `Motto`, `Region Served`, `Official Language`, `Eligibility`, `Purpose`, `Colors`
- `Appointed by`, `Responsible to`
- `Speaker`, `Structure`, `Length of term`, `Voting system`, `Last election`, `Next election`

Value conventions:
- Use `Logo` or `Image` according to the subject's current precedent.
- `Headquarters` usually uses `Settlement, Country` order with wiki links.
- `Established` may include founders in parentheses.
- Multi-holder leadership stacks entries with `<br>`.
- `Colors` are always rendered with coloured squares via inline HTML plus a textual colour name or code.

Mandatory categories:
- `Institutions`
- `[Country]`
- Type-specific categories derived from the `Type` row

## Political Party Infobox
Header type:

```md
| **[Political Party](/categories/political_parties)** | **Party Name** *(Optional local-language name)* |
```

Canonical property order:
1. `Abbreviation`
2. `Logo`
3. `Country`
4. `Headquarters`
5. `Status`
6. `Established`
7. `Leader`
8. `Members`
9. `Seats in the [Șuetă](/sueta)`
10. `[Palatines](/palatine)`
11. `Position`
12. `Ideology`
13. `Colors`
14. `Slogan`

Mandatory in all current political party pages:
- `Abbreviation`
- `Logo`
- `Country`
- `Headquarters`
- `Status`
- `Established`
- `Leader`
- `Position`
- `Ideology`

Optional in current political party pages:
- `Members`
- `Seats in the [Șuetă](/sueta)`
- `[Palatines](/palatine)`
- `Colors`
- `Slogan`

Value conventions:
- `Leader` may contain multiple officeholders separated by `<br>`.
- `Position` is lower-case ideological placement, for example `center-left`.
- `Ideology` is usually stacked with `<br>`.
- `Slogan` may contain multilingual variants using `**RO:**` and `**EN:**` prefixes.

Mandatory categories:
- `Political Parties in [Country]`
- `Political Parties`
- `[Country]`
- Type-specific categories when the page defines a stable party subtype taxonomy
- Per-country variants of those type-specific categories when applicable

## Person Infobox
Header type:

```md
| [Person](/categories/people) | Person Name |
```

Canonical property order:
1. `Portrait`
2. `Race`
3. `Username`
4. `Birth`
5. `Citizen of`
6. `Current Offices`
7. `Main Office`
8. `Political Party`
9. `Main Residence`
10. `Family`
11. `Faith`

Mandatory in all current person pages:
- `Race`
- `Citizen of`

Common optional rows:
- `Portrait`
- `Username`
- `Birth`
- `Political Party`
- `Main Residence`

Other optional rows currently used:
- `Current Offices`
- `Main Office`
- `Family`
- `Faith`

Value conventions:
- `Username` may prefix the platform, for example `**[NuciCraft](/nucicraft)**: Username`.
- `Citizen of` usually stacks entries with `<br>`.
- Office rows typically include date ranges or `since ...` qualifiers in italics.
- Current person pages use a non-bold type label and a non-bold display name in the header row.

## Deity Infobox
Header type:

```md
| [Deity](/categories/deities) | Deity Name |
```

Canonical property order:
1. `Icon`
2. `Nickname`
3. `Religion`
4. `God of`
5. `Day`

Mandatory in all current deity pages:
- `Religion`
- `God of`

Optional in current deity pages:
- `Icon`
- `Nickname`
- `Day`

Value conventions:
- The current deity pages use non-bold type and title cells.
- `Day` is used only when the deity has an associated weekday.

Mandatory categories:
- `Deities in [Religion]`
- `Deities`
- `[Religion]`
- `Religion`

## Religion Infobox
Header type:

```md
| **[Religion](/categories/religions)** | Religion Name |
```

Canonical property order:
1. `Type`
2. `Foundation`
3. `Pantheon Head`
4. `Liturgical Language`
5. `Official in`

Mandatory in current usage:
- All observed rows are currently present in the only religion infobox.

Value conventions:
- `Official in` points to one or more states or territories.
- `Foundation` may use a year or another concise historical marker.

Mandatory categories:
- `Religions`
- Any broader religion umbrella category used by the repository, such as `Religion`

## Language Infobox
Header type:

```md
| [Language](/categories/languages) | Language Name |
```

Canonical property order:
1. `Name`
2. `Countries`
3. `Ethnicity`
4. `Script`

Mandatory in current usage:
- All observed rows are currently present in the only language infobox.

Value conventions:
- `Name` stores the endonym or alternate self-name, not a repetition of the page title.
- `Countries` may list one or more linked polities.
- Current language pages use non-bold type and title cells.

Mandatory categories:
- `Languages`
- `Languages in [Country]` for each listed country when such categories are part of the taxonomy
- `[Country]` for each listed country

## Currency Infobox
Header type:

```md
| **[Currency](/categories/currencies)** | **Currency Name** *(Optional local-language name)* |
```

Canonical property order:
1. `Code`
2. `Symbol`
3. `Singular`
4. `Plural`
5. `Central Bank`
6. `Printer`
7. `Mint`
8. `Country`

Mandatory in current usage:
- All observed rows are currently present in the only currency infobox.

Value conventions:
- `Code` is a short upper-case code.
- `Symbol` may be a literal currency sign.
- `Singular` and `Plural` may include both English and local-language forms.

Mandatory categories:
- `Currencies`
- `Currencies in [Country]` when the issuing country is specified
- `[Country]`

## Flag Infobox
Header type:

```md
| **[Flag](/categories/flags)** | **Flag of [Country](/country_slug)** |
```

Canonical property order:
1. `Image`
2. `[Country](/categories/countries)`
3. `Proportion`
4. `Adopted Date`
5. `Design Description`

Mandatory in all current flag pages:
- `Image`
- `Country`
- `Proportion`
- `Design Description`

Optional in current flag pages:
- `Adopted Date`

Value conventions:
- The country row currently uses a linked property label.
- `Proportion` uses ratio format such as `2:3`.
- `Adopted Date` may stack multiple milestones with `<br>`.

Mandatory categories:
- `Flags in [Country]`
- `Flags`
- `[Country]`
- Any additional specific category families the page belongs to, such as `Heraldry`
- Per-country variants of those additional specific category families when applicable

## Time Zone Infobox
Header type:

```md
| **[Time Zone](/categories/time_zones)** | Time Zone Name |
```

Canonical property order:
1. `Abbreviation`
2. `Location`
3. `Countries`
4. `DST`

Mandatory in current usage:
- All observed rows are currently present in the only time zone infobox.

Value conventions:
- `Abbreviation` is a short upper-case code.
- `Countries` is comma+space separated.
- `DST` currently uses `Yes` or `No` style values.

Mandatory categories:
- `Time Zones`
- `Time Zones in [Country]` for each listed country when such categories are part of the taxonomy
- `[Country]` for each listed country

## Settlement Infobox
Header type:

```md
| **[Settlement](/categories/settlements)** *(Village)* | **Settlement Name** *(Optional alternate name)* |
```

Subtype suffix rules:
- Keep the subtype in italics and parentheses immediately after the Settlement link.
- Do not link the subtype.
- Use one of these subtype values: `Village`, `Commune`, `Town`, `City`.

Canonical property order:
1. `Crest`
2. `Image`
3. `Map`
4. `Skyview`
5. `Nickname`
6. `Motto`
7. `Name Origin`
8. `Demonym`
9. `Coordinates`
10. `Location`
11. `Leader`
12. `Foundation`
13. `Population` with snapshot qualifier when available
14. `[Time Zone](https://en.wikipedia.org/wiki/Time_zone)`

Core rows observed across the settlement family:
- `Demonym`
- `Location`
- `Foundation`
- `[Time Zone](https://en.wikipedia.org/wiki/Time_zone)`

Common optional rows:
- `Nickname`
- `Coordinates`
- `Leader`
- `Population`

Other optional rows currently used:
- `Crest`
- `Image`
- `Map`
- `Skyview`
- `Motto`
- `Name Origin`
- `Founder`

Value conventions:
- `Location` moves from smaller to larger territorial units and uses comma+space separation.
- `Population` often keeps the census date in the property label.
- `Foundation` may include founder information in parentheses.

Mandatory categories:
- `[Subtype] in [Country]`, such as `Villages in Nucilandia`
- `[Subtype]`, such as `Villages`
- `Settlements in [Country]`
- `Settlements`
- `Locations in [Country]`
- `Locations`
- `[Country]`

Subtype-specific notes:
- `Village` pages commonly use `Map` or `Skyview`, and may omit `Leader` or `Population`.
- `Commune` pages are the only settlement subtype currently using `Motto` and `Image` in the infobox.
- `Town` currently appears once and uses `Crest`, `Nickname`, `Name Origin`, `Demonym`, `Location`, `Leader`, `Foundation`, and `Population`.
- `City` pages commonly use `Crest`, `Map` or `Skyview`, and may use `Founder`.

## County Infobox
Header type:

```md
| **[County](/categories/counties)** | **County Name** *(Optional alternate name)* |
```

Canonical property order:
1. `Demonym`
2. `Location`
3. `Leader`
4. `[Time Zone](https://en.wikipedia.org/wiki/Time_zone)`

Mandatory in all current county pages:
- `Demonym`
- `Location`
- `Leader`
- `Time Zone`

## Administrative Divisions Infobox
Header type:

```md
| **[Administrative Divisions](/categories/administrative_divisions)** | **Administrative Division Name** *(Optional alternate name)* |
```

Canonical property order:
1. `Nickname`
2. `Name Origin`
3. `Demonym`
4. `Country`
5. `[Time Zone](https://en.wikipedia.org/wiki/Time_zone)`

Mandatory in current administrative-division usage:
- All observed rows are currently present in the only administrative-division-labelled infobox.

Value conventions:
- Territorial subtype names such as `Voivodeship` belong in prose or category taxonomy, not in the infobox type cell.

Mandatory categories:
- `[Subtype] in [Country]`, such as `Voivodeships in Nucilandia`
- `[Subtype]`, such as `Voivodeships`
- `Administrative Divisions in [Country]`
- `Administrative Divisions`
- `Locations in [Country]`
- `Locations`
- `[Country]`

## Castle Infobox
Legacy header type currently used:

```md
| **[Castles](/categories/castles)** | **Castle Name** |
```

Canonical property order:
1. `Nickname`
2. `Name Origin`
3. `Demonym`
4. `Location`
5. `Leader`
6. `Foundation`
7. `[Time Zone](https://en.wikipedia.org/wiki/Time_zone)`

Mandatory in current usage:
- All observed rows are currently present in the only castle infobox.

Legacy note:
- The current header label is plural: `Castles`.

## Company Infobox
Legacy header type currently used:

```md
| **[Companies](/categories/companies)** | **Company Name** |
```

Canonical property order:
1. `Logo`
2. `Type`
3. `Founded`
4. `Founder`

Mandatory in current usage:
- All observed rows are currently present in the only company infobox.

Legacy note:
- The current header label is plural: `Companies`.

## Public Office Infobox
Header type:

```md
| **[Public Office](/categories/public_offices)** | Public Office Name *(Optional local-language form)* |
```

Canonical property order:
1. `Role`
2. `Country`

Mandatory in current usage:
- All observed rows are currently present in the only public office infobox.

Mandatory categories:
- `Public Offices in [Country]` for each listed country
- `Public Offices`
- `[Country]` for each listed country
- Type-specific categories when the office belongs to a stable office subtype taxonomy
- Per-country variants of those type-specific categories when applicable

## Book Infobox
Header type:

```md
| **[Book](/categories/books)** | **Book Title** |
```

Canonical property order:
1. `Title`
2. `Author`
3. `Published`
4. `Language`
5. `Pages`
6. `Description`

Mandatory in current usage:
- All observed rows are currently present in the only book infobox.

## Ethnic Group Infobox
Header type:

```md
| **[Ethnic Group](/categories/ethnic_groups)** | **Ethnic Group Name** *(Optional native name)* |
```

Current observed state:
- The only current ethnic group infobox, `content/zaganians/document.md`, has a typed header row and separator row, but no populated property rows.

Current template status:
- No stable property order can be inferred yet from repository usage.
- Preserve the header format and add properties only once a consistent pattern exists.

Mandatory categories:
- `Ethnic Groups`
- Any specific ethnonym category represented by the page, such as `[Zaganians](/categories/zaganians)`

## Untyped Legacy Infoboxes
Two pages currently use an untyped header row:
- `content/crown_of_nucilandia/document.md`
- `content/great_walnut/document.md`

Current untyped header format:

```md
|  |  |
| --- | --- |
```

Observed untyped regalia-style property order:
1. `Established`
2. `Leader Office`
3. `Leader Role`
4. `Leader Name`
5. `Country`

Observed untyped office-style property order:
1. `Role`
2. `Style`
3. `Country`
4. `Incumbent`

These are legacy exceptions. Do not use a blank infobox type for new pages when an existing typed category can represent the subject.

## Template Selection Rules
Choose the infobox template using the first-column type label that matches the page subject.

Selection guidance:
- Use `Country`, `Administrative Divisions`, `County`, `Settlement`, and the existing legacy `Castles` label for territorial subjects.
- Use `Institution` for organisations and state bodies.
- Use `Political Party` for party entities.
- Use `Person` for individual people.
- Use `Deity` and `Religion` for theological subjects.
- Use `Flag`, `Currency`, `Language`, `Time Zone`, `Public Office`, `Book`, and `Ethnic Group` where applicable.
- Avoid untyped infoboxes for new pages.
- Apply the mandatory category rules for the chosen infobox family before considering the page complete.

## Current Repository Irregularities
The current content contains legacy inconsistencies that should be documented rather than silently ignored:
- Some typed header cells are bolded, while others are not.
- Some title cells are bolded, while others are not.
- Some type labels are plural where a singular label would be expected.
- Some property labels are plain text instead of bold, for example `Date Format`, `Drives On`, and `Social Media` in `content/nucilandia/document.md`.
- Some pages with related subject matter have no infobox at all.
- The ethnic group infobox family does not yet have any populated property rows.

When creating or revising infoboxes, follow the canonical order and naming for the matching type above, while preserving legacy exceptions only when a page is intentionally maintaining existing historical formatting.
