#!/bin/bash

set -e

cat "${BINARIES_DIR}/zImage" "${BINARIES_DIR}/linux.dtb" > "${BINARIES_DIR}/zImage-dtb"
