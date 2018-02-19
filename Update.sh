#!/usr/bin/env bash
#echo "I am working"
read -p "Please enter the first and last name on the file you wish to remove: " firstName
##echo "$firstName is kewl" 
grep  "^$firstName" ./dataBase.txt
lnNmbr="grep -c \"^$firstName\" ./dataBase.txt "
eval $lnNmbr
read -p "Is this the file you wish to delete?" data
if test "$data" = "y" 
	then grep -v "^$firstName" ./dataBase.txt > ./dataBaseHolder
	read -p "Enter first and last name: " newName
	read -p "Enter address: " newAdd
	read -p "Enter phone: " newPhone
	read -p "Enter email: " newEmail
	echo "$newName:$newAdd:$newPhone:$newEmail" >> ./dataBaseHolder
	mv ./dataBaseHolder ./dataBase.txt
	echo "working"
else
	echo "trying"
fi
echo "DataBase"
cat ./dataBase.txt
exit 0
