#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):112070656:4961732904c836fcf0b913e096983cb39311a7b5; then
  applypatch \
          --patch /vendor/recovery-from-boot.p \
          --source EMMC:/dev/block/by-name/boot$(getprop ro.boot.slot_suffix):100663296:9e0a7780d16234044a83c8e81a295cd58c1564a3 \
          --target EMMC:/dev/block/by-name/recovery$(getprop ro.boot.slot_suffix):112070656:4961732904c836fcf0b913e096983cb39311a7b5 && \
      (log -t install_recovery "Installing new recovery image: succeeded" && setprop vendor.ota.recovery.status 200) || \
      (log -t install_recovery "Installing new recovery image: failed" && setprop vendor.ota.recovery.status 454)
else
  log -t install_recovery "Recovery image already installed" && setprop vendor.ota.recovery.status 200
fi

