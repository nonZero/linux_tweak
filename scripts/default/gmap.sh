#!/bin/bash
#Re-mapping local folders to Google Drive

function remap {

#Going to home folder
cd ~

#Checking whether we should use a different path
if [ -z "$1" ]; then	
	default_path="Google Drive/Data"
	else
	default_path=$1
fi

#Mapping Videos folder
rm -r ~/Videos/ && ln -s ~/"$default_path"/Videos/ Videos
echo "Videos folder remaped"

#Mapping Music folder
rm -r ~/Music/ && ln -s ~/"$default_path"/Music/ Music
echo "Music folder remaped"

#Mapping Desktop folder
rm -r ~/Desktop/ && ln -s ~/"$default_path"/Desktop/ Desktop
echo "Desktop folder remaped"

#Mapping Documents folder
rm -r ~/Documents/ && ln -s ~/"$default_path"/Documents/ Documents
echo "Documents folder remaped"

echo "All folders remaped"

}

function move_data {

#Going to home folder 
cd ~

#Checking whether we should use a different path  
if [ -z "$1" ]; then
	default_path="Google Drive/Data"
	else
	default_path=$1
  fi
  
  echo "Moving Videos folder"
mv ~/Videos/* ~/"$default_path"/Videos
  echo "Videos folder moved"
  
  echo "Moving Music folder"
mv ~/Music/* ~/"$default_path"/Music
  echo "Music folder moved"
  
  echo "Moving Desktop folder"
mv ~/Desktop/* ~/"$default_path"/Desktop
  echo "Desktop folder moved"
  
  echo "Moving Documents folder"
mv ~/Documents/* ~/"$default_path"/Documents
  echo "Documents folder moved"
  
  echo "All folders moved"
}

clear

echo "You're about to remap your local folders (Documents, Pictures, Videos, Desktop) to your Google Drive\n\n"

echo "Do you want to move existing data? (y/n)"

read movedata

echo "Do you want to use default path to Google Drive? (~/Google Drive/Data) (y/n)"

read use_default_path

if [ "$use_default_path" = "n" ]; then

 echo "Please type path where Test folder will be located and press [Enter]"
 read actual_path

else
	
	actual_path="Google Drive/Data"

fi	 

if [ "$movedata" = "y" ]; then
	
	echo "Moving data now."
	move_data "$actual_path"
	echo "Remaping folders now."
	remap "$actual_path"

 else
 echo "User data will not be moved. Remapping folders now."
 remap "$actual_path"
fi
