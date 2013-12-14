linux_tweak
===========

Linux_Tweak is my attempt to ease my and probably someone elses life with Linux.
There so many simple steps that you need to take everytime you have a fresh install
or you just join linux world that I do not understand why it's not simplified yet.

As a fiar example Bluetooth status at startup...you know what I mean right?

--------App Structure--------------------------------

main_script.sh - main script
config - settings for the app
/packages/ - folder for packages to install
/packages/debs/ - deb packages
/packages/debs/done/ - installed packages
/tweakers/ - folder for various tweakers
/data/ - data for twekers to use
/data/$tweaker_name - folder for $tweaker_name's data
/logs/ - log folder

--------Content of /tweakers/------------------------

rc.local.sh - tweaker of rc.local file
fstab.sh - tweaker of fstab file
power.sh - tweaker of power.sh file
apt.sh - apt-get tool
