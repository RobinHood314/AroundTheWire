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
function nextcentury (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			centurysave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function century14 (){
	echo "The password for Century15 is the number" 
	echo "of times the word 'polo' appears within" 
	echo "the file on the desktop."
	echo "Enter the password for Level 14..."
	ssh century14@century.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextcentury
	century15
}
function century13 (){
	echo "The password for Century14 is the number" 
	echo "of words within the file on the desktop."
	echo "Enter the password for Level 13..."
	ssh century13@century.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextcentury
	century14
}
function century12 (){
	echo "The password for Century13 is the description" 
	echo "of the computer designated as a Domain Controller" 
	echo "within this domain PLUS the name of the file on the desktop."
	echo "Enter the password for Level 12..."
	ssh century12@century.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextcentury
	century13
}
function century11 (){
	echo "The password for Century12 is the name of the hidden" 
	echo "file within the contacts, desktop, documents, downloads," 
	echo "favorites, music, or videos folder in the user’s profile."
	echo "Enter the password for Level 11..."
	ssh century11@century.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextcentury
	century12
}
function century10 (){
	echo "The password for Century11 is the 10th and 8th word" 
	echo "of the Windows Update service description combined" 
	echo "PLUS the name of the file on the desktop."
	echo "Enter the password for Level 10..."
	ssh century10@century.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextcentury
	century11
}
function century9 (){
	echo "The password for Century10 is the" 
	echo "161st word within the file on the desktop."
	echo "Enter the password for Level 9..."
	ssh century9@century.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextcentury
	century10
}
function century8 (){
	echo "The password for Century9 is the number of" 
	echo "unique entries within the file on the desktop."
	echo "Enter the password for Level 8..."
	ssh century8@century.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextcentury
	century9
}
function century7 (){
	echo "The password for Century8 is in a readme file somewhere" 
	echo "within the contacts, desktop, documents, downloads, favorites," 
	echo "music, or videos folder in the user’s profile."
	echo "Enter the password for Level 7..."
	ssh century7@century.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextcentury
	century8
}
function century6 (){
	echo "The password for Century7 is the" 
	echo "number of folders on the desktop."
	echo "Enter the password for Level 6..."
	ssh century6@century.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextcentury
	century7
}
function century5 (){
	echo "The password for Century6 is the short name" 
	echo "of the domain in which this system resides" 
	echo "in PLUS the name of the file on the desktop."
	echo "Enter the password for Level 5..."
	ssh century5@century.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextcentury
	century6
}
function century4 (){
	echo "The password for Century5 is the name"
	echo "of the file within a directory on the desktop" 
	echo "that has spaces in its name."
	echo "Enter the password for Level 4..."
	ssh century4@century.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextcentury
	century5
}
function century3 (){
	echo "The password for Century 4 is"
	echo "the number of files on the desktop"
	echo "Enter the password for Level 3..."
	ssh century3@century.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextcentury
	century4
}
function century2 (){
	echo "The password for Century3 is the name" 
	echo "of the built-in cmdlet that performs the" 
	echo "wget like function within PowerShell PLUS" 
	echo "the name of the file on the desktop."
	echo "Enter the password for Level 2..."
	ssh century2@century.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextcentury
	century3
}
function century1 (){
	echo "The password for Century2 is the" 
	echo "build version of the instance"
        echo "of PowerShell installed on this system."
	echo "Enter the password for Level 1..."
	ssh century1@century.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nextcentury
	century2
}
function century (){
	echo "Welcome to Century! An UnderTheWire wargame"
	echo "Searching for save data..."
	sleep 2
	if test -e ./.UTWSave/.century.sav; then
		while true; do
			echo "Save file detected. Continue save game?"
			shopt -s nocasematch
			read -r contsave
			case "$contsave" in
				Yes)
					while true; do
						echo "Enter the level you left off on"
						echo "The next level is $(cat ./.UTWSave/.century.lvl)"	
						echo "(If you last completed level 4, enter 5)"
						read -r level
						case "$level" in
							2)
								echo "The password for Century3 is the name" 
								echo "of the built-in cmdlet that performs the" 
								echo "wget like function within PowerShell PLUS" 
								echo "the name of the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century2@century.underthewire.tech
								nextcentury
								century3
								;;
							3)
								echo "The password for Century 4 is"
								echo "the number of files on the desktop"
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century3@century.underthewire.tech
								nextcentury
								century4
								;;
							4)
								echo "The password for Century5 is the name"
								echo "of the file within a directory on the desktop" 
								echo "that has spaces in its name."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century4@century.underthewire.tech
								nextcentury
								century5
								;;
							5)
								echo "The password for Century6 is the short name" 
								echo "of the domain in which this system resides" 
								echo "in PLUS the name of the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century5@century.underthewire.tech
								nextcentury
								century6
								;;
							6)
								echo "The password for Century7 is the" 
								echo "number of folders on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century6@century.underthewire.tech
								nextcentury
								century7
								;;
							7)
								echo "The password for Century8 is in a readme file somewhere" 
								echo "within the contacts, desktop, documents, downloads, favorites," 
								echo "music, or videos folder in the user’s profile."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century7@century.underthewire.tech
								nextcentury
								century8
								;;
							8)
								echo "The password for Century9 is the number of" 
								echo "unique entries within the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century8@century.underthewire.tech
								nextcentury
								century9
								;;
							9)
								echo "The password for Century10 is the" 
								echo "161st word within the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century9@century.underthewire.tech
								nextcentury
								century10
								;;
							10)
								echo "The password for Century11 is the 10th and 8th word" 
								echo "of the Windows Update service description combined" 
								echo "PLUS the name of the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century10@century.underthewire.tech
								nextcentury
								century11
								;;
							11)
								echo "The password for Century12 is the name of the hidden" 
								echo "file within the contacts, desktop, documents, downloads," 
								echo "favorites, music, or videos folder in the user’s profile."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century11@century.underthewire.tech
								nextcentury
								century12
								;;
							12)
								echo "The password for Century13 is the description" 
								echo "of the computer designated as a Domain Controller" 
								echo "within this domain PLUS the name of the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century12@century.underthewire.tech
								nextcentury
								century13
								;;
							13)
								echo "The password for Century14 is the number" 
								echo "of words within the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century13@century.underthewire.tech
								nextcentury
								century14
								;;
							14)
								echo "The password for Century15 is the number" 
								echo "of times the word 'polo' appears within" 
								echo "the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.century.sav)" ssh century14@century.underthewire.tech
								;;
							*)
								echo "Please enter Yes or No"
								;;
						esac
					done
					;;
				No)
					echo "Starting new game..."
					century1
					;;
				*)
					echo "Please enter Yes or No"
					;;
			esac
		done
	else
		echo "No save file found, starting new game..."
		century1
	fi
}
century
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Century Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
