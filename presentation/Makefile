all: presentation.pdf
# Use pdflatex rather than rubber because rubber doesn't correctly
# compile beamer slides.
%.pdf: %.tex references.bib
	pdflatex -halt-on-error $<
	bibtex $(<:.tex=.aux)
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error $<
	rm -f *.blg *.out *.aux *.log *.toc *.bbl *.nav *.snm
clean: ; rm -f *.pdf *.aux *.log *.dvi *.blg *.out *.bbl *.nav *.snm *.toc
