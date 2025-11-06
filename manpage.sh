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
function manpagesave (){
	if test -e ./.OTWSave/.manpage.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.manpage.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.manpage.sav
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
function nextmanpage (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			manpagesave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function manpage6 (){
	echo "Enter the password for Level 6..."
	ssh manpage6@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 6!"
}
function manpage5 (){
	echo "Enter the password for Level 5..."
	ssh manpage5@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 5!"
	nextmanpage
	manpage6
}
function manpage4 (){
	echo "Enter the password for Level 4..."
	ssh manpage4@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 4!"
	nextmanpage
	manpage5
}
function manpage3 (){
	echo "Enter the password for Level 3..."
	ssh manpage3@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 3!"
	nextmanpage
	manpage4
}
function manpage2 (){
	echo "Enter the password for Level 2..."
	ssh manpage2@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 2!"
	nextmanpage
	manpage3
}
function manpage1 (){
	echo "Enter the password for Level 1..."
	ssh manpage1@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 1!"
	nextmanpage
	manpage2
}
function manpage (){
echo "Can you RTFM?"
sleep 3
echo "Welcome to Manpage! An OverTheWire Wargame!"
sleep 2
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.manpage.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.manpage.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.manpage.sav)" ssh manpage1@bandit.labs.overthewire.org -p 2224
							echo "Congratulations on beating Level 1!"
							nextmanpage
							manpage2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.manpage.sav)" ssh manpage2@manpage.labs.overthewire.org -p 2224
							echo "Congratulations on beating Level 2!"
							nextmanpage
							manpage3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.manpage.sav)" ssh manpage3@manpage.labs.overthewire.org -p 2224
							echo "Congratulations on beating Level 3!"
							nextmanpage
							manpage4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.manpage.sav)" ssh manpage4@manpage.labs.overthewire.org -p 2224
							echo "Congratulations on beating Level 4!"
							nextmanpage
							manpage5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.manpage.sav)" ssh manpage5@manpage.labs.overthewire.org -p 2224
							echo "Congratulations on beating Level 5!"
							nextmanpage
							manpage6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.manpage.sav)" ssh manpage5@manpage.labs.overthewire.org -p 2224
							echo "Congratulations on beating Level 6!"
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				manpage1
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	manpage1
fi
}
manpage
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
