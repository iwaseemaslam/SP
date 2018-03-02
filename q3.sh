#!/bin/bash
UNIX=(debian "red hat" ubuntu suse fedora)
echo "1 -> "${UNIX[*]} 
echo "2 -> "${#UNIX[*]} 
echo "3 -> "${#UNIX[2]} 
echo "4 -> "${UNIX[*]:3:4} 
echo "5 -> "${UNIX[*]/ubuntu/scounix} 

UNIX=(${UNIX[*]} AIX HP-UX)
echo "6 -> "${UNIX[*]} 
unset UNIX[3]
echo "7 -> "${UNIX[*]} 
LINUX=(${UNIX[*]})
echo "LINUX -> "${LINUX[*]} 
BASH=(${UNIX[*]} ${LINUX[*]})
echo "BASH -> "${BASH[*]} 
unset UNIX[*]
unset LINUX[*]
echo "LINUX -> "${UNIX[*]}
echo "UNIX -> "${LINUX[*]}

