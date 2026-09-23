# Android device tree for samsung SM-M556B (m55xq)

## Make Lineage-23.2 Directory
```
mkdir lineage-23.2; cd lineage-23.2
```
## Init lineage-23.2
```
repo init -u https://github.com/LineageOS/android.git -b lineage-23.2 --git-lfs
```
## Lineage-23.2 Latest (lineage-23.2)
```
mkdir -p .repo/local_manifests

cat > .repo/local_manifests/roomservice.xml << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<project name="galaxy-m55xq/android_device_samsung_m55xq" path="device/samsung/m55xq" remote="github" revision="lineage-23.2" />
<project name="galaxy-m55xq/android_vendor_samsung_m55xq" path="vendor/samsung/m55xq" remote="github" revision="lineage-23.2" />
<project name="LineageOS/android_hardware_samsung" path="hardware/samsung" remote="github" revision="lineage-23.2" />
</manifest>
EOF
```
## Manifest: M556BXXS4BYH2
```
mkdir -p .repo/local_manifests

cat > .repo/local_manifests/roomservice.xml << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<project name="galaxy-m55xq/android_device_samsung_m55xq" path="device/samsung/m55xq" remote="github" revision="M556BXXS4BYH2" />
<project name="galaxy-m55xq/android_vendor_samsung_m55xq" path="vendor/samsung/m55xq" remote="github" revision="M556BXXS4BYH2" />
<project name="LineageOS/android_hardware_samsung" path="hardware/samsung" remote="github" revision="lineage-23.2" />
</manifest>
EOF
```
## Manifest M556BXXS5DZF2
```
mkdir -p .repo/local_manifests

cat > .repo/local_manifests/roomservice.xml << 'EOF'
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
<project name="galaxy-m55xq/android_device_samsung_m55xq" path="device/samsung/m55xq" remote="github" revision="M556BXXS5DZF2" />
<project name="galaxy-m55xq/android_vendor_samsung_m55xq" path="vendor/samsung/m55xq" remote="github" revision="M556BXXS5DZF2" />
<project name="LineageOS/android_hardware_samsung" path="hardware/samsung" remote="github" revision="lineage-23.2" />
</manifest>
EOF
```
## Repo Sync
```
Repo Sync
```

## Build
```
. build/envsetup.sh
lunch lineage_m55xq-bp4a-userdebug
mka bacon
```

#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#
