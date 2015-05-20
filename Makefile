
FILENAME 	= main

default: pdf 
pdf:	$(FILENAME).pdf
#####################################

$(FILENAME).pdf: $(FILENAME).tex uml.1
	pdflatex $(FILENAME).tex -output-format=pdf

uml.1: uml.mp
	mpost uml.mp

#####################################
clean:
	rm *.dvi *.log *.aux *.pdf *.1
