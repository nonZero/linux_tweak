#!/bin/bash
#Linux Tweak Tool
#By Alex Gourenko aka Lord_Phoenix
#Version 0.1

#Creating functions

#Exit function
function app_exit {
    echo $(date).' App exits normally.' >> ./logs/main.log }

#Launch function
function app_start {
    touch /logs/main.log
    touch ./config
    . ./config
    echo $(date)' App started.' >> ./logs/main.log }

#Generates menus    
function main_menu {
    clear
    echo '### Welcome to Linux Tweak Tool ###'
    echo '############ Main Menu ############'
    echo '############ Ver. 0.2  ############'
    echo " "
if [ $1 = "0" ]; then
PS3='Please enter your choice: '
options=("Test Run" "Scripts" "Debs" "Quit")
select opt in "${options[@]}"
do
    case $opt in
	"Test Run")
	    main_menu 0
	    ;;
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

#end of functions creation

app_start
main_menu 0
app_exit