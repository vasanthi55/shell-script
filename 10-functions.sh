#!/bin/bash

ID=$(id -u)

VALIDATE(){ #function name is validate here.WHich one we think the code repeating that one wil put under function
            #Usually below of the variables we will declare function
    if [ $? -ne 0 ]
then 
  echo "ERROR: installing  failed"
  exit 1
else
  echo "Installing success"
fi

    
}

if [ $ID -ne 0 ]
then
  echo "ERROR: Run this script with root access"
exit 1
else
  echo "proceed you are root user"
fi

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE

# we have called function in starting to work that here last we call the function name to work