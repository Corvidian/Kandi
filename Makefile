MAIN_FILE = referaatti

REFS := $(shell find viitteet/ -name '*.bib*')

pdf: viitteet.bib
	echo ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex
	biber ${MAIN_FILE}
	pdflatex ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex
ifdef PDFOPEN
	open ${MAIN_FILE}.pdf
endif

viitteet.bib: $(REFS)
	cat $(REFS) > viitteet.bib
clean:
	rm -f viitteet.bib *.aux *.bbl *.bcf *.blg *.bst *.dvi *.idx *.lof *.log *.toc *.out *.synctex.gz *.glo *.ind *.ilg *.pdfsync *.fls *.fdb_latexmk *.run.xml 
