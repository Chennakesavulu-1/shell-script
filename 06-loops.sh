#!/bin/bash

# echo 1
# echo 2 .....
# echo 5

#create a loop

#for i in {1..100}
#do
#     echo $i
#done

#All args are in $@
for i in $@      # "@" takes all arguments ata a time,
do
    yum install $i -y
done