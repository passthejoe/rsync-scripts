#! /bin/bash
#
# Use rsync to back up the /home directory to an external drive
#
# --delete allows for deletion of files on the backup that have been previously deleted on the source drive
#
# setting up an 'exclude' file to back up some directories and not others.
#
# The destination drive is in the path /media/ because this is where the GNOME 2.x/3.x
# desktop environment puts USB drives that are plugged into the system
#
rsync -av --delete --exclude-from '/home/steven/Documents/shell_scripts/debian-squeeze/exclude' /home /media/Linux/debian
exit 0
