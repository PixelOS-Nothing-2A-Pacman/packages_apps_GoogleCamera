android_vendor_GoogleCamera
===================
## How to use

1. Clone the repository to `vendor/GoogleCamera`

2. Extract the APK (required due to file size limits):
   **Linux:**
   ```bash
    cd vendor/GoogleCamera/prebuilt
    7z x xxx.7z.001
    mv xxx.apk Gcam.apk
   ```

3. Extract the library files from the APK:
   **Linux:**
   ```bash
    cd vendor/GoogleCamera/prebuilt
    unzip -o Gcam.apk 'lib/arm64-v8a/*' -d .
   ```

4. Add this line to your `device.mk` file in your device tree:
   ```make
   $(call inherit-product-if-exists, vendor/GoogleCamera/config.mk)
   ```