SUMMARY = "GNOME keyboard library"
LICENSE = "LGPL-2.0-only"
LIC_FILES_CHKSUM = "file://COPYING.LIB;md5=6e29c688d912da12b66b73e32b03d812"

SECTION = "x11/gnome/libs"

DEPENDS = "glib-2.0 gtk+3 libxklavier"

inherit features_check gnomebase gobject-introspection gsettings gettext

REQUIRED_DISTRO_FEATURES = "x11"

SRC_URI[archive.sha256sum] = "22dc59566d73c0065350f5a97340e62ecc7b08c4df19183804bb8be24c8fe870"
