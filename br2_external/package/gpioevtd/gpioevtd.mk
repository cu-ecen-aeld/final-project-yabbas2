################################################################################
#
# gpioevtd
#
################################################################################

GPIOEVTD_VERSION = 8f070901059be0bc7d5eb1ad335b91ac3596d86f
GPIOEVTD_SITE = $(call github,yabbas2,gpioevt-daemon,$(GPIOEVTD_VERSION))

define GPIOEVTD_BUILD_CMDS
    $(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define GPIOEVTD_INSTALL_TARGET_CMDS
    $(INSTALL) -m 0755 $(@D)/gpioevtd $(TARGET_DIR)/usr/bin
endef

$(eval $(generic-package))

