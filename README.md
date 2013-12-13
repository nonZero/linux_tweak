linux_tweak
===========

App Structure

main_script.sh - main script
config - settings for the app
/packages/ - folder for packages to install
/packages/debs/ - deb packages
/packages/debs/done/ - installed packages
/tweakers/ - folder for various tweakers
/data/ - data for twekers to use
/data/$tweaker_name - folder for $tweaker_name's data
/logs/ - log folder

Content of /tweakers/

rc.local.sh - tweaker of rc.local file
fstab.sh - tweaker of fstab file
power.sh - tweaker of power.sh file
apt.sh - apt-get tool
