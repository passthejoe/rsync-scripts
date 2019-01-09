#!/bin/bash

# rsync script using Bash variables

# Copy From
# Put the directory you wish to copy from between the quotation marks.
# End with a "slash" (the / character) if you want to copy
# the contents of the directory but not the directory itself.
#
# End without a slash if you DO want to copy the directory
# and all of its contents.
#
# Example:
# copy_from="/home/steven/"

copy_from="rsync_from/"

# Copy To
# Put the directory you wish to copy to between the quotation marks
# Example:
# copy_to="/run/media/steven/Linux/fedora"

copy_to="rsync_to"

rsync -av --delete $copy_from $copy_to

exit 0
