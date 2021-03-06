#############################################################
#
# PCRE
#
#############################################################

PCRE_VERSION = 8.32
PCRE_SITE = ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre
PCRE_LICENSE = BSD-3c
PCRE_LICENSE_FILES = LICENCE
PCRE_INSTALL_STAGING = YES
PCRE_CONFIG_SCRIPTS = pcre-config

ifneq ($(BR2_INSTALL_LIBSTDCPP),y)
# pcre will use the host g++ if a cross version isn't available
PCRE_CONF_OPT = --disable-cpp
endif

PCRE_CONF_OPT += $(if $(BR2_PACKAGE_PCRE_8),--enable-pcre8,--disable-pcre8)
PCRE_CONF_OPT += $(if $(BR2_PACKAGE_PCRE_16),--enable-pcre16,--disable-pcre16)
PCRE_CONF_OPT += $(if $(BR2_PACKAGE_PCRE_32),--enable-pcre32,--disable-pcre32)

$(eval $(autotools-package))
