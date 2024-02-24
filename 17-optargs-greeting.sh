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
        \?) echo "Invalid option: -"$OPTARG"" >&2; USAGE;
            exit 1;;
        :) USAGE; exit 1;;
        h) USAGE; exit 1;; # whenever above args not mentioned go to usage function to show and exit there
    esac

done