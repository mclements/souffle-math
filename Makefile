all:
	souffle `lib_ldscript -lm` test.dl
	cat Summary.csv
