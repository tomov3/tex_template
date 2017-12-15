TITLE=template_onecolumn

all:
	platex $(TITLE).tex; pbibtex -kanji=utf8 $(TITLE); platex $(TITLE).tex; dvipdfmx $(TITLE).dvi
open: 
	open $(TITLE).pdf
clean:
	rm *.log *.aux *.blg *.bbl *.dvi
