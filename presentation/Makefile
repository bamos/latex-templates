all: presentation.pdf
# Use pdflatex rather than rubber because rubber doesn't correctly
# compile beamer slides.
%.pdf: %.tex references.bib
	pdflatex -halt-on-error $<
	bibtex $(<:.tex=.aux)
	pdflatex -halt-on-error $<
	pdflatex -halt-on-error $<
clean: ; rm -rf *.pdf *.aux *.log *.csv *.dvi *.fdb_latexmk *.fls
