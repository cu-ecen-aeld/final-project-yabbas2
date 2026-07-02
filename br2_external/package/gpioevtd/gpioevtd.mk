################################################################################
#
# gpioevtd
#
################################################################################

GPIOEVTD_VERSION = 33d760df5277d9c6aaa7e8fbced56a82782fbb28
GPIOEVTD_SITE = $(call github,yabbas2,gpioevt-daemon,$(GPIOEVTD_VERSION))

define GPIOEVTD_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define GPIOEVTD_INSTALL_TARGET_CMDS
    $(INSTALL) -D -m 0755 $(@D)/gpioevtd $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))
