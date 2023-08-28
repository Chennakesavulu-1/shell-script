#!/bin/bash

#check if the number is greater then 10 or not

NUMBER=$1
if [ $NUMBER -gt 10 ]
then
  echo "$NUMBER is greater then 10"
else
  echo "$NUMBER is not greater then 10"
fi