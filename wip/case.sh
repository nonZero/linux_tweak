#!/bin/bash

clear

if [ -z $1 ]; then
echo "Main menu"
echo "1. Print Hello"
echo "2. Print World"
echo "3. Print Hello World"
echo "4. Print Hello, World!"
echo "5. Exit"

read -n1 -s menu
else
	menu="$1"
fi

case $menu in
	1)
	echo "Hello"
	;;
	2)
	echo "World"
	;;
	3)
	echo "Hello World"
	;;
	4)
	echo "Hello, World!"
	;;
	5)
	exit 1
	;;
	*)
	echo "Incorrect input"
	exit 1
esac
	