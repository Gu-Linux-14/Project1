#!/usr/bin/env bash
read -p "Please enter the first and last name on the file you wish to remove: " firstName
grep  "^$firstName" ./dataBase.txt
lnNmbr="grep -c \"^$firstName\" ./dataBase.txt "
eval $lnNmbr
read -p "Is this the file you wish to update?" data
if test "$data" = "y" 
	then grep -v "^$firstName" ./dataBase.txt > ./dataBaseHolder
	read -p "Enter new first and last name: " newName
	read -p "Enter new address: " newAdd
	read -p "Enter new phone: " newPhone
	read -p "Enter new email: " newEmail
	echo "$newName:$newAdd:$newPhone:$newEmail" >> ./dataBaseHolder
	mv ./dataBaseHolder ./dataBase.txt
	echo "working"
else
	echo "trying"
fi
echo "DataBase"
cat ./dataBase.txt
exit 0
