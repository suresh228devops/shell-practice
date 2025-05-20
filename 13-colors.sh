#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

if [ $USERID -ne 0 ]
then
    echo -e "$R ERROR:: Please run this script with root access $N"
    exit 1 #give other than 0 up 1 to 127
else
    echo "You are running with root access"
fi

#This funcation in put as exit status what command they tried to install.
VALIDAE(){
    if [ $1 -eq 0 ]
    then
        echo -e "Installing $2 is ....$G SUCCESS $N"
    else
        echo -e "Installing $2 is ... $R FAILURE $N"
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
    echo -e "Nothing to do MySQL....$Y is already instaled $N"
fi
dnf list instaled phython3

if [ $? -ne 0 ] 
then
    echo "python3 is not installed... going to install it"
    dnf install python3 -y
    VALIDAE $? "python3"
else
    echo -e "Nothing to do python3....$Y is already instaled $N"
fi

dnf list instaled nginx

if [ $? -ne 0 ] 
then
    echo "nginx is not installed... going to install it"
    dnf install nginx -y
    VALIDAE $? nginx
else
    echo -e "Nothing to do nginx....$Y is already instaled $N"
fi

