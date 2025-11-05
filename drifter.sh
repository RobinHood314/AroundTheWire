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
function driftersave (){
	if test -e ./.OTWSave/.drifter.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.drifter.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.drifter.sav
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
function nextdrifter (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			driftersave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function drifter14 (){
	echo "Enter the password for Level 14..."
	ssh drifter14@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 14!"
}
function drifter13 (){
	echo "Enter the password for Level 13..."
	ssh drifter13@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 13!"
	nextdrifter
	drifter14
}
function drifter12 (){
	echo "Enter the password for Level 12..."
	ssh drifter12@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 12!"
	nextdrifter
	drifter13
}
function drifter11 (){
	echo "Enter the password for Level 11..."
	ssh drifter11@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 11!"
	nextdrifter
	drifter12
}
function drifter10 (){
	echo "Enter the password for Level 10..."
	ssh drifter10@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 10!"
	nextdrifter
	drifter11
}
function drifter9 (){
	echo "Enter the password for Level 9..."
	ssh drifter9@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 9!"
	nextdrifter
	drifter10
}
function drifter8 (){
	echo "Enter the password for Level 8..."
	ssh drifter8@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 8!"
	nextdrifter
	drifter9
}
function drifter7 (){
	echo "Enter the password for Level 7..."
	ssh drifter7@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 7!"
	nextdrifter
	drifter8
}
function drifter6 (){
	echo "Enter the password for Level 6..."
	ssh drifter6@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 6!"
	nextdrifter
	drifter7
}
function drifter5 (){
	echo "Enter the password for Level 5..."
	ssh drifter5@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 5!"
	nextdrifter
	drifter6
}
function drifter4 (){
	echo "Enter the password for Level 4..."
	ssh drifter4@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 4!"
	nextdrifter
	drifter5
}
function drifter3 (){
	echo "Enter the password for Level 3..."
	ssh drifter3@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 3!"
	nextdrifter
	drifter4
}
function drifter2 (){
	echo "Enter the password for Level 2..."
	ssh drifter2@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 2!"
	nextdrifter
	drifter3
}
function drifter1 (){
	echo "Enter the password for Level 1..."
	ssh drifter1@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 1!"
	nextdrifter
	drifter2
}
function drifter0 (){
	echo "Enter the password for Level 0..."
	ssh drifter0@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 0!"
	nextdrifter
	drifter1
}
function drifter (){
echo "Welcome to Drifter! An OvertheWire wargame"
sleep 1
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.drifter.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.drifter.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter1@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 1!"
							nextdrifter
							drifter2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter2@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 2!"
							nextdrifter
							drifter3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter3@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 3!"
							nextdrifter
							drifter4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter4@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 4!"
							nextdrifter
							drifter5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter5@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 5!"
							nextdrifter
							drifter6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter6@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 6!"
							nextdrifter
							drifter7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter7@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 7!"
							nextdrifter
							drifter8
							;;
						8)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter8@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 8!"
							nextdrifer
							drifter9
							;;
						9)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter9@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 9!"
							nextdrifer
							drifter9
							;;
						10)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter10@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 10!"
							nextdrifter
							drifter11
							;;
						11)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter11@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 11!"
							nextdrifter
							drifter12
							;;
						12)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter12@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 12!"
							nextdrifter
							drifter13
							;;
						13)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter13@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 13!"
							nextdrifter
							drifter14
							;;
						14)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter14@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 14!"
							nextdrifter
							drifter15
							;;
						15)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter15@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 15!"
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				drifter0
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	drifter0
fi
}

drifter
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Drifter Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
