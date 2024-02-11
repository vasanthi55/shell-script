#!/bin/bash

**#---------------VARIABLE----------------**
SOURCE_DIR=""
DESTINATION_DIR=""
DAYS=14
MEMORY=""
ACTION=""

**#---------------- USAGE FUNCTOIN USED TO DISPLAY ------------------------------------------------**
USAGE(){
    echo "COMMAND USAGE:: $(basename $0) -s <Source Directory> -d <Destination Directory> -a <action: delete or archive> -t <No.of Days> -m<Memory size of file>"
    echo "Options: "
    echo " -s: Specify the source directory"
    echo " -d: Specify the destination directory when -a is archive"
    echo " -t: Number of days back to delete log file"
    echo " -m: Memory size of the file to delete log file"
    echo " -a: Action to be performed on log files. Options : Delete or Archive"
    echo " -h: Display Help and exit" 
}


**#----------------------OPT ARGS---------------------------------------**
while getopts ":s:d:t:m:a:h" opt;
do
    case $opt in
        s) SOURCE_DIR="$OPTARG";;
        d) DESTINATION_DIR="$OPTARG";;
        t) DAYS="$OPTARG";;
        m) MEMORY="$OPTARG";;
        a) ACTION="$OPTARG";;
        h) USAGE; exit;;
        \?) echo "Invalid Options: -"$OPTARG"" >$2; USAGE; exit;;
    esac
done
