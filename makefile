run : main.tex
	xelatex main
	bibtex main
	xelatex main
	xelatex main
	# xelatex -synctex=1 -interaction=nonstopmode -file-line-error -pdf main.tex
	open main.pdf
clean : 
	rm -r *.bib *.blg *.bbl *.aux *.log *.brf *.nlo *.out *.dvi *.ps *.lof *.toc *.fls *.fdb_latexmk *.pdfsync *.synctex*.gz *.ind *.ilg *.idx
