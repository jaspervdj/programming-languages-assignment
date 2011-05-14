all: sort-lazy sort-lazy.csv sort-eager sort-eager.csv

sort-lazy: sort-lazy.oz
	ozc -x sort-lazy.oz

sort-lazy.csv: sort-lazy
	./benchmark.rb sort-lazy 500 1500

sort-eager: sort-eager.oz
	ozc -x sort-eager.oz

sort-eager.csv: sort-eager
	./benchmark.rb sort-eager 500 1500

clean:
	rm -f sort-lazy
	rm -f sort-lazy.csv
	rm -f sort-eager
	rm -f sort-eager.csv
