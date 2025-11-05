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
function behemothsave (){
	if test -e ./.OTWSave/.behemoth.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.behemoth.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.behemoth.sav
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
function nextbehemoth (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			behemothsave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function behemoth7 (){
	echo "Behold, he drinketh up a river, and hasteth not:"
	echo "he trusteth that he can draw up Jordan into his mouth."
	echo "Enter the password for Level 7..."
	ssh behemoth7@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 7!"
}
function behemoth6 (){
	echo "The shady trees cover him with their shadow;"
	echo "the willows of the brook compass him about."
	echo "Enter the password for Level 6..."
	ssh behemoth6@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 6!"
	nextbehemoth
	behemoth7
}
function behemoth5 (){
	echo "He lieth under the shady trees," 
	echo "in the covert of the reed, and fens."
	echo "Enter the password for Level 5..."
	ssh behemoth5@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 5!"
	nextbehemoth
	behemoth6
}
function behemoth4 (){
	echo "Surely the mountains bring him forth food,"
	echo "where all the beasts of the field play."
	echo "Enter the password for Level 4..."
	ssh behemoth4@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 4!"
	nextbehemoth
	behemoth5
}
function behemoth3 (){
	echo "He is the chief of the ways of God: he that"
	echo "made him can make his sword to approach unto him"
	echo "Enter the password for Level 3..."
	ssh behemoth3@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 3!"
	nextbehemoth
	behemoth4
}
function behemoth2 (){
	echo "His bones are as strong pieces of brass;"
	echo "his bones are like bars of iron."
	echo "Enter the password for Level 2..."
	ssh behemoth2@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 2!"
	nextbehemoth
	behemoth3
}
function behemoth1 (){
	echo "He moveth his tail like a cedar: the"
	echo "sinews of his stones are wrapped together"
	echo "Enter the password for Level 1..."
	ssh behemoth1@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 1!"
	nextbehemoth
	behemoth2
}
function behemoth0 (){
	echo "Lo now, his strength is in his lions,"
	echo "and the force is in the navel of his belly."
	echo "Enter the password for Level 0..."
	ssh behemoth0@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 0!"
	nextbehemoth
	behemoth1
}
function behemoth (){
	echo "Welcome to Behemoth! An OverTheWire wargame"
	sleep 2
	echo "Behold now Behemoth, which I made with thee;"
	echo "he eateth grass as an ox."
	sleep 2
if test -e ./.OTWSave/.behemoth.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.behemoth.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							echo "He moveth his tail like a cedar: the"
							echo "sinews of his stones are wrapped together"
							sshpass -p "$(cat ./.OTWSave/.behemoth.sav)" ssh behemoth1@behemoth.labs.overthewire.org -p 2221
							echo "Congratulations on beating Level 1!"
							nextbehemoth
							behemoth2
							;;
						2)
							echo "His bones are as strong pieces of brass;"
							echo "his bones are like bars of iron."
							sshpass -p "$(cat ./.OTWSave/.behemoth.sav)" ssh behemoth2@behemoth.labs.overthewire.org -p 2221
							echo "Congratulations on beating Level 2!"
							nextbehemoth
							behemoth3
							;;
						3)
							echo "He is the chief of the ways of God: he that"
							echo "made him can make his sword to approach unto him"
							sshpass -p "$(cat ./.OTWSave/.behemoth.sav)" ssh behemoth3@behemoth.labs.overthewire.org -p 2221
							echo "Congratulations on beating Level 3!"
							nextbehemoth
							behemoth4
							;;
						4)
							echo "Surely the mountains bring him forth food,"
							echo "where all the beasts of the field play."
							sshpass -p "$(cat ./.OTWSave/.behemoth.sav)" ssh behemoth4@behemoth.labs.overthewire.org -p 2221
							echo "Congratulations on beating Level 4!"
							nextbehemoth
							behemoth5
							;;
						5)
							echo "He lieth under the shady trees," 
							echo "in the covert of the reed, and fens."
							sshpass -p "$(cat ./.OTWSave/.behemoth.sav)" ssh behemoth5@behemoth.labs.overthewire.org -p 2221
							echo "Congratulations on beating Level 5!"
							nextbehemoth
							behemoth6
							;;
						6)
							echo "The shady trees cover him with their shadow;"
							echo "the willows of the brook compass him about."
							sshpass -p "$(cat ./.OTWSave/.behemoth.sav)" ssh behemoth6@behemoth.labs.overthewire.org -p 2221
							echo "Congratulations on beating Level 6!"
							nextbehemoth
							behemoth7
							;;
						7)
							echo "Behold, he drinketh up a river, and hasteth not:"
							echo "he trusteth that he can draw up Jordan into his mouth."
							sshpass -p "$(cat ./.OTWSave/.behemoth.sav)" ssh behemoth6@behemoth.labs.overthewire.org -p 2221
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
				behemoth1
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	behemoth1
fi
}
behemoth
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Behemoth Wargame..."
echo "You can now choose another game or quit"
echo "Job 40:15-24"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
