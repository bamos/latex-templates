all: presentation.pdf
%.pdf: %.tex
	write-good --passive $< || \
		echo "Warning: write-good not installed. Not checking for passive voice."
	latexmk --pdf $<
	latexmk -c
	write-good --no-passive $< || true
clean: ; rm -f *.pdf *.aux *.log *.dvi *.blg *.out *.bbl *.nav *.snm *.toc
