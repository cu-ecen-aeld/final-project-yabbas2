################################################################################
#
# gpioevt
#
################################################################################

GPIOEVT_VERSION = 758121bd3aafe91f82e330b88a675e1df4f756e7
GPIOEVT_SITE = $(call github,yabbas2,gpioevt-ldd,$(GPIOEVT_VERSION))

define GPIOEVT_LINUX_CONFIG_FIXUPS
	$(call KCONFIG_ENABLE_OPT,CONFIG_GPIO_SYSFS)
endef

$(eval $(kernel-module))
$(eval $(generic-package))
