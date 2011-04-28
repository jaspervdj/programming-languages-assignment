report.pdf: Branch.lhs
	pandoc --template template.tex -s -t latex Branch.lhs > report.tex
	pdflatex report.tex
