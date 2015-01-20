##################################################################
# Makefile for LaTeX
##################################################################
# Use:
# make
# make clean
# options for ps2pdf: http://pages.cs.wisc.edu/~ghost/doc/AFPL/6.50/Ps2pdf.htm

TEX:=$(shell ls *.tex)
OTHER = *~ *.aux *.dvi *.toc *.bbl *.blg *.gz *.out *.thm *.ps *.idx *.ilg *.ind *.tdo *.cb *.cb2 *.lot *.soc *

pdflatex: ma.tex
    pdflatex --synctex=1 ma.tex
    bibtex ma
    pdflatex --synctex=1 ma.tex
    pdflatex --synctex=1 ma.tex
    pdflatex --synctex=1 ma.tex
clean:
    git clean -x -f -e ma.pdf
