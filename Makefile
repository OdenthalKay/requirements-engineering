
FILENAME 	= main

default: $(FILENAME).dvi

main.dvi: $(FILENAME).tex
	latex $(FILENAME).tex
#####################################
init:
	xdvi -watchfile 1 $(FILENAME).dvi

clean:
	rm *.dvi *.log *.aux
