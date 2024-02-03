#!bin/bash

NUMBER1=$1
NUMBER2=$2

#shell automatically consider data types 
#no need to specify particulary whther it is int or any other
#if enter text instead of number while dng sum it gives  zero value

SUM=$(($NUMBER1+$NUMBER2))

echo "Total value : $SUM"

echo "how many args passed: $N"

echo "All args passed: $@"

echo "script name: $0"

#here taking another variable SUM and adding numbers