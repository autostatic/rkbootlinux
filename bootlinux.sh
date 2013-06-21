#!/system/bin/sh

# rkbootlinux - 0.1
#
# Read the README file for instructions

# Copyright: 2012 Alok Sinha <asinha@g8.net>
#            2013 Jeremy Jongepier <jeremy@autostatic.com>
#
# Released under GPL V2

# Setting up the variables
LOCN="/mnt/sdcard/linux"
LOG="/mnt/sdcard/linux.log"
DIRFILE="/mnt/sdcard/linux/usr/local/etc/rkbootlinux"
# This is the most likely device, when you use an USB stick
#DEVC="/dev/block/sda1"
# This is the likely device when you use a SD card
DEVC="/dev/block/mmcblk0p1"

# Mounting the memory card
umount $LOCN &> /dev/null
if [ ! -d "$LOCN" ]; 
  then mkdir -p $LOCN
fi
/system/bin/mount -t ext4 $DEVC $LOCN

# Action, after logging
echo "--------------------------------------" >> $LOG
echo $DT >> $LOG
echo "Instructed to boot into Linux, created $FILE, now rebooting." >>$LOG
echo "" >> $LOG

# This is where we create the $FILE and reboot
mkdir -p $DIRFILE
touch $DIRFILE/bootlinux
reboot recovery
