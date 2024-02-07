advmin.out: advmin.tr
	nroff -ms -Tascii ${.ALLSRC} > ${.TARGET}
