#!/bin/bash

#Creating functions

#Exit function
function app_exit {
    echo $(date +%F).' '.$time.' '.'App exits normally' >> /logs/main.log
    quit
    }

#Launch function
function app_start {
    touch /logs/main.log
    echo $(date +%F).' '.$time.' '.'App started' >> /logs/main.log
    }

#Generates menus    
function main_menu {
    clear
    echo '### Welcome to Linux Tweak Tool ###'
    echo '############ Main Menu ############'
    echo '############ Ver. 0.2  ############'
    echo " "
if [ $1 = "0" ]; then
PS3='Please enter your choice: '
options=("Scripts" "Debs" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "Scripts")
            main_menu 1
            ;;
        "Debs")
            main_menu 2
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done
 else
	echo "Invalid argument. Exiting."
fi
    }

#end of function

main_menu 0
