# AGENTS.md - AI Coding Agent Instructions

## Build Commands
- `make pdf` - Build PDF using Docker (default, recommended)
- `make local` - Build locally (requires xelatex)
- `make clean` - Remove auxiliary files (.aux, .log, .toc, etc.)
- `make distclean` - Remove all generated files including PDFs
- `make shell` - Open interactive shell in Docker container for debugging

## Versioning
- Versioned via git tags (e.g., `v1.0.0`)
- Use semantic versioning: `vMAJOR.MINOR.PATCH`
- Only create new version tags when explicitly requested by the user
- Commit changes after completing each task/feature

## Project Structure
LaTeX professional CV/Resume using XeLaTeX.
- `src/` - LaTeX source files (main.tex is entry point, preamble.tex contains styling)
- `output/` - Generated PDF output
- `docs/` - Reference documents (old_resume.pdf for reference)
- `tmp/` - Temporary files (git-ignored)

## Code Style Guidelines
- **Section headers**: Use `% ============================================================` comment blocks
- **Custom commands**: Define reusable commands in preamble.tex (e.g., `\experience`, `\project`, `\education`)
- **Modular structure**: Keep preamble separate from content
- **Consistent formatting**: Use the custom commands for consistent styling across sections
