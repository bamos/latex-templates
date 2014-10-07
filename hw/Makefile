SRC=$(wildcard *.tex)
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex; latexmk --pdf $< && latexmk -c $<
clean: ; latexmk -C
