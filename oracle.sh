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
function oraclesave (){
	if test -e ./.UTWSave/.oracle.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.UTWSave/.oracle.sav
	fi
	if test -e ./.UTWSave/.oracle.lvl; then
		echo ""
	else
		touch ./.UTWSave/.oracle.lvl
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the next level (if you just completed 4, enter 5)"
				read -r nextlvl
				echo "$nextlvl" > ./.UTWSave/.oracle.lvl
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.UTWSave/.oracle.sav
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
function nextoracle (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			oraclesave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function oracle15 (){
	echo "Just log in, the game ends here..."
	echo "Enter the password for Level 15..."
	ssh oracle15@oracle.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function oracle14 (){
	echo "The password for oracle15 is the name of the user" 
	echo "who added the user Bereet to the Galaxy security group" 
	echo "as depicted in the event logs on the desktop PLUS" 
	echo "the name of the text file on the user’s desktop."
	echo "If the script name is 'randy' and the file on the desktop" 
	echo "is named '1234', the password would be 'randy1234'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 14..."
	ssh oracle14@oracle.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextoracle
	oracle15
}
function oracle13 (){
	echo "The password for oracle14 is the name of the user" 
	echo "who created the Galaxy security group as depicted in" 
	echo "the event logs on the desktop PLUS the name of the" 
	echo "text file on the user’s desktop."
	echo "If the user’s name is 'randy' and the file on the desktop" 
	echo "is named '1234', the password would be 'randy1234'."
	echo "Enter the password for Level 13..."
	ssh oracle13@oracle.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextoracle
	oracle14
}
function oracle12 (){
	echo "The password for oracle13 is the IP of the system" 
	echo "that this user has previously established a remote desktop with."
	echo "Enter the password for Level 12..."
	ssh oracle12@oracle.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextoracle
	oracle13
}
function oracle11 (){
	echo "The password for oracle12 is the drive letter" 
	echo "associated with the mapped drive that this user has."
	echo "Submission should be one letter and lowercase."
	echo "Enter the password for Level 11..."
	ssh oracle11@oracle.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextoracle
	oracle12
}
function oracle10 (){
	echo "The password for oracle11 is the .biz site the user has previously navigated to."
	echo "Don’t include the extension."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 10..."
	ssh oracle10@oracle.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextoracle
	oracle11
}
function oracle9 (){
	echo "The password for oracle10 is the computer name of the DNS" 
	echo "record of the mail server listed in the UnderTheWire.tech zone" 
	echo "PLUS the name of the file on the user’s desktop."
	echo "If the server name is 'some_blob' and the file on the desktop" 
	echo "is named '1234', the password would be 'some_blob1234'."
	echo "Only submit the computer name and not the fully qualified domain name."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 9..."
	ssh oracle9@oracle.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextoracle
	oracle10
}
function oracle8 (){
	echo "The password for oracle9 is the name of the file in the GET Request from" 
	echo "www.guardian.galaxy.com within the log file on the desktop."
	echo "Enter the password for Level 8..."
	ssh oracle8@oracle.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextoracle
	oracle9
}
function oracle7 (){
	echo "The password for oracle8 is the name of the domain that a trust is built" 
	echo "with PLUS the name of the file on the user’s desktop."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "If the name of the trust is 'blob' and the file on the desktop" 
	echo "is named '1234', the password would be 'blob1234'."
	echo "Enter the password for Level 7..."
	ssh oracle7@oracle.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextoracle
	oracle8
}
function oracle6 (){
	echo "The password for oracle7 is the name of the OU that doesn’t have a GPO" 
	echo "linked to it PLUS the name of the file on the user’s desktop."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Exclude the 'Groups' OU."
	echo "Enter the password for Level 6..."
	ssh oracle6@oracle.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextoracle
	oracle7
}
function oracle5 (){
	echo "The password for oracle6 is the name of the GPO that contains a description of" 
	echo "'I_AM_GROOT' PLUS the name of the file on the user’s desktop."
	echo "If you are using SSH, you MUST do a Help on the cmdlet needed to solve this." 
	echo "For example, if the cmdlet is 'get-something' type 'help get-something' first," 
	echo "this will make the cmdlet available for you to use. This is a bug in the SSH software used."
	echo "If the GPO description is 'blob' and the file on the desktop is" 
	echo "named '1234', the password would be 'blob1234'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 5..."
	ssh oracle5@oracle.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextoracle
	oracle6
}
function oracle4 (){
	echo "The password for oracle5 is the name of the GPO that was last created" 
	echo "PLUS the name of the file on the user’s desktop."
	echo "Note: If the GPO name is 'blob' and the file on the desktop is" 
	echo "named '1234', the password would be 'blob1234'."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 4..."
	ssh oracle4@oracle.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextoracle
	oracle5
}
function oracle3 (){
	echo "The password for oracle4 is the date that the system logs were" 
	echo "last wiped as depicted in the event logs on the desktop."
	echo "Note: The format for the password is 2 digit month, 2 digit day," 
	echo "4 digit year. Ex: 5 Jan 2015 would be 01/05/2015."
	echo "Enter the password for Level 3..."
	ssh oracle3@oracle.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextoracle
	oracle4
}
function oracle2 (){
	echo "The password for oracle3 is the last five digits of the MD5 hash," 
	echo "from the hashes of files on the desktop that appears twice."
	echo "Note: The password will be lowercase no matter how it appears on the screen. "
	echo "Enter the password for Level 2..."
	ssh oracle2@oracle.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextoracle
	oracle3
}
function oracle1 (){
	echo "The password for oracle2 is the timezone in which this system is set to."
	echo "Note: The password is the abbreviation of the timezone. For example," 
	echo "if it is listed as being in the Eastern timezone, the answer is est."
	echo "The password will be lowercase no matter how it appears on the screen."
	echo "Enter the password for Level 1..."
	ssh oracle1@oracle.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nextoracle
	oracle2
}
function oracle (){
	echo "Welcome to Oracle! An UnderTheWire wargame"
	sleep 1
	echo "Searching for save data..."
	sleep 2
	if test -e ./.UTWSave/.oracle.sav; then
		while true; do
			echo "Save file detected. Continue save game?"
			shopt -s nocasematch
			read -r contsave
			case "$contsave" in
				Yes)
					while true; do
						echo "Enter the level you left off on"
						echo "The next level is $(cat ./.UTWSave/.oracle.lvl)"	
						echo "(If you last completed level 4, enter 5)"
						read -r level
						case "$level" in
							2)
								echo "The password for oracle3 is the last five digits of the MD5 hash," 
								echo "from the hashes of files on the desktop that appears twice."
								echo "Note: The password will be lowercase no matter how it appears on the screen. "
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle2@oracle.underthewire.tech
								nextoracle
								oracle3
								;;
							3)
								echo "The password for oracle4 is the date that the system logs were" 
								echo "last wiped as depicted in the event logs on the desktop."
								echo "Note: The format for the password is 2 digit month, 2 digit day," 
								echo "4 digit year. Ex: 5 Jan 2015 would be 01/05/2015."
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle3@oracle.underthewire.tech
								nextoracle
								oracle4
								;;
							4)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle4@oracle.underthewire.tech
								nextoracle
								oracle5
								;;
							5)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle5@oracle.underthewire.tech
								nextoracle
								oracle6
								;;
							6)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle6@oracle.underthewire.tech
								nextoracle
								oracle7
								;;
							7)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle7@oracle.underthewire.tech
								nextoracle
								oracle8
								;;
							8)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle8@oracle.underthewire.tech
								nextoracle
								oracle9
								;;
							9)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle9@oracle.underthewire.tech
								nextoracle
								oracle10
								;;
							10)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle10@oracle.underthewire.tech
								nextoracle
								oracle11
								;;
							11)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle11@oracle.underthewire.tech
								nextoracle
								oracle12
								;;
							12)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle12@oracle.underthewire.tech
								nextoracle
								oracle13
								;;
							13)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle13@oracle.underthewire.tech
								nextoracle
								oracle14
								;;
							14)
								echo "The password for oracle15 is the name of the user" 
								echo "who added the user Bereet to the Galaxy security group" 
								echo "as depicted in the event logs on the desktop PLUS" 
								echo "the name of the text file on the user’s desktop."
								echo "If the script name is 'randy' and the file on the desktop" 
								echo "is named '1234', the password would be 'randy1234'."
								echo "The password will be lowercase no matter how it appears on the screen."
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle14@oracle.underthewire.tech
								nextoracle
								oracle15
								;;
							15)
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle15@oracle.underthewire.tech
								;;
							*)
								echo "Please enter Yes or No"
								;;
						esac
					done
					;;
				No)
					echo "Starting new game..."
					oracle1
					;;
				*)
					echo "Please enter Yes or No"
					;;
			esac
		done
	else
		echo "No save file found, starting new game..."
		oracle1	
	fi
}
oracle
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Oracle Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
