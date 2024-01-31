#!bin/bash

FRUITS=("Apple" "banana" "Orange")

echo "first fruit: ${FRUITS[0]}"

echo "second fruit: ${FRUITS[1]}"

echo "third fruit: ${FRUITS[2]}"

#when enter multiple item can create only one variable and 
#can given entries as showm above using array
#${FRUITS[1]}--this syntax is important to print

echo "ALL fruits : ${FRUITS[@]}"

#if need all items at a time can use '@' as given above in index place