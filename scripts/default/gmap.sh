#!/bin/bash
#Re-mapping local folders to Google Drive

function remap {

default_path="Google\ Drive/Data"

  if [ -n "$1" ]; then
   default_path = $1
  fi

#Going to home folder
cd ~

#Mapping Videos folder
rm -r Videos/ && ln -s $default_path/Videos/ Videos
echo "Videos folder remaped"

#Mapping Music folder
rm -r Music/ && ln -s $default_path/Music/ Music
echo "Music folder remaped"

#Mapping Desktop folder
rm -r Desktop/ && ln -s $default_path/Desktop/ Desktop
echo "Desktop folder remaped"

#Mapping Documents folder
rm -r Documents/ && ln -s $default_path/Documents/ Documents
echo "Documents folder remaped"

echo "All folders remaped"

}

function move_data {
  
  cd ~
  
  $default_path="Google\ Drive/Data"
  
  if [ -n "$1" ]; then
   default_path = $1
  fi
  
  echo "Moving Videos folder"
  mv -r Videos $default_path/Videos
  echo "Videos folder moved"
  
  echo "Moving Music folder"
  mv -r Music $default_path/Music
  echo "Music folder moved"
  
  echo "Moving Desktop folder"
  mv -r Desktop $default_path/Desktop
  echo "Desktop folder moved"
  
  echo "Moving Documents folder"
  mv -r Documents $default_path/Documents
  echo "Documents folder moved"
  
  echo "All folders moved"
}

echo "You're about to remap your local folders (Music, Videos, Desktop, Documents) to your Google Drive"

echo "Are these folders currently empty? (y/n)"

read movedata

echo "Do you want to use default path to Google Drive? (~/Google Drive/Data) (y/n)"

read use_default_path

if ["$use_default_path" = "n"]; then

 echo "Please type path where Music, Videos, Desktop, Documents folders will be located and press [Enter]"
 read actual_path

fi


if ["$movedata" = "n"]; then
 echo "Moving data now."
 move_data $actual_path
 echo "Remaping folders now."
 remap $actual_path
 else
  echo "User data will not be moved. Remapping folders now."
  remap $actual_path
fi
