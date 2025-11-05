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
function leviathansave (){
	if test -e ./.OTWSave/.leviathan.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.leviathan.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.leviathan.sav
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
function nextleviathan (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			leviathansave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function leviathan6 (){
	echo "Darts are counted as stubble: he laugheth at"
	echo "Sharp stones are under him: he spreadeth" 
	echo "sharp pointed things upon the mire..."
	echo "He maketh the deep to boil like a pot"
	echo "Enter the password for Level 6..."
	ssh leviathan6@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 6!"
}
function leviathan5 (){
	echo "The arrow cannot make him flee: slingstones are turned"
	echo "with him into stubble. Darts are counted as stubble:"
	echo "he laugheth at the shaking of the spear."
	echo "Enter the password for Level 5..."
	ssh leviathan5@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 5!"
	nextleviathan
	leviathan6
}
function leviathan4 (){
	echo "The sword of him that layeth at him cannot hold:"
	echo "the spear, the dart, nor the habergeon"
	echo "He esteemeth iron as straw, and brass as rotten wood"
	echo "Enter the password for Level 4..."
	ssh leviathan4@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 4!"
	nextleviathan
	leviathan5
}
function leviathan3 (){
	echo "His heart is as firm as a stone; yea,"
	echo "as hard as a piece of the nether millstone"
	echo "When he raiseth up himself, the mighty are afraid"
	echo "Enter the password for Level 3..."
	ssh leviathan3@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 3!"
	nextleviathan
	leviathan4
}
function leviathan2 (){
	echo "Out of his mouth go burning lamps,"
	echo "and sparks of fire leap out."
	echo "Out of his nostrils goeth smoke,"
	echo "as out of a seething pot or caldron..."
	echo "Enter the password for Level 2..."
	ssh leviathan2@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 2!"
	nextleviathan
	leviathan3
}
function leviathan1 (){
	echo "Behold, the hope of him is in vain:"
	echo "shall not one be cast down even at the sight of him?"
	echo "None is so fierce that dare stir him up..."
	echo "Enter the password for Level 1..."
	ssh leviathan1@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 1!"
	nextleviathan
	leviathan2
}
function leviathan (){
echo "Canst thou draw out the Leviathan with a hook?"
echo "Or his tongue with a cord which thou lettest down?"
sleep 3
echo "Welcome to Leviathan! An OverTheWire wargame"
sleep 1
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.leviathan.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.leviathan.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							echo "Behold, the hope of him is in vain:"
							echo "shall not one be cast down even at the sight of him?"
							echo "None is so fierce that dare stir him up..."
							sshpass -p "$(cat ./.OTWSave/.leviathan.sav)" ssh leviathan1@leviathan.labs.overthewire.org -p 2223
							nextleviathan
							leviathan2
							;;
						2)
							echo "Out of his mouth go burning lamps,"
							echo "and sparks of fire leap out."
							echo "Out of his nostrils goeth smoke,"
							echo "as out of a seething pot or caldron..."
							sshpass -p "$(cat ./.OTWSave/.leviathan.sav)" ssh leviathan2@leviathan.labs.overthewire.org -p 2223
							nextleviathan
							leviathan3
							;;
						3)
							echo "His heart is as firm as a stone; yea,"
							echo "as hard as a piece of the nether millstone"
							echo "When he raiseth up himself, the mighty are afraid"
							sshpass -p "$(cat ./.OTWSave/.levithan.sav)" ssh leviathan3@leviathan.labs.overthewire.org -p 2223
							nextleviathan
							leviathan4
							;;
						4)
							echo "The sword of him that layeth at him cannot hold:"
							echo "the spear, the dart, nor the habergeon"
							echo "He esteemeth iron as straw, and brass as rotten wood"
							sshpass -p "$(cat ./.OTWSave/.leviathan.sav)" ssh leviathan4@leviathan.labs.overthewire.org -p 2223
							nextleviathan
							leviathan5
							;;
						5)
							echo "The arrow cannot make him flee: slingstones are turned"
							echo "with him into stubble. Darts are counted as stubble:"
							echo "he laugheth at the shaking of the spear."
							sshpass -p "$(cat ./.OTWSave/.levithan.sav)" ssh leviathan5@leviathan.labs.overthewire.org -p 2223
							nextleviathan
							leviathan6
							;;
						6)
							echo "Darts are counted as stubble: he laugheth at"
							echo "Sharp stones are under him: he spreadeth" 
							echo "sharp pointed things upon the mire..."
							echo "He maketh the deep to boil like a pot"
							sshpass -p "$(cat ./.OTWSave/.levithan.sav)" ssh leviathan5@leviathan.labs.overthewire.org -p 2223
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
				leviathan1
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	leviathan1
fi
}
leviathan
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Leviathan Wargame..."
echo "You can now choose another game or quit"
echo "Job 41"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
