#!/bin/bash

ID=$(id -u)

VALIDATE(){ #function name is validate here.WHich one we think the code repeating that one wil put under function
            #Usually below of the variables we will declare function
    if [ $1 -ne 0 ]
then 
  echo "ERROR:  $2 installing  failed"
  exit 1
else
  echo " $2 Installing success"
fi

#Above We are giving $1, $2
# $1 will check to the $? the xit status if not zero faile.
#$2 check exit status  below and give success

    
}

if [ $ID -ne 0 ]
then
  echo "ERROR: Run this script with root access"
exit 1
else
  echo "proceed you are root user"
fi

yum install mysql -y

VALIDATE $? " installed mysql" #passing argument $? that gives the mysql exit status and to show what we did like mysql installed

yum install git -y

VALIDATE $? " installed git"

# we have called function in starting to work that here last we call the function name to work
#it is very imp to give some inputs. to functions also we give inputs through arguments