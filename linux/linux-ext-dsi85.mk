################################################################################
# Linux dsi85 extensions
#
# Patch the linux kernel with dsi85 extension
################################################################################

LINUX_EXTENSIONS += dsi85

define DSI85_PREPARE_KERNEL
	mkdir -p $(LINUX_DIR)/drivers/gpu/drm/bridge/dsi85; \
	cp -dpfr $(DSI85_DIR)/* $(LINUX_DIR)/drivers/gpu/drm/bridge/dsi85/ ; \
	echo "source \"drivers/gpu/drm/bridge/dsi85/Kconfig\"" \
		>> $(LINUX_DIR)/drivers/gpu/drm/bridge/Kconfig ; \
	echo 'obj-y += dsi85/' >> $(LINUX_DIR)/drivers/gpu/drm/bridge/Makefile
endef
