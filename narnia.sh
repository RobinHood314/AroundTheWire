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
function narniasave (){
	if test -e ./.OTWSave/.narnia.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.narnia.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.narnia.sav
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
function nextnarnia (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			narniasave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function narnia8 (){
	echo "Enter the password for Level 8..."
	ssh narnia8@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 8!"
}
function narnia7 (){
	echo "Enter the password for Level 7..."
	ssh narnia7@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 7!"
	nextnarnia
}
function narnia6 (){
	echo "Enter the password for Level 6..."
	ssh narnia6@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 6!"
	nextnarnia
}
function narnia5 (){
	echo "Enter the password for Level 5..."
	ssh narnia5@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 5!"
	nextnarnia
}
function narnia4 (){
	echo "Enter the password for Level 4..."
	ssh narnia4@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 4!"
	nextnarnia
}
function narnia3 (){
	echo "Enter the password for Level 3..."
	ssh narnia3@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 3!"
	nextnarnia
}
function narnia2 (){
	echo "Enter the password for Level 2..."
	ssh narnia3@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 2!"
	nextnarnia
}
function narnia1 (){
	echo "Enter the password for Level 1..."
	ssh narnia1@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 1!"
	nextnarnia
}
function narnia0 (){
	echo "Welcome to Narnia! An OverTheWire wargame"
	sleep 2
	echo "Enter the password for Level 0..."
	ssh narnia0@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 0!"
	nextnarnia
}
function narnia (){
	echo "Welcome to Narnia! An OverTheWire wargame"
	sleep 2
if test -e ./.OTWSave/.narnia.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.narnia.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia1@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 1!"
							nextnarnia
							narnia2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia2@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 2!"
							nextnarnia
							narnia3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia3@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 3!"
							nextnarnia
							narnia4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia4@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 4!"
							nextnarnia
							narnia5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia5@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 5!"
							nextnarnia
							narnia6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia6@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 6!"
							nextnarnia
							narnia7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia7@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 7!"
							nextnarnia
							narnia8
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				narnia0
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	narnia0
fi
}
narnia
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Narnia Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
