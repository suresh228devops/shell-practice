#!/bin/bash

# this hash is treaded as comment
NUMBER1=100
NUMBER2=200

TIMESTAMP=$(date)
echo "Script Executed at :: $TIMESTAMP"

SUM=$(($NUMBER1+$NUMBER2))

echo "SUM of $NUMBER1 and $NUMBER2 is :: $SUM"