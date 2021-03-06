rkbootlinux 0.1
===============

Released under GPL V2  
Disclaimer: Before you start the installation or even reading this document. Be aware and forewarned that reading this document and/or installing this package on your system will most definitely damage it beyond repair. Once damaged, you and only you are responsible and liable for all the good things, not so good things, the bad things and the very bad things that will happen to you. I am not responsible for any damage - install and secure your system the way a prudent man would.

Copyright: 2012 Alok Sinha <asinha@g8.net>  
           2013 Jeremy Jongepier <jeremy@autostatic.com>

This script gives you the flexibility to automatically load into Linux or Android, based on your choice.  
Based on what you want, the system can either boot into Linux automatically (it firsts boot into android and then goes into Linux) or remain in Android.  
From linux, when you need to come back to android, you need to run /usr/local/bin/bootandroid.sh


_Package Contents_  
The package consists of three files  
         40bootlinux    - The main switch file, that checks on each boot - Android platform  
         bootlinux.sh - The script that prepares the android system for booting into Linux automatically from next time, AND boots into Linux - Android platform  
         bootandroid.sh - This script prepares the Linux system into booting into Android from next boot onwards AND boots into Android. - Linux  
         README  - This file


_Files/directory it creates_  
        /mnt/sdcard/linux - This directory is created by the script for mounting and testing. This directory is created, after first run - Android  
           /mnt/sdcard/linux.log - This is a rudimentary log file of the actions the script is taking.


_How does it work_  
It's quite simple actually.  
All of it revolves around a file called 'bootlinux'.  
This file is located under Linux at /usr/local/etc/rkbootlinux/bootlinux  
bootlinux.sh	- Creates this file (from Android)  
bootandroid.sh	- Deletes this file (from Linux)  
40bootlinux	- Checks at the boot time of android, if /usr/local/etc/rkbootlinux/bootlinux exists - if it does, it reboots into recovery, if not, it stays in Android.  


_Before Installation_  
1. This script is useful to you, only if you have a setup with a rooted android RK3066 based device - tested on Finless Bobs 1.5a/1.7 ROMs, with Krizs ROM  
2. It assumes that you have installed the AndrewDB linux 0.2 or 0.3 alpha or more on to your system. And manual boot into Linux (Reboot recovery) is working fine.  
3. If you have not done the above, go back and install these - THEN move forward.


_Installation Instructions_  
   Installing '40bootlinux'  
      - Target: Android.  
      - Download ES File Explorer (ESFE) from Google play  
      - Configure it to mount the root system in WRITE mode.  
      - Launch the ESFE.  
      - Copy '40bootlinux' into /etc/init.d/  
      - If the copy command does not succeed, then check the ESFE settings, you may not have set the root option properly
    
   Installing bootlinux.sh  
      - Target: Android  
      - Create directory /system/usr/local/bin  
      - Copy this file into /system/usr/local/bin folder  
      - chmod 755 /system/usr/local/bin/bootlinux.sh  
      - Now you can run it either in Terminal  
        or  
      - You can use the SManager (download from google play) Widget to create a widget of this script on your desktop

   Installing bootandroid.sh  
      - Target: Linux  
      - Once you have booted into Linux, just copy this file into /usr/local/bin/  
      - chmod 755 /usr/local/bin/bootandroid.sh  
      - Use the launcher to create an icon on your desktop for convenience. 


If you get stuck, yell... if we hear you, we will try to connect. :)


Team Picuntu

Jeremy
