SRC=$(wildcard *.tex)
FLAGS=-halt-on-error
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex; pdflatex $(FLAGS) $(SRC)
clean: ; rm -rf *.aux *.log $(PDF)
