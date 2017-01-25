#!/bin/bash

set -e

abootimg --create "${BINARIES_DIR}/zImage-dtb.img" -k "${BINARIES_DIR}/zImage-dtb" -r "${BINARIES_DIR}/rootfs.cpio.xz" -f "board/ifc6401/bootimg.cfg"
