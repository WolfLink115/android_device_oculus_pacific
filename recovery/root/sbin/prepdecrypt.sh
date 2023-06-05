#!/sbin/sh

tmp="/dev/tmp"
tool="magiskboot"
suffix=$(getprop ro.boot.slot_suffix)
bootpath="/dev/block/bootdevice/by-name/boot$suffix"
is_fastboot_twrp=$(getprop ro.boot.fastboot)
RESET_P=$(which resetprop)
if [ -z "$RESET_P" ]; then
   RESET_P=$(which setprop)
fi

if [ "$is_fastboot_twrp" != "1" ]; then 
	mkdir -p "$tmp" && cd "$tmp" && cp -f "/sbin/$tool" "$tmp" && chmod 755 "$tool"
	$tool unpack -h "$bootpath" # Unpack the boot image to the working directory
	# Read the needed values from the boot header
	osver=$(grep -i 'os_version=' "$tmp/header" | cut -f2 -d'=' -s)
	patchlevel=$(grep -i 'os_patch_level=' "$tmp/header"  | cut -f2 -d'=' -s)
	patchlevel="$patchlevel-01" # Add "-01" at the end of $patchlevel because it's needed
	# Set the OS version and security patch level props to the values taken from the boot header to make decryption (in installed TWRP) work
	$RESET_P "ro.build.version.release" "$osver"
	$RESET_P "ro.build.version.security_patch" "$patchlevel"
	$tool cleanup && cd "/" && rm -rf "$tmp" # Delete the working directory
fi

$RESET_P crypto.ready 1 # Set crypto.ready to 1 so that the decryption services can start
exit 0

