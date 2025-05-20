#!/bin/bash

echo "All the variabales passed to the script :: $@"
echo "No of variables passed to script:: $#"
echo "Script name :: $0"
echo "PID of present script is :: $$"
echo "Current Directory:: $PWD"
echo "Home directory of the user: $HOME"
echo "User running this script:: $USER" 
sleep 10 &
echo "PID of the last command running in the background:: $!"
echo "Exit status of last command executed $?"


