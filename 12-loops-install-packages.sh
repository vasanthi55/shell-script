#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%S-%M)
LOGFILE="/tmp/$0-$TIMESTAMP.log"

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

echo " $0 script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e "$2 .. $R installion failed $N"
        exit 1
    else    
        echo -e "$2 .. $G installation success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R Run this script with root user $N"
    exit 1
else
    echo -e "$G Proceed You are root user $N"
fi

#echo "All args passed  $@"
#git mysql postfix net-tools
#packages checks git for first time

for package in $@
do
    yum list installed $package  &>> $LOGFILE  # check installed or not
    if [ $? -ne 0 ] #if not install
    then
        yum install $package -y &>> $LOGFILE
        VALIDATE $? " installing $package" #validation
    else
       echo -e "$package is already installed..$Y SKIPPING $N"
    fi
done