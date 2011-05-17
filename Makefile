report:
	cat assignment-1/report.markdown > tmp.lhs
	echo >> tmp.lhs
	cat assignment-2/Nonogram.lhs >> tmp.lhs
	pandoc -sS --template template.tex --include-before-body header.tex --toc -f markdown+lhs -t latex tmp.lhs > report.tex
	pdflatex report.tex
	rm tmp.lhs

clean:
	rm report.pdf
