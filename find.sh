#!/bin/bash
find(){
DATABASE="database.txt"

echo "Enter a record to find: "
read input

RECORD=$(grep -i $input $DATABASE)

if [ $? == 1 ]; #a '1' indicates that no matches were found
	echo "Could not find the requested record"
else
	echo "Found the requested record: $RECORD"
fi
}
