# HSE Pacific

Client engagement repository for HSE Pacific. The first artefact is a Statement of Work for a review of a camera and auto-stop installation on one Liebherr 922 excavator.

## Proposal format

The proposal is a Switch **Statement of Work**, in the same format as
[byrnecut](https://github.com/Switch-Batteries/byrnecut) and
[fqm](https://github.com/Switch-Batteries/fqm): markdown with YAML
front-matter, authored at [`docs/sow.md`](docs/sow.md).

- **Front-matter** holds parties, commercial tables, deliverables, and
  assumptions (the `sow` schema in
  [switch-document-gen](https://github.com/Switch-Batteries/switch-document-gen)).
- **Body** holds `# Project Overview`, `# In Scope`, and `# Out of Scope`.
  Group labels are **bold paragraphs**, not headings.
- The client cover logo is resolved from `switch-document-gen/assets/customers/`.
  Until a logo is added, the cover shows the placeholder.

Legal boilerplate (parties, MSA, fees, execution, rate card) is supplied by
the generator template. Do not copy it into the markdown.

This is a single inspection and report. It does not use a resource-budget
workbook or schedule page.

## Generate PDF / Word

Requires a checkout of `switch-document-gen` as a **sibling** of this
repository (`../switch-document-gen`), with its dependencies installed
(`pandoc`, WeasyPrint, `pip install -r requirements.txt`).

```powershell
.\generate.ps1              # PDF + DOCX into build/
.\generate.ps1 -Format pdf  # PDF only
.\generate.ps1 -InputFile docs/sow.md
```

```bash
./generate.sh               # PDF + DOCX into build/
./generate.sh pdf           # PDF only
```

Or call the CLI directly:

```bash
python -m switchdoc.cli ../hse-pacific/docs/sow.md --format both -o ../hse-pacific/build/sow.pdf
```

(from the `switch-document-gen` working directory).

PDF is the print/sign-off format. DOCX is for client redlines and comments.
Generated files belong in `build/` and are not committed.

## Reference

- [`reference/project-background.md`](reference/project-background.md) — client, machine, and inspection context behind the statement of work.
- [`reference/job-request-summary.md`](reference/job-request-summary.md) — what HSE Pacific asked for, from the October 2026 email chains.
- [`reference/B2600003A.pdf`](reference/B2600003A.pdf) — the Comptune Engineering loader report HSE Pacific asked Switch to match.
- [`reference/safety-summary.md`](reference/safety-summary.md) — liability in a report written in the form of B2600003A.
- [`reference/reference-todo.md`](reference/reference-todo.md) — information and decisions still required before the statement of work can be issued.
