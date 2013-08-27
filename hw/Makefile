SRC=$(wildcard *.tex)
FLAGS=-halt-on-error
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex; pdflatex $(FLAGS) $<; pdflatex $(FLAGS) $<; \
	rm $(<:.tex=.aux) $(<:.tex=.log)
clean: ; rm -rf *.aux *.log $(PDF)
