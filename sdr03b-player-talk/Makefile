#
#
# $Id: Makefile,v 1.1.1.1 2003/09/21 21:01:16 gerkey Exp $
#
# generic LaTeX makefile
#

PDFLATEX = pdflatex
PPOWER4 = ppower4
BIBTEX = bibtex

BASE_NAME = sdr03b-player-talk

all: pdf
pdf: $(BASE_NAME).pdf

$(BASE_NAME).pdf: $(BASE_NAME).tex 
	$(PDFLATEX) $< && $(PDFLATEX) $<
#	$(PPOWER4) $@ /tmp/$@
#	mv /tmp/$@ $@

clean:
	rm -f $(BASE_NAME).ps $(BASE_NAME).dvi $(BASE_NAME).log \
	      $(BASE_NAME).aux $(BASE_NAME).blg $(BASE_NAME).toc \
	      missfont.log $(BASE_NAME).bbl $(BASE_NAME).pdf $(BASE_NAME).out

