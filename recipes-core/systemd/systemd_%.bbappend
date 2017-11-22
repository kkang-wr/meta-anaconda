FILESEXTRAPATHS_prepend_anaconda := "${THISDIR}/files:"

do_install_append_anaconda() {
	ln -nsf ${systemd_unitdir}/system/anaconda-init-screen@.service \
		${D}${sysconfdir}/systemd/system/getty.target.wants/getty@tty1.service
}
