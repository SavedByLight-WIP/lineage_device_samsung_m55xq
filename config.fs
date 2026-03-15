# Qualcomm-specific AID definitions
# Values must be within vendor reserved range (2900-2999) [citation:3]

[AID_VENDOR_QTI_DIAG]
value: 2901

[AID_VENDOR_QDSS]
value: 2902

[AID_VENDOR_RFS]
value: 2903

[AID_VENDOR_RFS_SHARED]
value: 2904

[AID_VENDOR_ADPL_ODL]
value: 2905

[AID_VENDOR_QRTR]
value: 2906

# Vendor binary permissions and capabilities
# Format: [path] mode: user: group: caps: [citation:2]

[vendor/bin/pm-service]
mode: 0755
user: AID_SYSTEM
group: AID_SYSTEM
caps: NET_BIND_SERVICE SYS_BOOT

[vendor/bin/imsdatadaemon]
mode: 0755
user: AID_RADIO
group: AID_RADIO
caps: NET_BIND_SERVICE

[vendor/bin/imsrcsd]
mode: 0755
user: AID_RADIO
group: AID_RADIO
caps: NET_BIND_SERVICE BLOCK_SUSPEND WAKE_ALARM

[vendor/bin/cnd]
mode: 0755
user: AID_SYSTEM
group: AID_SYSTEM
caps: NET_BIND_SERVICE NET_ADMIN BLOCK_SUSPEND

[vendor/bin/loc_launcher]
mode: 0755
user: AID_GPS
group: AID_GPS
caps: SETUID SETGID

[vendor/bin/sensors.qti]
mode: 0755
user: AID_SYSTEM
group: AID_SYSTEM
caps: NET_BIND_SERVICE

# Directory permissions for critical mount points [citation:4]
[persist/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[firmware/]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[vendor/firmware_mnt/image/*]
mode: 0771
user: AID_SYSTEM
group: AID_SYSTEM
caps: 0

[dsp/]
mode: 0771
user: AID_MEDIA
group: AID_MEDIA
caps: 0
