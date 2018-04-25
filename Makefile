# Makefile to convert markdown source files to multiple output formats
# Peter Kalverla, April 2018
#
#	Clear make instructions
# https://swcarpentry.github.io/make-novice/reference.html
#
# Example Makefiles:
# https://github.com/kjhealy/pandoc-templates/blob/master/examples/Makefile
# https://gist.github.com/kristopherjohnson/7466917
#
# How to specify different source and destination paths:
# https://stackoverflow.com/a/34205269/6012085

# Specify input/source files
SRC := $(wildcard markdown/*.md)

# Specify output/destination files for each format
PDF := $(patsubst markdown/%,pdf/%,$(SRC:.md=.pdf))
HTML := $(patsubst markdown/%,html/%,$(SRC:.md=.html))
TEX := $(patsubst markdown/%,tex/%,$(SRC:.md=.tex))
DOCX := $(patsubst markdown/%,docx/%,$(SRC:.md=.docx))
EPUB := $(patsubst markdown/%,epub/%,$(SRC:.md=.epub))
ODT := $(patsubst markdown/%,odt/%,$(SRC:.md=.odt))

# Instructions for make all and make clean
.PHONY: all clean
all: $(PDF) $(HTML) $(TEX) $(DOCX) $(EPUB) $(ODT)
clean:
	rm $(PDF) $(HTML) $(TEX) $(DOCX) $(EPUB) $(ODT)

# Expand destination file list for desired variables
pdf: $(PDF)
html: $(HTML)
tex: $(TEX)
docx: $(DOCX)
epub: $(EPUB)
odt: $(ODT)

# Instructions for making individual formats
pdf/%.pdf: markdown/%.md
	pandoc -s -o $@ $<

tex/%.tex: markdown/%.md
	pandoc -s -o $@ $<

docx/%.docx: markdown/%.md
	pandoc -s -o $@ $<

odt/%.odt: markdown/%.md
	pandoc -s -o $@ $<

html/%.html: markdown/%.md
	pandoc -s -o $@ $<

epub/%.epub: markdown/%.md
	pandoc -s -o $@ $<
