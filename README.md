rsync-scripts
=============

Here is the basic rsync script I use to back up my desktop Linux system. It should also work for BSD systems. This version was created for Debian and follows the defaults for where that system tends to automount USB drives. As of mid-2013, I am running Fedora, and that system mounts the USB drives in a different place entirely.

The script is pretty much a one-liner. This repository also offers the *exclude file* that the script uses to keep the backup from wasting space and time during the operations. The exclude file is currently set up rather liberally. That means I'm backing up more than I need to at the moment. There are lots of potential files and directories that you might want to exclude in a typical desktop Linux system. Or you may want to back those up monthly instead of daily.

When I was using Thunderbird/Icedove heavily as my mail reader, backing up those files took a long time, and I found that excluding those directories from the main script and creating a separate script just to back up e-mail allowed the backups of everything that isn't email to happen much more quickly. I don't do it now, since I use a lot of webmail, but if you do use a local mail reader, I recommend it.
