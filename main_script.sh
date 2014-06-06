#!/bin/bash

#Creating functions

#Exit function
function app_exit {
    echo $(date +%F).' '.$time.' '.'App exits normally' >> /logs/main.log
    quit
    }

function app_start {
    touch /logs/main.log
    echo $(date +%F).' '.$time.' '.'App started' >> /logs/main.log
    }
    
function main_menu {
    echo '### Welcome to Linux Tweak Tool ###'
    echo '### Main Menu ###'
    }
#end of function

prefix=customization.logs
sufix=$(date +%F)
logdirname=$prefix.$sufix

mkdir ./logs/$logdirname

source ./config

PS3='Please enter your choice: '
options=("fstab" "rc.local" "power.sh" "apt-get" "Quit")
select opt in "${options[@]}"
do
    case $opt in
        "fstab")
            echo "you chose fstab"
            ;;
        "rc.local")
            echo "rc.local"
            ;;
        "power.sh")
            echo "power.sh"
            ;;
        "apt-get")
            echo "you chose apt-get"
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done

#Cleaning Up

#moving all log files
mv *.log ./$logdirname
