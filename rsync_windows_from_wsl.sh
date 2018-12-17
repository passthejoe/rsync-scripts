#!/bin/bash

# This script uses the rsync from the Windows Subsystem for Linux in Windows 10 to backup files on the Windows side of the system

# While working on your WSL (in my case Ubuntu) files with Windows programs can cause problems, there is supposedly nothing wrong with using programs in the WSL to modify files on the Windows side.

# The slash after the first directory (the "sync from" directory) means sync the contents and not the directory itself. Remove the slash to copy this entire directory, including the directory itself, into the target (or "to") directory

# This version syncs two directories that are in your current working directory:

# rsync -av --delete rsync_from/ rsync_to

# This version uses the full path if you were running this rsync command from your WSL home directory. My user is named steve. Please modify to fit your user name and path:

rsync -av --delete /mnt/c/Users/steve/OneDrive/Documents/rsync_from/ /mnt/c/Users/steve/OneDrive/Documents/rsync_to

exit 0
