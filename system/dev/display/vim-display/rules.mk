# Copyright 2018 The Fuchsia Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

LOCAL_DIR := $(GET_LOCAL_DIR)

MODULE := $(LOCAL_DIR)

MODULE_TYPE := driver

MODULE_SRCS += \
    $(LOCAL_DIR)/vim-display.c \
    $(LOCAL_DIR)/hdmitx.c \
    $(LOCAL_DIR)/display-support.c \
    $(LOCAL_DIR)/hdmitx_clk.c \
    $(LOCAL_DIR)/canvas.c \
    $(LOCAL_DIR)/osd2.c \
    $(LOCAL_DIR)/edid.c \

MODULE_STATIC_LIBS := system/ulib/ddk system/ulib/sync

MODULE_LIBS := system/ulib/driver system/ulib/zircon system/ulib/c

include make/module.mk
