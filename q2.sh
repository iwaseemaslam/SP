#! /bin/sh

read index file_name1 user_name1 file_name2 user_name2 
comman="-c"
if [ $index != $comman ]
then

#index will be treated as filename
#file_name1 will be treated as Username

	arr=(`ls -l $index`)
	#echo ${arr[2]}

        user_name=$file_name1
	owner=${arr[2]}

#checking if the owner and given username matches
	if [ $owner != $user_name ] 
	then
		echo "cheating=1"
	else
		echo "cheating=0"
	fi
else

#assigning the filename values to array
arr=(`ls -l $file_name1`)
arr1=(`ls -l $file_name2`)


#assigning owners
owner1=${arr[2]}
owner2=${arr1[2]}


#checking difference
diff="`diff $file_name1 $file_name2`"

#variables
owner_match=0
cheat=0

#checking both files owner
	if [ $owner1=$owner2 ]
	then
	owner_match=1       
	fi

#checking if owner match or files are same
	if [ $diff=1 ] || [ $owner_match=1 ]
	then  
        cheat=1
        fi
        
        echo "UserName :$user_name1"
	echo "permissions :${arr[0]}"
	echo "filename :$file_name1"
	echo "Owner :${arr[2]}"
	echo "Group :${arr[3]}"
        echo "Cheat= $cheat"


	echo "\n file2 \n"
        
        echo "UserName :$user_name2"
	echo "permissions :${arr1[0]}"
	echo "filename :$file_name2"
	echo "Owner :${arr1[2]}"
	echo "Group :${arr1[3]}"
        echo "Cheat= $cheat"


fi
