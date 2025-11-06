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
function trebeksave (){
	if test -e ./.UTWSave/.trebek.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.UTWSave/.trebek.sav
	fi
	if test -e ./.UTWSave/.trebek.lvl; then
		echo ""
	else
		touch ./.UTWSave/.trebek.lvl
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the next level (if you just completed 4, enter 5)"
				read -r nextlvl
				echo "$nextlvl" > ./.UTWSave/.trebek.lvl
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.UTWSave/.trebek.sav
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
function nexttrebek (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			trebeksave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function trebek15 (){
	echo "You have reached Final Jeopardy... Just log in..."
	echo "Enter the password for Level 15..."
	ssh trebek15@trebek.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function trebek14 (){
	echo "This password for trebek15 is the output from decoding the PowerShell code found in the account properties of the user account from the previous level PLUS the name of the file on the desktop."
	echo "If the output is 'blue_and_red' and the file on the desktop is named '_are_great', the password would be 'blue_and_red_are_great'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 14..."
	ssh trebek14@trebek.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nexttrebek
	trebek15
}
function trebek13 (){
	echo "This password for trebek14 is the last name of the user who has an encoded PowerShell command in their City property PLUS the name of the file on the desktop."
	echo "If the username is 'john.doe' and the file on the desktop is named '1234', the password would be 'john.doe1234'"
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 13..."
	ssh trebek13@trebek.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nexttrebek
	trebek14
}
function trebek12 (){
	echo "This password for trebek13 is the username of the user who created the user Lor San Tekka as depicted in the event logs on the desktop PLUS the name of the file on the desktop."
	echo "If the username is 'john.doe' and the file on the desktop is named '1234', the password would be 'john.doe1234'"
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 12..."
	ssh trebek12@trebek.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nexttrebek
	trebek13
}
function trebek11 (){
	echo "This password for trebek12 is the username of the user who was created on 11 May 17 at 26 minutes after the hour, as depicted in the event logs on the desktop PLUS the name of the file on the desktop."
	echo "If the username is 'john.doe' and the file on the desktop is named '1234', the password would be 'john.doe1234'"
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 11..."
	ssh trebek11@trebek.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nexttrebek
	trebek12
}
function trebek10 (){
	echo "This password for trebek11 is the last name of the user who enabled Obi-Wan Kenobi’s account as depicted in the event logs on the desktop PLUS the name of the file on the desktop."
	echo "If the last name of the user is 'johnson' and the file on the desktop is named '1234', the password would be 'johnson1234'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 10..."
	ssh trebek10@trebek.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nexttrebek
	trebek11
}
function trebek9 (){
	echo "This password for trebek10 is the name of the potentially rogue share on the system PLUS the name of the file on the desktop."
	echo "If the share name is 'share' and the file on the desktop is named '_today', the password would be 'share_today'."
	echo "Exclude any default shares typically found on a Domain Controller."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 9..."
	ssh trebek9@trebek.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nexttrebek
	trebek10
}
function trebek8 (){
	echo "This password for trebek9 the first 8 bytes of the file located on the desktop. Combine the answer together with NO spaces."
	echo "Enter the password for Level 8..."
	ssh trebek8@trebek.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nexttrebek
	trebek9
}
function trebek7 (){
	echo "This password for trebek8 is the name of the program set to run prior to login if sticky keys are activated PLUS the name of the file on the desktop."
	echo "DNA: File extension (i.e.- .vbs). If the name is 'script.vbs' and the file on the desktop is named '1234', then the password would be 'script1234'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 7..."
	ssh trebek7@trebek.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nexttrebek
	trebek8
}
function trebek6 (){
	printf "This password for trebek7 is the total number of DLLs within the 'C:\program files\adobe\' folder and it’s subfolders PLUS the name of the file on the desktop."
	echo "If the count is '9999' and the file on the desktop is named '_abc', then the password would be '9999_abc'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 6..."
	ssh trebek6@trebek.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nexttrebek
	trebek7
}
function trebek5 (){
	echo "This password for trebek6 is the name of the executable that is starting at 3/23/2017 8:08:53 PM via the Software Protection service as depicted in the event log on the desktop."
	echo "DNA: File extensions (i.e.- .exe)."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 5..."
	ssh trebek5@trebek.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nexttrebek
	trebek6
}
function trebek4 (){
	echo "This password for trebek5 is the last execution date of Microsoft Access PLUS the name of the text file on the user’s desktop."
	echo "Format for the date is 2 digit month, 2 digit day, 4 digit year. Ex: 9 feb 2009 would be 02/09/2009."
	echo "If the date is '02/09/2009' and the file on the desktop is named '_bob', the password would be '02/09/2009_bob'."
	echo "Enter the password for Level 4..."
	ssh trebek4@trebek.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nexttrebek
	trebek5
}
function trebek3 (){
	echo "This password for trebek4 is the IP that the user Yoda last logged in from as depicted in the event logs on the desktop PLUS the name of the text file on the user’s desktop."
	echo "If the IP address is '2.3.3.2' and the file on the desktop is named 'bobby', the password would be '2.3.3.2bobby'."
	echo "Enter the password for Level 3..."
	ssh trebek3@trebek.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nexttrebek
	trebek4
}
function trebek2 (){
	echo "This password for trebek3 is the name of the executable associated with the C-3PO service PLUS the name of the file on the user’s desktop."
	echo "DNA: File extension (i.e.- .exe). If the executable name is 'binary.exe' and the file on the desktop is named '1234', the password would be 'binary1234'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 2..."
	ssh trebek2@trebek.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nexttrebek
	trebek3
}
function trebek1 (){
	echo "Answer: this password for trebek2 is the name of the script referenced in a deleted task as depicted in the event logs on the desktop."
	echo "DNA: File Extensions (i.e.- .vbs)"
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 1..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nexttrebek
	trebek2
}
function trebek (){
	echo "This UnderTheWire wargame that is alphabetically last"
	echo "is also the name of a famous late game show host..."
	sleep 3
	echo "Answer: What is Trebek?"
	sleep 1
	echo "Searching for save data..."
	sleep 2
	if test -e ./.UTWSave/.trebek.sav; then
		while true; do
			echo "Save file detected. Continue save game?"
			shopt -s nocasematch
			read -r contsave
			case "$contsave" in
				Yes)
					while true; do
						echo "Enter the level you left off on"
						echo "The next level is $(cat ./.UTWSave/.trebek.lvl)"	
						echo "(If you last completed level 4, enter 5)"
						read -r level
						case "$level" in
							2)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek2@trebek.underthewire.tech
								nexttrebek
								trebek3
								;;
							3)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek3@trebek.underthewire.tech
								nexttrebek
								trebek4
								;;
							4)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek4@trebek.underthewire.tech
								nexttrebek
								trebek5
								;;
							5)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek5@trebek.underthewire.tech
								nexttrebek
								trebek6
								;;
							6)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek6@trebek.underthewire.tech
								nexttrebek
								trebek7
								;;
							7)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek7@trebek.underthewire.tech
								nexttrebek
								trebek8
								;;
							8)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek8@trebek.underthewire.tech
								nexttrebek
								trebek9
								;;
							9)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek9@trebek.underthewire.tech
								nexttrebek
								trebek10
								;;
							10)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek10@trebek.underthewire.tech
								nexttrebek
								trebek11
								;;
							11)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek11@trebek.underthewire.tech
								nexttrebek
								trebek12
								;;
							12)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek12@trebek.underthewire.tech
								nexttrebek
								trebek13
								;;
							13)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek13@trebek.underthewire.tech
								nexttrebek
								trebek14
								;;
							14)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek14@trebek.underthewire.tech
								nexttrebek
								trebek15
								;;
							15)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek15@trebek.underthewire.tech
								;;
							*)
								echo "Please enter Yes or No"
								;;
						esac
					done
					;;
				No)
					echo "Starting new game..."
					trebek1
					;;
				*)
					echo "Please enter Yes or No"
					;;
			esac
		done
	else
		echo "No save file found, starting new game..."
		trebek1	
	fi
}
trebek
echo "Final Jeopardy: The name of the user"
echo "that just beat the Trebek Wargame..."
sleep 3
echo "What is $user?"
echo "Correct!"
echo "You can now play Double Jeopardy or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
