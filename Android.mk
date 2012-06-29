#LOCAL_PATH := $(my-dir)

#ifeq ($(TARGET_DEVICE),pico)
   # subdir_makefiles := \
    #    $(LOCAL_PATH)/libcamera/Android.mk \
	#$(LOCAL_PATH)/libaudio/Android.mk \
#        $(LOCAL_PATH)/brcm_patchram_plus/Android.mk
   # include $(subdir_makefiles)
  #include $(call all-named-subdir-makefiles, libaudio libcamera bdaddr_read gadget_id)

#endif
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),pico)
include $(call first-makefiles-under,$(call my-dir))
endif
