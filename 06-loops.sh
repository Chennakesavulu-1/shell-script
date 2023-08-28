#!/bin/bash

DATE=$(date %+F)
LOGSDIR=/home/centos/shellscript-logs

#/home/centos/shellscript-logs/script-name-date.log

SCRIPT_NAME=$0
LOGFILE=$LOGSDIR/$0-$DATE.log

USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"


if [ $USERID -ne 0]
then
    echo -e "$R Error :: Please run this script with Root Acess $N"
    exit 1
fi


VALIDATE(){
  if [ $1 -ne 0 ]
  then
      echo -e "Installing $2 ...$R FAILURE $N"
      exit 1
  else
      echo -e "Installing $2 ... $G SUCCESS $N"
  fi
}

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
    yum list installed $i &>>$LOGFILE
    if [ $? -ne 0 ]
    then
        echo "$i is not installed, lets installed it "
        yum install $i -y &>>$LOGFILE
        VALIDATE $? "$i"
    else
        echo -e "$G $i is already installed $N"
    fi
done


#Today task improvements
#implement logfiles
#implement colors
#implement validations
#implement through validations functions
#your script should package is alredy installed or not , if already installed install yellow color
#if installed print package is alredy installed, it should not run install command.
