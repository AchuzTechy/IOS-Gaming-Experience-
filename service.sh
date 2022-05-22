#!/system/bin/sh
# Please don't hardcode /magisk/modname/... ; instead, please use $MODDIR/...
# This will make your scripts compatible even if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode
# More info in the main Magisk thread

# Do not use /iUnlocker* Stuff to your module
# Because it will not work 
#
su -c /data/local/tmp/Booster/iUnlocker_BOOST.net
#
su -c /data/local/tmp/Booster/iUnlocker_SP
#
su -c /data/local/tmp/Booster/ADDON_OPS


# # Safety Net by kDrag0n Modified by Taylo | @V9y_7V3
if getprop ro.build.id | grep -q SPB2; then
    stop keystore2
    start keystore2
fi
