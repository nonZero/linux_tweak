#!/bin/bash
clear

printf "This is a test script to check how paths are working\n"

echo "Please enter path"
read path

if [ ! -d "$path" ]; then
	mkdir "$path"
	folder_created=1
else
	folder_created=0
fi

echo "Please enter file name"
read filename

clear

printf "Now you will be presented with result\n"

echo "Your paths is: $path"
if [ "$folder_created" = 1 ]; then
	echo "This folder was created for this test."
else
	echo "This folder existed before this test."
fi
echo "Your file name is: $filename"
echo "Your result should be here: $path/$filename"
echo ""

touch "$path"/"$filename"

ls -lh "$path"/ | grep "$filename"

echo "Do you see your file? (y/n)"
read -n1 -s okay

if [ "$okay" = "y" ]; then
rm -v "$path"/"$filename"
	if [ "$folder_created" = 1 ]; then
		rm -v -r "$path"
	fi
else
	if [ "$okay" = "n" ]; then
	echo "Something went wrong, please contact yourself and press any button to restart"
	read -n1 -s
	clear
	else
	echo "Incorrect input"
	fi
fi