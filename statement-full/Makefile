SRC=$(wildcard *.tex)
FLAGS=-halt-on-error
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex; latexmk --pdf $< && latexmk -c $<
clean: ; rm -rf *.aux *.log $(PDF)
