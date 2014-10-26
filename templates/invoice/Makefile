SRC=$(wildcard *.tex)
PDF=$(SRC:.tex=.pdf)

all: $(PDF)
%.pdf: %.tex
	write-good --passive $< || \
		echo "Warning: write-good not installed. Not checking for passive voice."
	latexmk --pdf $<
	latexmk -c
	write-good --no-passive $< || true
clean: ; rm -rf *.aux *.log $(PDF)
