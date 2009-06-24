#
#
# $Id: Makefile,v 1.12 2003/07/17 00:14:23 inspectorg Exp $
#
# generic LaTeX makefile
#

VERSION = 1.4

LATEX = latex
BIBTEX = bibtex
DVIPS = dvips
PS2PDF = ps2pdf

MANFILES = ../../server/player.h
MAKEDOC = ../../server/codetools/makedoc/makedoc2.py

BASE_NAME = player

dvi: $(BASE_NAME).dvi

$(BASE_NAME).dvi: $(BASE_NAME).tex
	cd interfaces && $(MAKEDOC) $(MANFILES)
	$(LATEX) $< && $(BIBTEX) $(BASE_NAME) && $(LATEX) $< && $(LATEX) $<

light: $(BASE_NAME).tex
	$(LATEX) $< 

html:
	rm -rf html_docs
	latex2html -split 4 -toc_depth 3 -html_version 3.2,table,math -show_section_numbers -mkdir -dir html_docs $(BASE_NAME).tex

ps: $(BASE_NAME).ps
manual: ps

$(BASE_NAME).ps: $(BASE_NAME).dvi
	$(DVIPS) -f -t letter $(BASE_NAME).dvi > $@

pdf: $(BASE_NAME).pdf

$(BASE_NAME).pdf: $(BASE_NAME).ps
	$(PS2PDF) $<

distro: ps pdf html
	gzip $(BASE_NAME).ps && mv $(BASE_NAME).ps.gz Player-manual-$(VERSION).ps.gz
	mv $(BASE_NAME).pdf Player-manual-$(VERSION).pdf
	mv html_docs Player-manual-$(VERSION)-html && tar cvzf Player-manual-$(VERSION)-html.tgz Player-manual-$(VERSION)-html

clean:
	rm -rf $(BASE_NAME).ps $(BASE_NAME).dvi $(BASE_NAME).log \
	      $(BASE_NAME).aux $(BASE_NAME).blg $(BASE_NAME).toc \
	      $(BASE_NAME).lot $(BASE_NAME).lof \
	      missfont.log $(BASE_NAME).bbl $(BASE_NAME).pdf *.bak html_docs

