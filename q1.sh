#!/bin/bash


if [ $*!=0 ]
then
	read arg1 arg2
	echo "Addition : `expr $arg1 + $arg2`" 

	echo "Subtraction : `expr $arg1 - $arg2`"  
	echo "Multiplication : `expr $arg1 \* $arg2`"  
	echo "Division : `expr $arg1 / $arg2`" 
else	
	echo "Enter first Number : "
	read arg1
	echo "Enter second Number : "
	read arg2
	echo "Addition : `expr $arg1 + $arg2`" 

	echo "Subtraction : `expr $arg1 - $arg2`"  
	echo "Multiplication : `expr $arg1 \* $arg2`"  
	echo "Division : `expr $arg1 / $arg2`" 
	#if [ $?!=0 ]
	#then
	#echo "yes"

fi
