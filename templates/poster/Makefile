SRC=poster.tex
PDF=$(SRC:.tex=.pdf)

all: $(PDF) $(wildcard *.tex) $(wildcard *.bib) $(wildcard images/*)
%.pdf: %.tex
	latexmk --pdf $<
	latexmk -c
	write-good $< || true
clean: ; latexmk -C; rm -f *.bbl
