#!/bin/bash

SRC="main.tex"

[ $# -gt 0 ] && SRC=$1


pdflatex -shell-escape $SRC
pdflatex -shell-escape $SRC


FICH=`echo $SRC | cut -d'.' -f1`
echo $FICH

#Borramos lo que genera y no queremos
rm $FICH.aux $FICH.log $FICH.nav $FICH.out $FICH.snm $FICH.toc $FICH.vrb texput.log
