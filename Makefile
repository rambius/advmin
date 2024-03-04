advmin.out: advmin.tr
	groff -ms -Tascii ${.ALLSRC} > ${.TARGET}

advmin.ps: advmin.tr
	groff -ms -Tps ${.ALLSRC} > ${.TARGET}

advmin.pdf: advmin.ps
	ps2pdf ${.ALLSRC}

.PHONY: clean
clean:
	rm -f advmin.ps
	rm -f advmin.pdf
