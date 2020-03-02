#!/bin/bash

echo "Hello world!"

HELLO="Hello Jason!"

echo $HELLO


variable a,b
a=1
b=2
echo $a,$b

#arithmetic
c=$(( a+b ))
echo "a+b" is $c
echo "a-b" is $(( a-b ))
echo "a*b" is $(( a*b ))

myfiles=$( ls ~/ | wc -l )
echo $myfiles

#user input, get two numbers
#echo "Enter your first number:"
#read firstnumber
#echo "Enter your second number:"
#read secondnumber

#conditionals
if [ $firstnumber -gt $secondnumber ]
    then
        echo "$firstnumber is the larger number"
elif [ $secondnumber -gt $firstnumber ]
    then
        echo "$secondnumber the larger number"
fi


#while loop
number=1
while [ $number -le 4 ]
    do
echo $number
((number++))
done

#function
function ctof
    {
    ft=$(( $1 * (9/5) + 32 ))
    echo "$1 C = $ft F"
    }

#call the function
ctof 37


