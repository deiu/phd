#!/bin/sh
killall -15 pdflatex

pdflatex -shell-escape thesis.tex && bibtex thesis.aux && pdflatex -shell-escape thesis.tex && pdflatex -shell-escape thesis.tex && rm *.aux *.out *.log *.blg *.toc *.loe *.lof *.lot *.bbl
