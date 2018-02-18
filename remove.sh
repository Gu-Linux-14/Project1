#!/bin/bash


Record()
{
DATABASE="database.txt" 

echo "Enter the data you want to find (any aspect of the record): " 
read data 

RECORD=$(grep -i $data $DATABASE) #Holds entire line (grep -i finds what you search for)


if [ $? == 0 ]; # $? returns the exit status of the previous command (grep -i), 
		then   #0 means command worked and found the record from the user input
		echo "Record Exists- $RECORD" 
		echo "Deleting the line from the database... "
		sed -i "" "/$RECORD/d" $DATABASE #this removes the record from the database

else 
	echo "the record does not exist"

fi 		
		#grep -v "$LINE" $DATABASE > temp && mv temp $DATABASE
		#this is an alternative to the sed command,removes the record as well if sed 
		#doesnt work

}

#invoke the record function 
Record 




	



