#
# Copyright (C) 2018-2020 OrangeFox Recovery Project
# Please maintain this if you use this script or any part of it
#
# This software is licensed under the terms of the GNU General Public
# License version 2, as published by the Free Software Foundation, and
# may be copied, distributed, and modified under those terms.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# See <http://www.gnu.org/licenses/>.
#
FDEVICE="bacon"
if [ "$1" = "$FDEVICE" -o "$FOX_BUILD_DEVICE" = "$FDEVICE" ]; then
   	export TW_DEFAULT_LANGUAGE="en"
   	export FOX_USE_BASH_SHELL="1"
   	export FOX_ASH_IS_BASH="1"
   	export FOX_USE_NANO_EDITOR="1"
	export FOX_USE_TAR_BINARY="1"
	export FOX_USE_ZIP_BINARY="1"
   	export FOX_REPLACE_BUSYBOX_PS="1"
   	export FOX_USE_TWRP_RECOVERY_IMAGE_BUILDER="1"
   	export OF_USE_MAGISKBOOT_FOR_ALL_PATCHES="1"
	export OF_USE_NEW_MAGISKBOOT="1"
   	export OF_USE_MAGISKBOOT="1"
	export TARGET_DEVICE_ALT="A0001"
	export OF_MAINTAINER="xawlw"
	export FOX_RECOVERY_INSTALL_PARTITION="/dev/block/mmcblk0p17"
	export OF_USE_GREEN_LED="1"
	export OF_FL_PATH1="/sys/class/leds/led:flash_0"
	export OF_FL_PATH2="/sys/class/leds/led:flash_1"
	   	
	# let's log what are the build VARs that we used
	if [ -n "$FOX_BUILD_LOG_FILE" -a -f "$FOX_BUILD_LOG_FILE" ]; then
  	   export | grep "FOX" >> $FOX_BUILD_LOG_FILE
  	   export | grep "OF_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TW_" >> $FOX_BUILD_LOG_FILE
  	   export | grep "TARGET_" >> $FOX_BUILD_LOG_FILE
  	fi
  	
	add_lunch_combo omni_"$FDEVICE"-eng
	add_lunch_combo omni_"$FDEVICE"-userdebug
fi
#