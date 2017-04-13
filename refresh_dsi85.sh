#!/bin/bash

DSI85SRC=../dsi85
DSI85KERNEL=output/build/linux-93520092b9a442f09f943b57bd3f4648409e4a0a/drivers/gpu/drm/bridge/dsi85

rsync -rv --exclude=.git --delete-after "${DSI85SRC}/" "${DSI85KERNEL}/"
