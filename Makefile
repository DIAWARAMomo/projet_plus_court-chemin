.PHONY: all install clean

all:
	test -d _opam || opam switch create .
	dune build @install
	ln -sf _build/default/src/lambdaDriver.exe lambda

install:
	dune install

clean:
	dune clean
