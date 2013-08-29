SRC=$(wildcard *.tex)
FLAGS=-halt-on-error
PDF=$(SRC:.tex=.pdf)
ODT=$(SRC:.tex=.odt)
DOC=$(SRC:.tex=.doc)

EXTRA_FILES=*.aux *.log *.idv *.html *.css *.4ct *.4tc *.lg *.dvi *.tmp *.xref

all: $(PDF) $(ODT) $(DOC)
%.pdf: %.tex; pdflatex $(FLAGS) $<; pdflatex $(FLAGS) $<; rm -f $(EXTRA_FILES)
%.odt: %.tex; mk4ht oolatex $<; rm -f $(EXTRA_FILES);
%.doc: %.odt; unoconv -f doc $<
clean: ; rm -f $(EXTRA_FILES) $(PDF) $(ODT) $(DOC)
