.PHONY: all implode

# This target downloads and converts all the PDF labels to EPS.
all:
	[ `ls | grep '\.pdf$$' | wc -l` -gt 0 ] || ./fetch.sh
	make `ls *.pdf | sed 's/\.pdf$$/.eps/'`

# This target converts a single PDF label to EPS.
%.eps: %.pdf
	inkscape $< --export-eps=$@

# This target removes all EPS and PDF labels.
implode:
	rm -f *.eps *.pdf
