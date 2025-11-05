#!/bin/bash
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
function grootsave (){
	if test -e ./.UTWSave/.groot.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.UTWSave/.groot.sav
	fi
	if test -e ./.UTWSave/.groot.lvl; then
		echo ""
	else
		touch ./.UTWSave/.groot.lvl
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the next level (if you just completed 4, enter 5)"
				read -r nextlvl
				echo "$nextlvl" > ./.UTWSave/.groot.lvl
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.UTWSave/.groot.sav
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
function nextgroot (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			grootsave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function groot15 (){
	echo "I am Groot"
	ssh groot15@groot.underthewire.tech
	echo "I am Groot"
}
function groot14 (){
	echo "I am Groot"
	ssh groot14@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot15
}
function groot13 (){
	echo "I am Groot"
	ssh groot13@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot14
}
function groot12 (){
	echo "I am Groot"
	ssh groot12@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot13
}
function groot11 (){
	echo "I am Groot"
	ssh groot11@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot12
}
function groot10 (){
	echo "I am Groot"
	ssh groot10@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot11
}
function groot9 (){
	echo "I am Groot"
	ssh groot9@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot10
}
function groot8 (){
	echo "I am Groot"
	ssh groot8@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot9
}
function groot7 (){
	echo "I am Groot"
	ssh groot7@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot8
}
function groot6 (){
	echo "I am Groot"
	ssh groot6@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot7
}
function groot5 (){
	echo "I am Groot"
	ssh groot5@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot6
}
function groot4 (){
	echo "I am Groot"
	ssh groot4@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot5
}
function groot3 (){
	echo "I am Groot"
	ssh groot3@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot4
}
function groot2 (){
	echo "I am Groot"
	ssh groot2@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot3
}
function groot1 (){
	echo "I am Groot"
	ssh groot1@groot.underthewire.tech
	echo "I am Groot"
	nextgroot
	groot2
}
function groot (){
	echo "Welcome to Groot! An UnderTheWire wargame!"
	sleep 1
	echo "Searching for save data..."
	sleep 2
	if test -e ./.UTWSave/.groot.sav; then
		while true; do
			echo "Save file detected. Continue save game?"
			shopt -s nocasematch
			read -r contsave
			case "$contsave" in
				Yes)
					while true; do
						echo "Enter the level you left off on"
						echo "The next level is $(cat ./.UTWSave/.groot.lvl)"	
						echo "(If you last completed level 4, enter 5)"
						read -r level
						case "$level" in
							2)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot2@groot.underthewire.tech
								nextgroot
								groot3
								;;
							3)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot3@groot.underthewire.tech
								nextgroot
								groot4
								;;
							4)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot4@groot.underthewire.tech
								nextgroot
								groot5
								;;
							5)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot5@groot.underthewire.tech
								nextgroot
								groot6
								;;
							6)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot6@groot.underthewire.tech
								nextgroot
								groot7
								;;
							7)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot7@groot.underthewire.tech
								nextgroot
								groot8
								;;
							8)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot8@groot.underthewire.tech
								nextgroot
								groot9
								;;
							9)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot9@groot.underthewire.tech
								nextgroot
								groot10
								;;
							10)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot10@groot.underthewire.tech
								nextgroot
								groot11
								;;
							11)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot11@groot.underthewire.tech
								nextgroot
								groot12
								;;
							12)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot12@groot.underthewire.tech
								nextgroot
								groot13
								;;
							13)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot13@groot.underthewire.tech
								nextgroot
								groot14
								;;
							14)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot14@groot.underthewire.tech
								nextgroot
								groot15
								;;
							15)
								sshpass -p "$(cat ./.UTWSave/.groot.sav)" ssh groot15@groot.underthewire.tech
								;;
							*)
								echo "Please enter Yes or No"
								;;
						esac
					done
					;;
				No)
					echo "Starting new game..."
					groot1
					;;
				*)
					echo "Please enter Yes or No"
					;;
			esac
		done
	else
		echo "No save file found, starting new game..."
		groot1	
	fi
}
groot
echo "I Am Groot"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
