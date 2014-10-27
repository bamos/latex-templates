SRC=$(wildcard *.tex)
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex
	latexmk --pdf $<
	latexmk -c
	write-good $< || true
clean: ; rm -rf *.aux *.log $(PDF)
