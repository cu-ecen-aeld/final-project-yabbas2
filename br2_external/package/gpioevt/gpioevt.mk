################################################################################
#
# gpioevt
#
################################################################################

GPIOEVT_VERSION = 793b21e9241c813b7e4534d1fe5564952a5420b5
GPIOEVT_SITE = $(call github,yabbas2,gpioevt-ldd,$(GPIOEVT_VERSION))

define GPIOEVT_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_GPIO_SYSFS)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
