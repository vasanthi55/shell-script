#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
   echo "ERROR: You are not root user"
exit 1 #here clearly we know it is error but how programming will know to check that there is "EXIT STATUS"-->
       #shell script will store the command result in exit status we can get it through "$?".
       #give echo $?--if it is"0" -it is success. Other than 0 it is failure
       #if wont give exit 1 it is not stopping at the first error it is going upto install command also.
       #In shell script wont stop if it face errors like any other languages.it is our responsibility
else
   echo "You are root user"
fi

yum install mysql -y # and also here we should not stop just by giving install
                     #  to check whether it installed properly or not #though "$? = 0 to success"

if [ $? -ne 0 ]  
then
   echo "ERROR : installing mysql is fail"
else
   echo "Installed mysql succesfully"    
fi                  


