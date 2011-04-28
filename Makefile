report.pdf: Nonogram.lhs
	sed 's/^ #/#/' Nonogram.lhs > tmp.lhs
	pandoc -sS --template template.tex -f markdown+lhs -t latex tmp.lhs > report.tex
	pdflatex report.tex
	rm tmp.lhs

benchmark-sequential:
	ghc --make -fforce-recomp -O2 Benchmark.hs
	time ./Benchmark --samples 50 --resamples 1000 sequential > sequential

benchmark-parallel:
	ghc --make -fforce-recomp -O2 -threaded Benchmark.hs
	time ./Benchmark --samples 50 --resamples 1000 parallel +RTS -N2 -qg -RTS > parallel
