#!/bin/bash

file=/etc/passwd

R="\e[31m"

if [ ! -f $file ]
then
    echo  -e "$R file: $file not exists $N"
fi

#reading passwd file fields using delimeter or internal field seperator with while loop prnting the output
while IFS=":"  read -r username password user_id group_id
do
    echo "username: $username"
    echo "user_id: $user_id"
    echo "group_id: $group_id"
done < $file