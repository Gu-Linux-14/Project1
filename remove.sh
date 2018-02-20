#!/bin/bash


Record() {
DATABASE="database.txt" 

echo "Enter the data you want to find (any aspect of the record): " 
read data 

RECORD=$(grep -c $data $DATABASE) #This counts the occurence of the searched data in the database.txt
RECORDSTRING=$(grep -i $data $DATABASE) #Holds entire line (grep -i finds what you search for)



if [ $? == 0 ]; # $? returns the exit status of the previous command (grep -i), 
then   #0 means command worked and found the record from the user input
	if [ "$RECORD" -ne 1 ]; #means that there is more then one record(not equal to one occurence in database)
	then 
		echo "You have $RECORD of $RECORDSTRING"
		echo "You have multiple records, do you want to delete them(y or n): "
		read answer 
			if [ "$answer" == "y" ] || [ "$answer" == "Y" ];
			then
				grep -v "$RECORDSTRING" $DATABASE > junkfile.txt && mv junkfile.txt $DATABASE
				echo "delted all records"
	 		else
	 		echo "Duplicate variable, search a different field" 
	 		fi
	else 
	echo "Just one string"	
	echo "Record Exists- $RECORDSTRING" 
	echo "Deleting the line from the database... "
	grep -v "$RECORDSTRING" $DATABASE > junkfile.txt && mv junkfile.txt $DATABASE 
	fi
else 
echo "the record does not exist"
fi

}

#invoke the record function 
Record  




	



