#!/bin/bash

ID=$(id -u)

TIMESTAMP=$(date +%F-%H-%M-%S)

R="/e[31m"
G="/e[32m"
N="/e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log" # to show script name we use $0

VALIDATE(){ 
    if [ $1 -ne 0 ]
then 
  echo -e "$N ERROR:  $2 installing $R failed" # echo "-e" to add color
  exit 1
else
  echo -e " $2 Installing $G success"
fi
    
}

if [ $ID -ne 0 ]
then
  echo -e "$N ERROR:$R Run this script with root access"
exit 1
else
  echo -e "$G proceed you are root user"
fi

yum install mysql -y &>> $LOGFILE

VALIDATE $? "mysql" #passing argument $? that gives the mysql exit status and to show what we did like mysql installed

yum install git -y &>> $LOGFILE

VALIDATE $? "git"

#Note: we shouldn't do anything inside shell script folder except pull or cloning.
#to store logs of the command give ls -ltr >temp.log
#to store success logs: ls -ltr 1>temp.log
# to failure logs: ls -ltr 2>temp.log
#to store both: ls -ltr &>temp.log
#REDIRECTIONS: '>'-->to relace previous script, only new logs will come
             #  '>>'--> to get previos and new logs 