pdf:
	@clear
	@pdflatex -shell-escape tdd.tex
	@bibtex tdd
	@pdflatex -shell-escape tdd.tex
	@pdflatex -shell-escape tdd.tex
	@evince tdd.pdf &

clean:
	@rm *.pdf *.bbl *.aux *.blg *.log *.toc *.lof *.lol *.out *.ilg *.nlo *.nls *.lot 2> /dev/null; exit 0

