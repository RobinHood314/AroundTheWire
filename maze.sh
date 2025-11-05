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
function mazesave (){
	if test -e ./.OTWSave/.maze.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.maze.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.maze.sav
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
function nextmaze (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			mazesave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function maze8 (){
	echo "One more... final analysis."
	echo "Now it's time for the last test."
	echo "To escape..."
	echo "Enter the password for Level 8..."
	ssh maze8@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 8!"
}
function maze7 (){
	echo "Enter the password for Level 7..."
	ssh maze7@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 7!"
	maze8
}
function maze6 (){
	echo "Enter the password for Level 6..."
	ssh maze6@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 6!"
	maze7
}
function maze5 (){
	echo "Enter the password for Level 5..."
	ssh maze5@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 5!"
	maze6
}
function maze4 (){
	echo "Enter the password for Level 4..."
	ssh maze4@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 4!"
	maze5
}
function maze3 (){
	echo "Enter the password for Level 3..."
	ssh maze3@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 3!"
	maze4
}
function maze2 (){
	echo "Enter the password for Level 2..."
	ssh maze2@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 2!"
	maze3
}
function maze1 (){
	echo "Enter the password for Level 1..."
	ssh maze1@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 1!"
	maze2
}
function maze0 (){
	echo "Enter the password for Level 0..."
	ssh maze0@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 0!"
	maze1
}
function maze (){
echo "Out there's the Maze. Everything we do-"
echo "our whole life, Greenie- revolves around the Maze."
sleep 3
echo "Welcome to Maze! An OverTheWire Wargame!"
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.maze.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.maze.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze1@bandit.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 1!"
							nextmaze
							maze2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze2@maze.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 2!"
							nextmaze
							maze3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze3@bandit.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 3!"
							nextmaze
							maze4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze4@maze.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 4!"
							nextmaze
							maze5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze5@maze.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 5!"
							nextmaze
							maze6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze6@maze.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 6!"
							nextmaze
							maze7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze6@maze.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 7!"
							nextmaze
							maze7
							;;
						8)
							echo "One more... final analysis."
							echo "Now it's time for the last test."
							echo "To escape..."
							sshpass -p "$(cat ./.OTWSave/.maze.sav)" ssh maze6@maze.labs.overthewire.org -p 2225
							echo "Congratulations on beating Level 8!"
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				maze0
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	maze0
fi
}
maze
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Maze Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
