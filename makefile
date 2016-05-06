doc = report

default: all

all:
	pdflatex --shell-escape $(doc).tex
	pdflatex --shell-escape $(doc).tex
	# dvips -R -Poutline -t letter $(doc).dvi -o $(doc).ps
	# ps2pdf $(doc).ps
	open $(doc).pdf

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.dvi
	rm -f *.log
	rm -f *.pdf
	rm -f *.ps
	rm -f *.toc

tar:
	tar cvjf spring_progress_report_team23.tar.bz2 IEEEtran.cls makefile $(doc).tex
