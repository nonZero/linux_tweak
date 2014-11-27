#!/bin/bash

printf "This is a test script to check how paths are working\n"

echo "Please enter path"
read path
echo "Please enter file name"
read filename

clear

printf "Now you will be presented with result\n"

touch "$path"/"$file"

ls "$path"

echo "Do you see your file? (y/n)"
read okay

if [ $okay = "y" ]; then
rm -v "$path"/"$file"
else
	read -p "Something went wrong, please contact yourself and press any button to exit" -n 1 -s
fi