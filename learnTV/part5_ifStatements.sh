#! /bin/bash

#1
mynum=2000
 
if [ $mynum -eq 200 ]; then
	echo "The condition is true."
else
        echo "The variable does not equal to 200."
fi


# -eq : Equal
# -ne : not Equal
# -gt : Greater Than
# -lt : Less Than

#3 if-else to check if myfile exist
if [ -f ~/myfile ]
then
        echo "The file exist"
else
        echo "The file does not exist."
fi

#3
program_name=htop

if command -v $program_name
then
        echo "$program_name is available, let's run it..."
else
        echo "$program_name isn't available, installing it..."
	sudo apt update && sudo apt install -y $program_name
fi
