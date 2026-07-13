################################################################################
#
# gpioevt
#
################################################################################

GPIOEVT_VERSION = aac5f81b5b16fce78f7f3645b434f0488ea13de6
GPIOEVT_SITE = $(call github,yabbas2,gpioevt-ldd,$(GPIOEVT_VERSION))

define GPIOEVT_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_GPIO_SYSFS)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
