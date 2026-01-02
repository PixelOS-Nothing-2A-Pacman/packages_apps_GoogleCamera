# Copyright (C) 2026 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := GoogleCamera
LOCAL_MODULE_TAGS := optional
LOCAL_SRC_FILES := prebuilt/Gcam.apk
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_DEX_PREOPT := false
LOCAL_UNCOMPRESS_DEX := false
LOCAL_OVERRIDES_PACKAGES := Aperture Snap Camera2
LOCAL_OPTIONAL_USES_LIBRARIES := \
    com.google.android.gestureservice \
    com.google.android.camera2 \
    com.google.android.camera.experimental2015 \
    com.google.android.camera.experimental2016 \
    com.google.android.camera.experimental2017 \
    com.google.android.camera.experimental2018 \
    com.google.android.camera.experimental2019 \
    com.google.android.camera.experimental2020 \
    com.google.android.camera.experimental2020_midyear \
    com.google.android.camera.experimental2021 \
    com.google.android.camera.experimental2022 \
    com.google.android.camera.experimental2023 \
    com.google.android.camera.experimental2024 \
    com.google.android.camera.experimental2024_system \
    com.google.android.camera.experimental2025 \
    wear-sdk \
    androidx.window.extensions \
    androidx.window.sidecar \
    com.google.android.wearable
LOCAL_REPLACE_PREBUILT_APK_INSTALLED := $(LOCAL_PATH)/prebuilt/Gcam.apk
LOCAL_PREBUILT_JNI_LIBS := \
    prebuilt/lib/arm64-v8a/libandroidx.graphics.path.so \
    prebuilt/lib/arm64-v8a/libannexbtoavcc.so \
    prebuilt/lib/arm64-v8a/libarcore_sdk_c.so \
    prebuilt/lib/arm64-v8a/libarcore_sdk_jni.so \
    prebuilt/lib/arm64-v8a/libbrotli.so \
    prebuilt/lib/arm64-v8a/libcyclops.so \
    prebuilt/lib/arm64-v8a/libeglimage.so \
    prebuilt/lib/arm64-v8a/libgcastartup.so \
    prebuilt/lib/arm64-v8a/libgxp.so \
    prebuilt/lib/arm64-v8a/libhotshot_object_detector_jni.so \
    prebuilt/lib/arm64-v8a/libimage.so \
    prebuilt/lib/arm64-v8a/libl2l_video_processor_utils_jni.so \
    prebuilt/lib/arm64-v8a/liblightcycle.so \
    prebuilt/lib/arm64-v8a/libnative.so \
    prebuilt/lib/arm64-v8a/libnative_crash_handler_jni.so \
    prebuilt/lib/arm64-v8a/libnative_utils_android.so \
    prebuilt/lib/arm64-v8a/liboliveoil.so \
    prebuilt/lib/arm64-v8a/libpairipcore.so \
    prebuilt/lib/arm64-v8a/librampatcher.so \
    prebuilt/lib/arm64-v8a/libsaliency_predictor_jni.so \
    prebuilt/lib/arm64-v8a/libsegmentation_predictor_jni.so \
    prebuilt/lib/arm64-v8a/libsmartcapture_native.so \
    prebuilt/lib/arm64-v8a/libspeechenhancer_jni_avenhrealtimenative.so
include $(BUILD_PREBUILT)
