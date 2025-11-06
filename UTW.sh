#!/bin/bash
function quit (){	
	while true; do
		echo "Are you sure you want to quit?"
		shopt -s nocasematch
		read -r quit
		case "$quit" in
			Yes)
				echo "Thank you for playing!"
				exit
				;;
			No)
				break
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
}
function UTWCheck (){
	if test -e ./.UTWSave; then
		echo "Loading UnderTheWire save data..."
	else
		echo "Creating UnderTheWire save data..."
		mkdir ./.UTWSave
	fi
}
function UTW (){
	UTWCheck
	echo "Welcome to UnderTheWire:"
	echo "Powershell training for the people"
	sleep 1
	echo "DISCLAIMER!"
	echo "I do not own UnderTheWire nor its wargames"
	echo "Nor do I have any affilication with UnderTheWire"
	echo "(I'm probably legally required to put this)"
	echo "Well, enough legalese! Enjoy!"
	sleep 2
	while true; do
		echo "Choose a game:"
		echo "1. Century"
		echo "2. Cyborg"
		echo "3. Groot"
		echo "4. Oracle"
		echo "5. Trebek"
		echo "Quit"
		shopt -s nocasematch
		read -r wargame
		case "$wargame" in
			1|Century)
				./century.sh
				;;
			2|Cyborg)
				./cyborg.sh
				;;
			3|Groot)
				./groot.sh
				;;
			4|Oracle)
				./oracle.sh
				;;
			5|Trebek)
				./trebek.sh
				;;
			Quit)
				quit
				;;
		esac
	done
}
UTW
