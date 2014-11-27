#!/bin/bash
#Re-mapping local folders to Google Drive

function remap {

if [ -z "$1" ]; then
	
	default_path="Google Drive/Data"
	
else
	
	default_path=$1
	
  fi

#Going to home folder
cd ~

#Mapping Test folder
rm -r ~/Test/ && ln -s ~/"$default_path"/Test/ Test

echo "Test folder remaped"

echo "All folders remaped"

}

function move_data {
  
  cd ~
  
if [ -z "$1" ]; then
	
	default_path="Google Drive/Data"
	
else
	
	default_path=$1
	
  fi
  
  echo "Moving Test folder"
 mv ~/Test/* ~/"$default_path"/Test
  echo "Test folder moved"
  
  echo "All folders moved"
}

clear

printf "You're about to remap your local folder (Test) to your Google Drive\n\n"

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
