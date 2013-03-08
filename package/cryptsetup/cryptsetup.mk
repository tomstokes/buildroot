CRYPTSETUP_VERSION = 1.6.0
CRYPTSETUP_SOURCE = cryptsetup-$(CRYPTSETUP_VERSION).tar.bz2
CRYPTSETUP_SITE = http://cryptsetup.googlecode.com/files
CRYPTSETUP_INSTALL_STAGING = NO
CRYPTSETUP_INSTALL_TARGET = YES
CRYPTSETUP_CONF_OPT = --with-libgcrypt-prefix=$(STAGING_DIR)/usr
CRYPTSETUP_DEPENDENCIES = \
	lvm2 \
	libgcrypt \
	popt \
	e2fsprogs

$(eval $(call autotools-package))
