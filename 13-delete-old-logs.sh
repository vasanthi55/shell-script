#!/bin/bash
R="\e[31m"
SOURCE_DIR="/tmp/shellscript-logs"

if [ ! -d $SOURCE_DIR ] # ! - denotes opposite, here if source dir doesnt exit 
then    
    echo -e "$R Source directory: $SOURCE_DIR not exits. $N"
fi

#in the directory find for files older than 14 i.e only log file extensions.
FILES_TO_DELETE=$(find $SOURCE_DIR -type f -mtime +14 -name "*.log") 

while IFS= read -r line #IFS=internal field seperator-read line by line
do
    echo "Deleting files:$line"
    
    rm -rf $line

done <<< $FILES_TO_DELETE

#without while lop also we can do by giving exec rm -rf to the above command.
#<<<=giving input the while loop from files_to_delete command