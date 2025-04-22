#!/bin/bash

# Generate thesis.aux file
# (PDF file contains incorrect references yet)
lualatex --shell-escape thesis.tex
# Generate bibliography
biber thesis
# Generate nomenclature (optional)
makeindex -s nomencl.ist -t thesis.nlg -o thesis.nls thesis.nlo
# Generate final PDF file
lualatex --shell-escape thesis.tex
