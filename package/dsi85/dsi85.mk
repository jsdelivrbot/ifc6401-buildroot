################################################################################
#
# dsi85
#
################################################################################


DSI85_VERSION = 241f587f
DSI85_SITE    = $(call github,madmo,dsi85,$(DSI85_VERSION))
DSI85_SITE_METHOD = git

DSI85_DEPENDENCIES = linux

define DSI85_BUILD_CMDS
	$(MAKE) $(LINUX_MAKE_FLAGS) -C $(LINUX_DIR) M=$(@D) modules
endef

define DSI85_INSTALL_TARGET_CMDS
	$(MAKE) $(LINUX_MAKE_FLAGS) -C $(LINUX_DIR) M=$(@D) modules_install
endef

$(eval $(generic-package))
