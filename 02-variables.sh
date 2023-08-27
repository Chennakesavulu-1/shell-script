#!/bin/bash

#shell script run the command inside $() and store the output into variables called DATE
DATE=$(date)

echo "HEllo, this script is executed at timestamp: $DATE"


PERSON1=$1   #this is the first value from command line
PERSON2=$2   #this is the second value from command line

echo "$PERSON1: good morning $PERSON2"
echo "$PERSON2: VEry Good morning dear $PERSON1"
echo "$PERSON1: How are you $PERSON2"
echo "$PERSON2:IAm good $PERSON1"