#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),X6833B)

#Dirty Fix For 5GHz

include $(CLEAR_VARS)
LOCAL_MODULE := replace_hostapd
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := FAKE

LOCAL_REQUIRED_MODULES := hostapd

LOCAL_POST_INSTALL_CMD := \
    cp -f $(LOCAL_PATH)/blobs/hostapd $(TARGET_OUT_VENDOR)/bin/hw/hostapd

include $(BUILD_PHONY_PACKAGE)

include $(call all-makefiles-under,$(LOCAL_PATH))
endif
