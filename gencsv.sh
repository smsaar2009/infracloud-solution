#!/bin/bash
echo "The first arg is: $1"
echo "The second arg is: $2"
if [[ $1 -eq 2 ]] && [[ $2 -eq 8 ]]
then  
for i in 2 3 4 5 6 7 8
do
    echo $i, $RANDOM >> inputFile
    echo $i, $RANDOM >> inputdata
done
echo "inputFile Generated"
else
    echo "Arg value can be 2 and 8 for generating inputFile"
fi 
