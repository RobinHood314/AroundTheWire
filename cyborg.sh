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
function cyborgsave (){
	if test -e ./.UTWSave/.cyborg.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.UTWSave/.cyborg.sav
	fi
	if test -e ./.UTWSave/.cyborg.lvl; then
		echo ""
	else
		touch ./.UTWSave/.cyborg.lvl
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the next level (if you just completed 4, enter 5)"
				read -r nextlvl
				echo "$nextlvl" > ./.UTWSave/.cyborg.lvl
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.UTWSave/.cyborg.sav
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
function nextcyborg (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			cyborgsave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function cyborg15 (){
	echo "Enter the password for Level 15..."
	ssh cyborg15@cyborg.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function cyborg14 (){
	echo "The password for cyborg15 is the caption for the DCOM application setting for application ID {59B8AFA0-229E-46D9-B980-DDA2C817EC7E} PLUS the name of the file on the desktop."
	echo "Enter the password for Level 14..."
	ssh cyborg14@cyborg.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextcyborg
	cyborg15
}
function cyborg13 (){
	echo "The password cyborg14 is the number of days the refresh interval is set to for DNS aging for the underthewire.tech zone PLUS the name of the file on the desktop.
"
	echo "Enter the password for Level 13..."
	ssh cyborg13@cyborg.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextcyborg
	cyborg14
}
function cyborg12 (){
	echo "The password for cyborg13 is the first four characters of the base64 encoded full path to the file that started the i_heart_robots service PLUS the name of the file on the desktop."
	echo "Enter the password for Level 12..."
	ssh cyborg12@cyborg.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextcyborg
	cyborg13
}
function cyborg11 (){
	echo "The password for cyborg12 is located in the IIS log. The password is not Mozilla or Opera."
	echo "Enter the password for Level 11..."
	ssh cyborg11@cyborg.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextcyborg
	cyborg12
}
function cyborg10 (){
	echo "The password for cyborg11 is the description of the Applocker Executable deny policy for ill_be_back.exe PLUS the name of the file on the desktop."
	echo "Enter the password for Level 10..."
	ssh cyborg10@cyborg.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextcyborg
	cyborg11
}
function cyborg9 (){
	echo "The password for cyborg10 is the first name of the user with the phone number of 876-5309 listed in Active Directory PLUS the name of the file on the desktop."
	echo "Enter the password for Level 9..."
	ssh cyborg9@cyborg.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextcyborg
	cyborg10
}
function cyborg8 (){
	echo "The password for cyborg9 is the Internet zone that the picture on the desktop was downloaded from."
	echo "Enter the password for Level 8..."
	ssh cyborg8@cyborg.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextcyborg
	cyborg9
}
function cyborg7 (){
	echo "The password for cyborg8 is the executable name of a program that will start automatically when cyborg7 logs in."
	echo "Enter the password for Level 7..."
	ssh cyborg7@cyborg.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextcyborg
	cyborg8
}
function cyborg6 (){
	echo "The password for cyborg7 is the decoded text of the string within the file on the desktop.
"
	echo "Enter the password for Level 6..."
	ssh cyborg6@cyborg.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextcyborg
	cyborg7
}
function cyborg5 (){
	echo "The password for cyborg6 is the last name of the user who has logon hours set on their account PLUS the name of the file on the desktop.
"
	echo "Enter the password for Level 5..."
	ssh cyborg5@cyborg.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextcyborg
	cyborg6
}
function cyborg4 (){
	echo "The password for cyborg5 is the PowerShell module name with a version number of 8.9.8.9 PLUS the name of the file on the desktop.
"
	echo "Enter the password for Level 4..."
	ssh cyborg4@cyborg.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextcyborg
	cyborg5
}
function cyborg3 (){
	echo "The password for cyborg4 is the number of users in the Cyborg group within Active Directory PLUS the name of the file on the desktop."
	echo "Enter the password for Level 3..."
	ssh cyborg3@cyborg.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextcyborg
	cyborg4
}
function cyborg2 (){
	echo "The password for cyborg3 is the host A" 
	echo "record IP address for CYBORG718W100N" 
	echo "PLUS the name of the file on the desktop."
	echo "Enter the password for Level 2..."
	ssh cyborg2@cyborg.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextcyborg
	cyborg3
}
function cyborg1 (){
	echo "The password for cyborg2 is the state that" 
	echo "the user Chris Rogers is from as stated within" 
	echo "Active Directory."
	echo "Enter the password for Level 1..."
	ssh cyborg1@cyborg.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nextcyborg
	cyborg2
}
function cyborg (){
	echo "Welcome to Cyborg! An UnderTheWire wargame"
	sleep 1
	echo "Searching for save data..."
	sleep 2
	if test -e ./.UTWSave/.cyborg.sav; then
		while true; do
			echo "Save file detected. Continue save game?"
			shopt -s nocasematch
			read -r contsave
			case "$contsave" in
				Yes)
					while true; do
						echo "Enter the level you left off on"
						echo "The next level is $(cat ./.UTWSave/.cyborg.lvl)"	
						echo "(If you last completed level 4, enter 5)"
						read -r level
						case "$level" in
							2)
								echo "The password for cyborg3 is the host A" 
								echo "record IP address for CYBORG718W100N" 
								echo "PLUS the name of the file on the desktop."
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg2@cyborg.underthewire.tech
								nextcyborg
								cyborg3
								;;
							3)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg3@cyborg.underthewire.tech
								nextcyborg
								cyborg4
								;;
							4)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg4@cyborg.underthewire.tech
								nextcyborg
								cyborg5
								;;
							5)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg5@cyborg.underthewire.tech
								nextcyborg
								cyborg6
								;;
							6)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg6@cyborg.underthewire.tech
								nextcyborg
								cyborg7
								;;
							7)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg7@cyborg.underthewire.tech
								nextcyborg
								cyborg8
								;;
							8)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg8@cyborg.underthewire.tech
								nextcyborg
								cyborg9
								;;
							9)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg9@cyborg.underthewire.tech
								nextcyborg
								cyborg10
								;;
							10)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg10@cyborg.underthewire.tech
								nextcyborg
								cyborg11
								;;
							11)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg11@cyborg.underthewire.tech
								nextcyborg
								cyborg12
								;;
							12)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg12@cyborg.underthewire.tech
								nextcyborg
								cyborg13
								;;
							13)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg13@cyborg.underthewire.tech
								nextcyborg
								cyborg14
								;;
							14)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg14@cyborg.underthewire.tech
								nextcyborg
								cyborg15
								;;
							15)
								sshpass -p "$(cat ./.UTWSave/.cyborg.sav)" ssh cyborg15@cyborg.underthewire.tech
								;;
							*)
								echo "Please enter Yes or No"
								;;
						esac
					done
					;;
				No)
					echo "Starting new game..."
					cyborg1
					;;
				*)
					echo "Please enter Yes or No"
					;;
			esac
		done
	else
		echo "No save file found, starting new game..."
		cyborg1
	fi
}
cyborg
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Cyborg Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
