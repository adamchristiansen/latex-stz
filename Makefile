MAIN = main.tex
PDF = $(MAIN:.tex=.pdf)

all: $(PDF)

$(PDF):
	latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode $(MAIN)
.PHONY: $(PDF)

clean:
	git clean -fdX
.PHONY: clean
