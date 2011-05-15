all: sort-eager sort-lazy \
     hamming-lazy hamming-eager

sort-eager: sort-eager.oz
	ozc -x sort-eager.oz

sort-eager.csv: sort-eager
	./benchmark.rb sort-eager 500 1500

sort-lazy: sort-lazy.oz
	ozc -x sort-lazy.oz

sort-lazy.csv: sort-lazy
	./benchmark.rb sort-lazy 500 1500

hamming-eager: hamming-eager.oz
	ozc -x hamming-eager.oz

hamming-eager.csv: hamming-eager
	./benchmark.rb hamming-eager 20 200

hamming-lazy: hamming-lazy.oz
	ozc -x hamming-lazy.oz

hamming-lazy.csv: hamming-lazy
	./benchmark.rb hamming-lazy 20 200

clean:
	rm -f sort-lazy
	rm -f sort-lazy.csv
	rm -f sort-eager
	rm -f sort-eager.csv
	rm -f hamming-eager
	rm -f hamming-lazy
