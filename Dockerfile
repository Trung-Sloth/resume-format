FROM texlive/texlive:latest-small

# Install TeX packages
RUN tlmgr install titlesec enumitem sourcesans moresize csquotes ly1 fontaxes anyfontsize

WORKDIR /workspace
CMD ["sh", "-c", "mkdir -p output && cd src && pdflatex -interaction=nonstopmode -halt-on-error -output-directory=../output main.tex > /dev/null && pdflatex -interaction=nonstopmode -halt-on-error -output-directory=../output main.tex | grep -E '^(!|.*:[0-9]+:|Warning|Error|Overfull|Underfull)' || true"]
