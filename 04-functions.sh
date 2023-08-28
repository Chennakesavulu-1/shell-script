#!/bin/bash

#our program goal is to be install mysql

DATE=$(date +%F)
SCRIPT_NAME=$0
LOGFILE=/tmp/$SCRIPT_NAME-$DATE.log

#colours implement on lines
R="\e[31m"
G="\e[32m"
N="\e[0m"   #no colour

#this function shuld validate the previous commnad and inform user it is success or failure

VALIDATE(){
  #$1  --> it will receve the argument
  if [ $1 -ne 0 ]
  then
    echo "$2 ...FAILURE"
    exit 1
  else
    echo "$2 ...SUCCESS"
}

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
  echo "ERROR:: Please run the script with root acess"
  exit 1
fi

$date +%F -%H-%M-%S
#it is our responsibility again to check installation is success or not

yum install mysql -y &>>$LOGFILE
VALIDATE $? "Installing MYSQL"
yum install postfix -y &>>$LOGFILE
VALIDATE $? "INStalling postfix"