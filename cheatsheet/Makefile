SRC=$(wildcard *.tex)
FLAGS=-halt-on-error
PDF=$(SRC:.tex=.pdf)

all: $(PDF) cheatsheet.cls
%.pdf: %.tex; pdflatex $(FLAGS) $<; pdflatex $(FLAGS) $<
clean: ; rm -rf *.aux *.log $(PDF)
