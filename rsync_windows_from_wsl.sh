#!/bin/bash

# This script uses the rsync from the Windows Subsystem for Linux in Windows 10 to backup files on the Windows side of the system

# While working on your WSL (in my case Ubuntu) files with Windows programs can cause problems, there is supposedly nothing wrong with using programs in the WSL to modify files on the Windows side.

# For test purposes, I am syncing the contents of one directory in my current working directory to another directory in that same working directory

# The slash after the first directory (the "sync from" directory) means sync the contents and not the directory itself. Remove the slash to copy this entire directory, including the directory itself, into the target (or "to") directory

rsync -av --delete rsync_from/ rsync_to

# here is the full path if you were running this rsync command from your WSL home directory - my user is named steve. Please modify to fit your user name and path

rsync -av --delete /mnt/c/Users/steve/OneDrive/Documents/rsync_from/ /mnt/c/Users/steve/OneDrive/Documents/rsync_to

exit 0
