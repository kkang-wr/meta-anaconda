PACKAGECONFIG:append = "${@bb.utils.contains('DISTRO', 'anaconda', ' thin-provisioning-tools', '', d)} \
                        ${@bb.utils.contains('DISTRO_FEATURES', 'anaconda-support', ' thin-provisioning-tools', '', d)} \
                        "
