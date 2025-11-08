#!/bin/bash

#SCRIPT
while true; do #This response loop repeats until you exit application
	echo "Would you like to count to 50?"
	echo "Y or N?"
	read  response
	if [ $response = "Y" -o $response = "y" ]; then
		counter=1
		until [ $counter -gt 50 ]
		do
		echo $counter
		((counter++))
		#sleep 0.1
		done
		continue
	elif [ $response = "N" -o $response = "n" ]; then
			echo "Would you like to exit application?"
			echo "Y or N?"
			read response

				if [ $response = "Y" -o $response = "y" ]; then
					echo "Exiting..."
					exit 0
				elif [ $response = "N" -o $response = "n" ]; then
					continue
				else
					echo "Input not listed"
					continue
				fi

	else
		echo "Input not listed"
		continue
	fi
done
