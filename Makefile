test: test.dl math.dl
	souffle -D- `lib_ldscript -lm` test.dl

local_test: test.dl math.dl
	PATH=../souffle-32bit/src:$(PATH) ./configure
	PATH=../souffle-32bit/src:$(PATH) souffle -D- `lib_ldscript -lm` test.dl

math.dl: configure
	./configure

test.dl: configure
	./configure

configure: configure.ac
	autoconf

clean:
	rm -f test.dl
	rm -f math.dl
