FILESEXTRAPATHS_prepend_anaconda := "${THISDIR}/files:"

do_install_append_anaconda() {
    # Remove tty1
    rm ${D}${sysconfdir}/systemd/system/getty.target.wants/getty@tty1.service
    # Explicitly enable tty2
    ln -nsf ${systemd_unitdir}/system/getty@.service \
        ${D}${sysconfdir}/systemd/system/getty.target.wants/getty@tty2.service

    install -d ${D}${sysconfdir}/systemd/logind.conf.d
    echo "[Login]" >> ${D}${sysconfdir}/systemd/logind.conf.d/anaconda.conf
    # Disable VT reservation
    echo "NAutoVTs=0"  >> ${D}${sysconfdir}/systemd/logind.conf.d/anaconda.conf
    # Disable automatic spawning of "autovt" services
    echo "ReserveVT=0" >> ${D}${sysconfdir}/systemd/logind.conf.d/anaconda.conf

}
