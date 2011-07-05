nonogram-solver: Nonogram.lhs Main.hs
	ghc --make -O2 -threaded Main.hs -o nonogram-solver

benchmark-sequential:
	ghc --make -fforce-recomp -O2 Benchmark.hs
	./Benchmark --samples 50 --resamples 1000 sequential -u sequential.csv

benchmark-parallel:
	ghc --make -fforce-recomp -O2 -threaded -rtsopts Benchmark.hs
	./Benchmark --samples 50 --resamples 1000 parallel +RTS -N2 -qg -RTS -u parallel.csv
