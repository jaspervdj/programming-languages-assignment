# Compile all programs
default: sort-eager sort-lazy \
     	 hamming-eager hamming-lazy

# Compile & run all benchmarks
all: default \
     sort-eager.csv sort-lazy.csv \
     hamming-eager.csv hamming-lazy.csv

# Compile an oz program
%: %.oz
	ozc -x $<

# Generate CSV results for the sort program
sort-%.csv: sort-%
	./benchmark.rb $< 100 500

# Generate CSV results for the hamming program
hamming-%.csv: hamming-%
	./benchmark.rb $< 20 100

# Clean up everything
clean:
	rm -f sort-lazy
	rm -f sort-lazy.csv
	rm -f sort-eager
	rm -f sort-eager.csv
	rm -f hamming-eager
	rm -f hamming-eager.csv
	rm -f hamming-lazy
	rm -f hamming-lazy.csv
