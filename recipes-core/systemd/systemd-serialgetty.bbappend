FILESEXTRAPATHS_prepend_anaconda := "${THISDIR}/files:"

SRC_URI_append_anaconda = " file://serial-getty@.service \
           file://serial-screen-anaconda.sh \
"

do_install_append_anaconda() {
	install -d ${D}${sysconfdir}/profile.d
	install -m 644 ${WORKDIR}/serial-screen-anaconda.sh ${D}${sysconfdir}/profile.d/

	sed -i -e 's,@ROOT_HOME@,${ROOT_HOME},g' ${D}${systemd_unitdir}/system/serial-getty@.service
}
