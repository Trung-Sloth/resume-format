# Resume - Nguyen Phuc Bao Lam (Mike)

Professional CV/Resume built with LaTeX, based on the [TLCresume template](https://www.overleaf.com/latex/templates/data-science-tech-resume-template/zcdmpfxrzjhv).

## Build

```bash
make pdf      # Build PDF using Docker (recommended)
make local    # Build locally (requires pdflatex)
make clean    # Remove auxiliary files
make distclean # Remove all generated files including PDFs
make shell    # Open interactive shell in Docker for debugging
```

## Project Structure

```
src/
├── main.tex          # CV content and header setup
└── preamble.tex      # LaTeX preamble, packages, and custom commands

docs/
├── old_resume.pdf    # Reference PDF
└── old_source/       # Original Overleaf template source

output/               # Generated PDF output
```

## Styling

- **Font**: Source Sans Pro (semibold)
- **Highlight color**: RGB(61, 90, 128) - blue-gray for links and section headers
- **Paper size**: US Letter
- **Margins**: 0.5 inches

## Custom Commands

The preamble defines reusable commands based on TLCresume:

- `\skills{text}` - Bold text for skill categories
- `\subtext{text}` - Italic subtitle (e.g., company name, project URL)
- `\begin{zitemize}...\end{zitemize}` - Tight bullet point list

Section entries use standard LaTeX:
- `\subsection{{Title \hfill Date}}` - Entry with right-aligned date
- `\subtext{subtitle}` - Italic line below (company/URL)

## Versioning

Versioned via git tags using semantic versioning: `vMAJOR.MINOR.PATCH`

```bash
make bump-patch  # v1.0.0 -> v1.0.1
make bump-minor  # v1.0.0 -> v1.1.0
make bump-major  # v1.0.0 -> v2.0.0
make release     # Build PDF and bump patch version
```
