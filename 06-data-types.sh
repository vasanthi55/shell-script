#!bin/bash

NUMBER=$1
NUMBER=$2

#shell automatically consider data types 
#no need to specify particulary whther it is int or any other
#if enter text instead of number while dng sum it gives  zero value

SUM=$(($NUMBER1+$NUMBER2))

echo "Total value : $SUM"

#here taking another variable SUM and adding numbers