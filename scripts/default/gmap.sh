#!/bin/bash
#Re-mapping local folders to Google Drive

function remap {

#Going to home folder
cd ~

#Mapping Videos folder
rm -r ~/Videos/ && ln -s ~/"$1"/Videos/ Videos
echo "Videos folder remaped"

#Mapping Music folder
rm -r ~/Music/ && ln -s ~/"$1"/Music/ Music
echo "Music folder remaped"

#Mapping Desktop folder
rm -r ~/Desktop/ && ln -s ~/"$1"/Desktop/ Desktop
echo "Desktop folder remaped"

#Mapping Documents folder
rm -r ~/Documents/ && ln -s ~/"$1"/Documents/ Documents
echo "Documents folder remaped"

echo "All folders remaped"

}

function move_data {

#Going to home folder 
cd ~

  echo "Moving Videos folder"
mv ~/Videos/* ~/"$1"/Videos
  echo "Videos folder moved"
  
  echo "Moving Music folder"
mv ~/Music/* ~/"$1"/Music
  echo "Music folder moved"
  
  echo "Moving Desktop folder"
mv ~/Desktop/* ~/"$1"/Desktop
  echo "Desktop folder moved"
  
  echo "Moving Documents folder"
mv ~/Documents/* ~/"$1"/Documents
  echo "Documents folder moved"
  
  echo "All folders moved"
}

clear

#Welcome message
echo "Google Drive re-mapping script by Gourenko Alex aka Lord_Phoenix"
echo ""
printf "You're about to re-map your local folders (Documents, Pictures, Videos, Desktop) to your Google Drive\n\n"
echo "[Q] Do you want to move existing data? (y/n)"

read -n1 -s movedata

echo "[Q] Please type path where Google Drive folder (EXAMPLE: /home/user/Google Drive) is located and press [Enter]"
echo "NOTE: do not use escape symbols for folders like 'User\ Name'"
	 
read -p "Path to Google Driver: " actual_path

#now we are ready to start, showing summary first

clear
	
printf "Please review imminent actions below\n"

echo "Your Google Drive location is: $actual_path"

case $movedata in
	y)
	echo "Your existing data will be moved to Google Drive first"
	;;
	n)
	echo "Your existing data will NOT be moved to Google Drive"
	;;
	*)
	echo "Data move question received wrong input. Program terminated, please start over"
	exit 1
	;;
esac

echo "------------------------------"
echo "Do you wish to continue? (y/n)"

read -n1 -s goon

#Now we act according to Go On var

case $goon in
	y)
	if [ "$movedata" = "y" ]; then
	echo "Moving data now."
	move_data "$actual_path"
	echo "Remaping folders now."
	remap "$actual_path"
		else
		echo "User data will not be moved. Remapping folders now."
		remap "$actual_path"
	fi
	;;
	n)
	echo "Re-mapping aborted"
	exit 1
	;;
	*)
	echo "Incorrect input. Script terminated."
	exit 1
	;;
esac