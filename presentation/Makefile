all: presentation.pdf
%.pdf: %.tex; latexmk --pdf $< && latexmk -c $<
clean: ; rm -f *.pdf *.aux *.log *.dvi *.blg *.out *.bbl *.nav *.snm *.toc
