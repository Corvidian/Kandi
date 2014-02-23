MAIN_FILE = aine

pdf:
	echo ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex
	bibtex ${MAIN_FILE}.aux
	pdflatex ${MAIN_FILE}.tex
	pdflatex ${MAIN_FILE}.tex

clean:

	rm -f *.aux *.bbl *.blg *.bst *.dvi *.idx *.lof *.log *.toc *.out *.synctex.gz *.glo *.ind *.ilg *.pdfsync *.fls *.fdb_latexmk 
