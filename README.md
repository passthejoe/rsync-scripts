rsync-scripts
=============

Here is the basic rsync script I use to back up my desktop Linux system. It should also work for BSD systems. This version was created for Debian and follows the defaults for where that system tends to automount USB drives. As of mid-2013, I am running Fedora, and that system mounts the USB drives in a different place entirely.

The script is pretty much a one-liner. This repository also offers the *exclude file* that the script uses to keep the backup from wasting space and time during the operations. The exclude file is currently set up rather liberally. That means I'm backing up more than I need to at the moment. There are lots of potential files and directories that you might want to exclude in a typical desktop Linux system. Or you may want to back those up monthly instead of daily.

When I was using Thunderbird/Icedove heavily as my mail reader, backing up those files took a long time, and I found that excluding those directories from the main script and creating a separate script just to back up e-mail allowed the backups of everything that isn't email to happen much more quickly. I don't do it now, since I use a lot of webmail, but if you do use a local mail reader, I recommend it.

Last but very certainly not least, running `rsync` without a script is just asking for trouble. It's easy to sync in the "wrong" direction. Calling a script that I know works is the only way.

**Update in 2018:** I still use this same script with Fedora 28, though these days I'm not running Linux exclusively. I have been using Windows 10 (with the Windows Subsystem for Linux) as my main desktop, and I miss `rsync`. There is a for-pay `rsync` client for Windows, but I'm not anxious to start with that.

Despite my initial hopes, the WSL isn't meant for system-administration on the Windows side, so using the `rsync` from that Linux (which for me is Ubuntu) to back up Windows files is not an option.

I might be able to use the `rsync` that comes with [Cygwin](https://www.cygwin.com) to back up my Windows files. When using the Unix program [Unison](https://www.cis.upenn.edu/~bcpierce/unison) to mirror a Linux filesystem in Cygwin with a Linux filesystem on an external Linux server, I ran into permissions issues that I hope I won't run into using `rsync.` That would be the next step with my use of this script.

**January 2019:** I added a script called `rsync_with_variables.sh` that allows you to assign variables to your "from" and "to" directories, which makes the script slightly less brittle and prone to error.
