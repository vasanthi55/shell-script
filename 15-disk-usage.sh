#!/bin/bash

DISK_USAGE=$(df -hT | grep -vE 'tmp|File') #except temp or filesystem give other files means disk
DISK_THRESHOLD=1 
message=""

# it is usually 70% but we dont have that much
# so here giving 1 if it ismore than one give alert

while IFS= read line
do
    usage=$(echo $line | awk '{print $6F}' | cut -d % -f1)
    partition=$(echo $line | awk '{print $1F}')
    if [ $usage -ge $DISK_THRESHOLD ]
    then
        message+="High disk usage on $partition: $usage\n"
    fi

done <<< $DISK_USAGE

echo -e "Message:$message"

#11th line-->$line=go line by libe go to fist line of the disk usage by cutting percentage symbol
#12-->go to first line and give file to which it belongs to disk name and then 2nd one

#"+="-->to not overwrite the second line .when second line comes it comes down not in the same line
#+\n -->second line comes in next line