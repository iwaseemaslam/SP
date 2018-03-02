#!/bin/bash
a=(`cat f1.txt`)
echo ${a[*]}

echo "lenght of whole array: "${#a[*]}
echo "lenght of 3 index: "${#a[3]}
