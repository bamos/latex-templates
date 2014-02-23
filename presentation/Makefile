all: presentation.pdf
%.pdf: %.tex references.bib; rubber --pdf $<; rubber --clean $<
clean: ; rm -rf *.pdf *.aux *.log *.csv *.dvi *.fdb_latexmk *.fls
