#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: Please run this script with root access"
    exit 1 #give other than 0 up 1 to 127
else
    echo "You are running with root access"
fi

dnf list instaled mysql

#it check alresdy installed or not. if installed $? 0, then
#if not installd $? is not 0. expression is true.
if [ $? -ne 0 ] 
then
    echo "MySQL is not installed... going to install it"
    dnf install mysql -y
    if [ $? -eq 0 ]
    then
        echo "Installing MySQL is ....SUCCESS"
    else
        echo "Installing MySQL is ... FAILURE"
        exit 1
    fi
else
    echo "MySQL is already instaled ...nothing to do"
fi
# dnf install mysql -y

# if [ $? -eq 0 ]
# then
#     echo "Installing MySQL is ....SUCCESS"
# else
#     echo "Installing MySQL is ... FAILURE"
#     exit 1
# fi

