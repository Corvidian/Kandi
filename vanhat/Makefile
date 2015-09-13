MAIN_FILE = aine

pdf:
ifdef PDFOPEN
	pdfclose --all
endif
	echo ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex
	bibtex ${MAIN_FILE}.aux
	pdflatex ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex
ifdef PDFOPEN
	pdfopen --file ${MAIN_FILE}.pdf
endif
clean:

	rm -f *.aux *.bbl *.blg *.bst *.dvi *.idx *.lof *.log *.toc *.out *.synctex.gz *.glo *.ind *.ilg *.pdfsync *.fls *.fdb_latexmk 
