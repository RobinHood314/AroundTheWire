#!/bin/bash
user="whoami"
function cancel (){	
	while true; do
		echo "Are you sure you want to cancel?"
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
function AroundTheWire (){
echo "Hello and Welcome"
$"$user"
echo "Welcome to AroundTheWire!"
echo "First time here?"
sleep 1
echo "This script is an interactive interface"
echo "To play both OverTheWire and UnderTheWire wargames!"
sleep 1
echo "Please note the I have no affiliation with"
echo "OverTheWire nor UnderTheWire, nor do I own them."
sleep 1
echo "Enough legalese, enjoy!"
while true; do
	echo "Choose a wargame:" 
	echo "OverTheWire (OTW)" 
	echo "UnderTheWire (UTW)"
	echo "--Cancel--"
	shopt -s nocasematch
	read -r wire
	case "$wire" in
		OTW|otw|OverTheWire|overthewire)
		./OTW.sh
		break
		;;
		UTW|utw|UnderTheWire|underthewire)
		./UTW.sh
		break
		;;
		Cancel)
		break
		;;
		*)
		echo "Please choose a valid option"
		;;
	esac
done
}
AroundTheWire
