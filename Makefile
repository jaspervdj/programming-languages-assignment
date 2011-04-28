report.pdf: Nonogram.lhs
	sed 's/^ #/#/' Nonogram.lhs > tmp.lhs
	pandoc -sS --template template.tex -f markdown+lhs -t latex tmp.lhs > report.tex
	pdflatex report.tex
	rm tmp.lhs
