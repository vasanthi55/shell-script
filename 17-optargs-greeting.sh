#!/bin/bash

NAME=""
WISHES=""

#basename $0 gives the script name
USAGE(){
    echo "USAGE::$(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, specify name is mandatory"
    echo " -w, specify wishes. ex, good morning"
    echo "h, display help and exit"

}

while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        h|*) USAGE; exit; # whenever above args not mentioned go to usage function to show and exit there
        \?) echo "Invalid option: -"$OPTARG"" >&2; USAGE;
            exit 1;;
        : ) echo "Option -"$OPTARG" requires an argument." >&2
            exit 1;;
    esac

done