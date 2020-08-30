symtable:	stable.l
	flex -o $@.c $<
	${CC} ${CFLAGS}  -o $@ $@.c
	