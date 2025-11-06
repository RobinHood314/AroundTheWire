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
function f1save (){
	if test -e ./.OTWSave/.f1.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.f1.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.f1.sav
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
function nextf1 (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			f1save
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function formulaone5 (){
	echo "Enter the password for Level 5..."
	ssh formulaone5@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 5!"
}
function formulaone4 (){
	echo "Enter the password for Level 4..."
	ssh formulaone4@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 4!"
	nextf1
	formulaone5
}
function formulaone3 (){
	echo "Enter the password for Level 3..."
	ssh formulaone3@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 3!"
	nextf1
	formulaone4
}
function formulaone2 (){
	echo "Enter the password for Level 2..."
	ssh formulaone2@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 2!"
	nextf1
	formulaone3
}
function formulaone1 (){
	echo "Enter the password for Level 1..."
	ssh formulaone1@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 1!"
	nextf1
	formulaone2
}
function formulaone0 (){
	echo "Enter the password for Level 0..."
	ssh formulaone0@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 0!"
	nextf1
	formulaone1
}
function formulaone (){
	echo "Welcome to FormulaOne! An OverTheWire wargame"
	sleep 1
	echo "Searching for save data..."
	sleep 2
	if test -e ./.OTWSave/.f1.sav; then
		while true; do
			echo "Save file detected. Continue save game?"
			shopt -s nocasematch
			read -r contsave
			case "$contsave" in
				Yes)
					while true; do
						echo "Enter the level you left off on"
						echo "The next level is $(cat ./.OTWSave/.f1.lvl)"	
						echo "(If you last completed level 4, enter 5)"
						shopt -s nocasematch
						read -r level
						case "$level" in
							1)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone1@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone2
								;;
							2)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone2@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone3
								;;
							3)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone3@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone4
								;;
							4)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone4@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone5
								;;
							5)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone5@krypton.labs.overthewire.org -p 2232
								;;
							*)
								echo "Please enter Yes or No"
								;;
						esac
					done
					;;
				No)
					echo "Starting new game..."
					formulaone0
					;;
				*)
					echo "Please enter Yes or No"
					;;
			esac
		done
	else
		echo "No save file found, starting new game..."
		formulaone0
	fi
}
formulaone
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the FormulaOne Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
