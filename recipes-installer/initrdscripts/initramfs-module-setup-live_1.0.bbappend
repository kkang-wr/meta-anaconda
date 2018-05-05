FILESEXTRAPATHS_append_anaconda := ":${THISDIR}/files"

SRC_URI_append_anaconda = " \
    file://union-fs \
"

do_install_append_anaconda() {
    install -m 0755 ${WORKDIR}/union-fs ${D}/init.d/91-union-fs
}

FILES_${PN}_append_anaconda = " \
    /init.d/91-union-fs \
"
