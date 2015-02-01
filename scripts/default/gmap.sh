#!/bin/bash
#Re-mapping local folders to Google Drive

function remap {

#Going to home folder
cd ~
echo "Re-mapping folders now..."
echo ""
#Re-Mapping Videos folder
echo "[Started] Re-mapping Videos folder"
rm -r ~/Videos/ && ln -s ~/"$1"/Videos/ Videos
echo "[Done] Videos folder re-mapped"
echo ""

#Re-Mapping Music folder
echo "[Started] Re-mapping Music folder"
rm -r ~/Music/ && ln -s ~/"$1"/Music/ Music
echo "[Done] Music folder re-mapped"
echo ""

#Re-Mapping Desktop folder
echo "[Started] Re-mapping Desktop folder"
rm -r ~/Desktop/ && ln -s ~/"$1"/Desktop/ Desktop
echo "[Done] Desktop folder re-mapped"
echo ""

#Mapping Documents folder
echo "[Started] Re-mapping Documents folder"
rm -r ~/Documents/ && ln -s ~/"$1"/Documents/ Documents
echo "[Done] Documents folder re-mapped"
echo ""

#Mapping Pictures folder
echo "[Started] Re-mapping Pictures folder"
rm -r ~/Pictures/ && ln -s ~/"$1"/Pictures/ Pictures
echo "[Done] Documents folder re-mapped"
echo ""

echo "All folders re-mapped"
}

function move_data {

#Going to home folder 
cd ~
echo "Moving existing data now"
echo ""

echo "[Started] Moving Pictures folder"
mv ~/Pictures/* ~/"$1"/Pictures
echo "[Done] Videos folder moved"
echo ""

echo "[Started] Moving Videos folder"
mv ~/Videos/* ~/"$1"/Videos
echo "[Done] Videos folder moved"
echo ""
  
echo "[Started] Moving Music folder"
mv ~/Music/* ~/"$1"/Music
echo "[Done] Music folder moved"
echo ""
  
echo "[Started] Moving Desktop folder"
mv ~/Desktop/* ~/"$1"/Desktop
echo "[Done] Desktop folder moved"
echo ""
  
echo "[Started] Moving Documents folder"
mv ~/Documents/* ~/"$1"/Documents
echo "[Done] Documents folder moved"
echo ""

echo "All folders moved"
}

clear

#Welcome message
echo "Google Drive re-mapping script by Gourenko Alex aka Lord_Phoenix"
echo ""
printf "You're about to re-map your local folders (Documents, Pictures, Videos, Desktop) to your Google Drive\n\n"
echo "[Q] Do you want to move existing data?"

read -n1 -s -p "(y/n)" movedata

echo ""
echo "[Q] Please type path where Google Drive folder (EXAMPLE: /home/user/Google Drive) is located and press [Enter]"
echo "NOTE: do not use escape symbols for folders like 'User\ Name'"
	 
read -p "Path to Google Drive: " actual_path

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
	echo "[Error] Data move question received wrong input. Program terminated, please start over"
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
	move_data "$actual_path"
	remap "$actual_path"
		else
		echo "User data will not be moved!"
		echo ""
		remap "$actual_path"
	fi
	;;
	n)
	echo "Re-mapping aborted"
	exit 1
	;;
	*)
	echo "[Error] Incorrect input. Script terminated."
	exit 1
	;;
esac
