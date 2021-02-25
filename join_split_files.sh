#!/bin/bash

cat bootRE/boot.elf.* 2>/dev/null >> bootRE/boot.elf
rm -f bootRE/boot.elf.* 2>/dev/null
cat system/system/apex/com.android.art.release.apex.* 2>/dev/null >> system/system/apex/com.android.art.release.apex
rm -f system/system/apex/com.android.art.release.apex.* 2>/dev/null
cat system/system/apex/com.android.vndk.current.apex.* 2>/dev/null >> system/system/apex/com.android.vndk.current.apex
rm -f system/system/apex/com.android.vndk.current.apex.* 2>/dev/null
cat system/system/app/HoneyBoard/HoneyBoard.apk.* 2>/dev/null >> system/system/app/HoneyBoard/HoneyBoard.apk
rm -f system/system/app/HoneyBoard/HoneyBoard.apk.* 2>/dev/null
cat system/system/priv-app/AREmoji/AREmoji.apk.* 2>/dev/null >> system/system/priv-app/AREmoji/AREmoji.apk
rm -f system/system/priv-app/AREmoji/AREmoji.apk.* 2>/dev/null
cat system/system/priv-app/AREmojiEditor/AREmojiEditor.apk.* 2>/dev/null >> system/system/priv-app/AREmojiEditor/AREmojiEditor.apk
rm -f system/system/priv-app/AREmojiEditor/AREmojiEditor.apk.* 2>/dev/null
cat system/system/priv-app/DualOutFocusViewer_R/DualOutFocusViewer_R.apk.* 2>/dev/null >> system/system/priv-app/DualOutFocusViewer_R/DualOutFocusViewer_R.apk
rm -f system/system/priv-app/DualOutFocusViewer_R/DualOutFocusViewer_R.apk.* 2>/dev/null
cat system/system/priv-app/LiveStickers/LiveStickers.apk.* 2>/dev/null >> system/system/priv-app/LiveStickers/LiveStickers.apk
rm -f system/system/priv-app/LiveStickers/LiveStickers.apk.* 2>/dev/null
cat system/system/priv-app/MultipleWallpaperResource/MultipleWallpaperResource.apk.* 2>/dev/null >> system/system/priv-app/MultipleWallpaperResource/MultipleWallpaperResource.apk
rm -f system/system/priv-app/MultipleWallpaperResource/MultipleWallpaperResource.apk.* 2>/dev/null
cat system/system/priv-app/OneDrive_Samsung_v3/OneDrive_Samsung_v3.apk.* 2>/dev/null >> system/system/priv-app/OneDrive_Samsung_v3/OneDrive_Samsung_v3.apk
rm -f system/system/priv-app/OneDrive_Samsung_v3/OneDrive_Samsung_v3.apk.* 2>/dev/null
cat system/system/priv-app/SamsungCoreServices/SamsungCoreServices.apk.* 2>/dev/null >> system/system/priv-app/SamsungCoreServices/SamsungCoreServices.apk
rm -f system/system/priv-app/SamsungCoreServices/SamsungCoreServices.apk.* 2>/dev/null
cat system/system/priv-app/SecSettings/SecSettings.apk.* 2>/dev/null >> system/system/priv-app/SecSettings/SecSettings.apk
rm -f system/system/priv-app/SecSettings/SecSettings.apk.* 2>/dev/null
cat system/system/priv-app/YourPhone_P1_5/YourPhone_P1_5.apk.* 2>/dev/null >> system/system/priv-app/YourPhone_P1_5/YourPhone_P1_5.apk
rm -f system/system/priv-app/YourPhone_P1_5/YourPhone_P1_5.apk.* 2>/dev/null
cat product/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null >> product/app/WebViewGoogle/WebViewGoogle.apk
rm -f product/app/WebViewGoogle/WebViewGoogle.apk.* 2>/dev/null
cat product/app/YouTube/YouTube.apk.* 2>/dev/null >> product/app/YouTube/YouTube.apk
rm -f product/app/YouTube/YouTube.apk.* 2>/dev/null
cat product/priv-app/GmsCore/GmsCore.apk.* 2>/dev/null >> product/priv-app/GmsCore/GmsCore.apk
rm -f product/priv-app/GmsCore/GmsCore.apk.* 2>/dev/null
cat product/priv-app/Velvet/Velvet.apk.* 2>/dev/null >> product/priv-app/Velvet/Velvet.apk
rm -f product/priv-app/Velvet/Velvet.apk.* 2>/dev/null
cat .git/objects/pack/pack-d3c46d100550111d87ee200bd0ab86a65c6f6338.pack.* 2>/dev/null >> .git/objects/pack/pack-d3c46d100550111d87ee200bd0ab86a65c6f6338.pack
rm -f .git/objects/pack/pack-d3c46d100550111d87ee200bd0ab86a65c6f6338.pack.* 2>/dev/null
cat boot.img.* 2>/dev/null >> boot.img
rm -f boot.img.* 2>/dev/null
cat recovery.img.* 2>/dev/null >> recovery.img
rm -f recovery.img.* 2>/dev/null
