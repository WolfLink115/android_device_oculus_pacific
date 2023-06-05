#!/sbin/sh

# remove the cache directory before rebooting to system, to avoid Android rescue party triggers on new ROM installations
rm -rf /data/cache/;
exit 0;
#
