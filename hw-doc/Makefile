SRC=$(wildcard *.tex)
FLAGS=-halt-on-error
PDF=$(SRC:.tex=.pdf)
ODT=$(SRC:.tex=.odt)
DOC=$(SRC:.tex=.doc)

EXTRA_FILES=*.aux *.log *.idv *.html *.css *.4ct *.4tc *.lg *.dvi *.tmp *.xref

all: $(PDF) $(ODT) $(DOC) clean-extra
%.pdf: %.tex; pdflatex $(FLAGS) $<; pdflatex $(FLAGS) $<
%.odt: %.tex; mk4ht oolatex $<
%.doc: %.odt; unoconv -f doc $<
clean-extra: ; rm -f $(EXTRA_FILES)
clean: clean-extra; rm -f $(PDF) $(ODT) $(DOC)
