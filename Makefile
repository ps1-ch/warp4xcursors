SRC =	bottom_left_corner.cfg bottom_right_corner.cfg bottom_side.cfg clock.cfg cross.cfg fleur.cfg hand2.cfg left_ptr.cfg left_side.cfg right_side.cfg sb_h_double_arrow.cfg sb_v_double_arrow.cfg top_left_corner.cfg top_right_corner.cfg top_side.cfg watch.cfg xterm.cfg left_ptr_watch.cfg 08e8e1c95fe2fc01f976f1e063a24ccd.cfg

BIN =	${SRC:R}
TARGETDIR =	cursors
.SUFFIXES: .cfg

.cfg:	${@:R}-32.png
	xcursorgen $< ${TARGETDIR}/$@

all:	targetdir ${BIN}

targetdir:
	mkdir -p ${TARGETDIR}

clean:
	for i in ${BIN}; do \
		rm ${TARGETDIR}/$$i; \
	done
	rmdir ${TARGETDIR}
