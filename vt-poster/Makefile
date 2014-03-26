all: poster.pdf

%.pdf: %.tex Makefile
	rubber --pdf $<
	rubber --clean $<

clean:
	rm -f *.aux *.bbl *.blg *.log poster*.pdf
