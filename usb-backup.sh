#! /bin/bash
#
# This simple script uses the Unix utility rsync to back up the /home directory to an external drive
#
# --delete allows for deletion of files on the backup that have been previously deleted on the source drive
#
# setting up an 'exclude' file to back up some directories and not others.
#
# The destination drive is in the path /media/ because this is where the GNOME 2.x/3.x
# desktop environment puts USB drives that are plugged into the system.
#
# I named my backup drive 'Linux.' Yours may very well have a different name. Adjust your script accordingly.
#
# The path to my exclude file -- /home/steven/Documents/shell_scripts/debian-squeeze/exclude -- is very likely different from yours. Adjust your script accordingly.
rsync -av --delete --exclude-from '/home/steven/Documents/shell_scripts/debian-squeeze/exclude' /home /media/Linux/debian
exit 0
