#
#
# $Id: Makefile,v 1.1 2001/02/17 01:24:23 gerkey Exp $
#
# generic LaTeX makefile
#

LATEX = latex
BIBTEX = bibtex
DVIPS = dvips
PS2PDF = ps2pdf

BASE_NAME = proposal

dvi: $(BASE_NAME).dvi

$(BASE_NAME).dvi: $(BASE_NAME).tex 
	$(LATEX) $< && $(BIBTEX) $(BASE_NAME) && $(LATEX) $< && $(LATEX) $<

light: $(BASE_NAME).tex
	$(LATEX) $< 

ps: $(BASE_NAME).ps

$(BASE_NAME).ps: $(BASE_NAME).dvi
	$(DVIPS) -f -t letter $(BASE_NAME).dvi > $@

pdf: $(BASE_NAME).pdf

$(BASE_NAME).pdf: $(BASE_NAME).ps
	$(PS2PDF) $<

clean:
	rm -f $(BASE_NAME).ps $(BASE_NAME).dvi $(BASE_NAME).log \
	      $(BASE_NAME).aux $(BASE_NAME).blg $(BASE_NAME).toc \
	      missfont.log $(BASE_NAME).bbl $(BASE_NAME).pdf

