#!/bin/bash

#Creating functions
"
#executing command with logging

function command($command,$file,$message) {
file=$(date +%F)-$(date +%H:%M:%S)-$command.log

message="Executing $command"
cat $message >> $file

$command >> $file

message="$command executed!"
cat $message >> $file

}
"
#end of function

prefix=customization.logs
sufix=$(date +%F)
logdirname=$prefix.$sufix

mkdir ./logs/$logdirname

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
