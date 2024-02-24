#!/bin/bash

NAME=""
WISHES="Good morning"

#basename $0 gives the script name
USAGE(){
    echo "USAGE::$(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, specify name is mandatory"
    echo " -w, specify wishes. ex, good morning (optional default value will take)"
    echo "h, display help and exit"

}

while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "Invalid option: -"$OPTARG"" >&2; USAGE;
            exit 1;;
        :) USAGE; exit 1;;
        h) USAGE; exit 1;; # whenever above args not mentioned go to usage function to show and exit there
    esac

done

# if - z means empty: if name and wishes are empty then show error as below
#if [ -z $NAME ] || [ -z $WISHES ]
if [ -z $NAME ] # now wishes is optional we can give or by default value will come
then
   # echo "error:: both -n and -w are mandatory options"
   echo "error:: both -n  mandatory option"
    USAGE
    exit 1
fi

echo " hello $NAME. $WISHES, I am learning optargs passing to shellscript"