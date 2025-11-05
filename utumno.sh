#!/bin/bash
user="whoami"
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
function utumnosave (){
	if test -e ./.OTWSave/.utumno.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.utumno.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.utumno.sav
				break
				;;
			No)
				echo "Game not saved"
				break
				;;
			*)
				echo "Please enter Yes or No."
				;;
		esac
	done
}
function nextutumno (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			utumnosave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function utumno7 (){
	echo "Enter the password for Level 7..."
	ssh utumno7@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 7!"
}
function utumno6 (){
	echo "Enter the password for Level 6..."
	ssh utumno6@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 6!"
	nextutumno
}
function utumno5 (){
	echo "Enter the password for Level 5..."
	ssh utumno5@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 5!"
	nextutumno
}
function utumno4 (){
	echo "Enter the password for Level 4..."
	ssh utumno4@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 4!"
	nextutumno
}
function utumno3 (){
	echo "Enter the password for Level 3..."
	ssh utumno3@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 3!"
	nextutumno
}
function utumno2 (){
	echo "Enter the password for Level 2..."
	ssh utumno2@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 2!"
	nextutumno
}
function utumno1 (){
	echo "Enter the password for Level 1..."
	ssh utumno1@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 1!"
	nextutumno
}
function utumno0 (){
	echo "Are you adaquate?"
	sleep 3
	echo "Welcome to Utumno! An OverTheWire wargame"
	echo "Enter the password for Level 0..."
	ssh utumno0@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 0!"
	nextutumno
}
function utumno (){
	echo "Are you adaquate?"
	sleep 3
	echo "Welcome to Utumno! An OverTheWire wargame"
	sleep 2
if test -e ./.OTWSave/.utumno.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.utumno.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno1@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 1!"
							nextutumno
							utumno2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno2@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 2!"
							nextutumno
							utumno3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno3@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 3!"
							nextutumno
							utumno4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno4@behemoth.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 4!"
							nextutumno
							utumno5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno5@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 5!"
							nextutumno
							utumno6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno6@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 6!"
							nextutumno
							utumno7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno7@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 7!"
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				utumno0
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	utumno0
fi
}
utumno
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Utumno Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
