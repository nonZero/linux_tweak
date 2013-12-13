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
