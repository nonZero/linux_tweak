#!/bin/bash

#Creating functions
"
#executing command with logging

function command($command,$file,$message) {
file=$(date +%F)-$(date +%H:%M:%S)-$command.log

message="Executing $command"
cat $message >> $file

$command >> $file

message="$command executed!"
cat $message >> $file

}
"
#end of function

prefix=customization.logs
sufix=$(date +%F)
logdirname=$prefix.$sufix

mkdir $logdirname



#some basic tweak

#Start up customization

echo "Tweaking rc.local..."
cp /etc/rc.local /etc/rc.local.backup
cp ./rclocal/rc.local /etc/rc.local
echo "Tweaking rc.local. Done!"

#Adding auto mounting WD ShareSpace

echo "Adding automount string to fstab..."
mkdir /mnt/wd
cp /etc/fstab /etc/fstab.backup
cat ./fstab/fstab.add >> /etc/fstab
echo "Automount string added!"

#Adding powersaving options to /etc/acpi/power.sh file

echo "Replacing default power.sh with tweaked power.sh file..."
cp /etc/acpi/power.sh /etc/acpi/power.sh.backup
cp ./power.sh /etc/acpi/power.sh
echo "power.sh tweaked"

#installing all deb files we have in a same folder

echo "Installing all DEB packages in current folder"
dpkg -i ./deb/*.deb
echo "All *.deb packeges installed!"

#make sure we're up to date

echo 'Checking that we are up to date'
apt-get update && apt-get upgrade && apt-get install -f

#installing all I normally use

echo "Installing Gnome-Commander"
apt-get install gnome-commander
echo "Gnome-Commander Installed"

echo 'Installing VLC'
apt-get install vlc

echo 'Installing LYNX'
apt-get install lynx

echo 'installing POWERTOP'
apt-get install powertop

echo 'installing IFTOP'
apt-get install iftop

#adding all repository we would need

#echo 'Adding additional repository'

#fingerprint gui
#echo 'Installing FINGERPRINT GUI'
#add-apt-repository ppa:fingerprint/fingerprint-gui
#apt-get update
#apt-get install libbsapi policykit-1-fingerprint-gui fingerprint-gui

#jupiter power saving tool
#add-apt-repository ppa:webupd8team/jupiter
#apt-get update
#apt-get install jupiter

#install wine 1.4
add-apt-repository ppa:ubuntu-wine/ppa
apt-get update
apt-get install wine1.4

#install GIMP 2.8
add-apt-repository ppa:otto-kesselgulasch/gimp
apt-get update
apt-get install gimp

#Ubuntu Tweak
#sudo add-apt-repository ppa:tualatrix/ppa
#sudo apt-get update
#sudo apt-get install ubuntu-tweak

#GTHUMB - photo editing/organization tool
#sudo add-apt-repository ppa:webupd8team/gthumb
#sudo apt-get update
#sudo apt-get install gthumb

#Cleaning Up

#moving all log files
mv *.log ./$logdirname