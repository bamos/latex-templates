SRC=$(wildcard *.tex)
FLAGS=-halt-on-error
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex; rubber --pdf $< && rubber --clean $<
clean: ; rm -rf *.aux *.log $(PDF)
