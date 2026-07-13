################################################################################
#
# gpioevtd
#
################################################################################

GPIOEVTD_VERSION = 991eb2a26b5d3b4c28e1005e40026887d9a8209b
GPIOEVTD_SITE = $(call github,yabbas2,gpioevt-daemon,$(GPIOEVTD_VERSION))

define GPIOEVTD_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define GPIOEVTD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/gpioevtd $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
