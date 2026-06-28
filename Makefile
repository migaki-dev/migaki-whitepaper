.PHONY: all pdf clean distclean

all: pdf

pdf:
	./scripts/build-pdf.sh

clean:
	rm -rf build/latex

distclean: clean
	rm -rf dist
