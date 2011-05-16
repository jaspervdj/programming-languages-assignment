report.pdf: assignment-1/report.markdown assignment-2/Nonogram.lhs
	cat assignment-1/report.markdown > tmp.lhs
	echo >> tmp.lhs
	sed 's/^ #/#/' assignment-2/Nonogram.lhs >> tmp.lhs
	pandoc -sS --template template.tex -f markdown+lhs -t latex tmp.lhs > report.tex
	pdflatex report.tex
	rm tmp.lhs

clean:
	rm report.pdf
