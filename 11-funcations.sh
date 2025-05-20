#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 up 1 to 127
else
    echo "You are running with root access"
fi

#This funcation in put as exit status what command they tried to install.
VALIDAE(){
    if [ $1 -eq 0 ]
    then
        echo "Installing $2 is ....SUCCESS"
    else
        echo "Installing $2 is ... FAILURE"
        exit 1
    fi
}

dnf list instaled mysql

if [ $? -ne 0 ] 
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    VALIDAE $? "MySQL"
else
    echo "MySQL is already instaled ...nothing to do"
fi
dnf list instaled phython3

if [ $? -ne 0 ] 
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDAE $? "python3"
else
    echo "phython3 is already instaled ...nothing to do"
fi

dnf list instaled nginx

if [ $? -ne 0 ] 
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDAE $? nginx
else
    echo "nginx is already instaled ...nothing to do"
fi

