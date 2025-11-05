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

function banditsave (){
	if test -e ./.OTWSave/.bandit.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.bandit.sav
	fi
	if test -e ./.OTWSave/.bandit.lvl; then
		echo ""
	else
		touch ./.OTWSave/.bandit.lvl
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the next level (if you just completed 4, enter 5)"
				read -r nextlvl
				echo "$nextlvl" > ./.OTWSave/.bandit.lvl
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.bandit.sav
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
function nextbandit (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			banditsave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function bandit32 (){
	echo "Enough git stuff, you earned a break!"
	echo "Good luck!"
	ssh bandit32@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 32!"
	nextbandit
}
function bandit31 (){
	echo "There is a git repository at"
	echo "ssh://bandit31-git@bandit.labs.overthewire.org/home/bandit31-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit31-git is the same as for the user bandit31"
	echo "Clone the repository and find the password!"
	ssh bandit31@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 31!"
	nextbandit
	bandit32
}
function bandit30 (){
	echo "There is a git repository at"
	echo "ssh://bandit30-git@bandit.labs.overthewire.org/home/bandit30-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit30-git is the same as for the user bandit30"
	echo "Clone the repository and find the password!"
	ssh bandit30@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 30!"
	nextbandit
	bandit31
}
function bandit29 (){
	echo "There is a git repository at"
	echo "ssh://bandit29-git@bandit.labs.overthewire.org/home/bandit29-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit29-git is the same as for the user bandit29"
	echo "Clone the repository and find the password!"
	ssh bandit29@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 29!"
	nextbandit
	bandit30
}
function bandit28 (){
	echo "There is a git repository at"
	echo "ssh://bandit28-git@bandit.labs.overthewire.org/home/bandit28-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit28-git is the same as for the user bandit28"
	echo "Clone the repository and find the password!"
	ssh bandit28@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 28!"
	nextbandit
	bandit29
}
function bandit27 (){
	echo "There is a git repository at"
	echo "ssh://bandit27-git@bandit.labs.overthewire.org/home/bandit27-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit27-git is the same as for the user bandit27"
	echo "Clone the repository and find the password!"
	ssh bandit27@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 27!"
	nextbandit
	bandit28
}
function bandit26 (){
	echo "Hurry! Grab the password for bandit27!"
	ssh bandit26@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 26!"
	nextbandit
	bandit27
}
function bandit25 (){
	echo "Logging in to bandit26 from bandit25" 
	echo "should be fairly easy… The shell for user" 
	echo "bandit26 is not /bin/bash, but something else."
	echo "Find out what it is, how it works," 
	echo "and how to break out of it."
	echo "If you're on Windows, use Command Prompt,"
	echo "as Powershell has been known to cause issues"
	ssh bandit25@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 25!"
	nextbandit
	bandit26
}
function bandit24 (){
	echo "A daemon is listening on port 30002" 
	echo "and will give you the password for bandit25" 
	echo "if given the password for bandit24 and a" 
	echo "secret numeric 4-digit pincode. There is no way" 
	echo "to retrieve the pincode except by going through" 
	echo "all of the 10000 combinations, called brute-forcing."
	ssh bandit24@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 24!"
	nextbandit
	bandit25
}
function bandit23 (){
	echo "Look in /etc/cron.d/ for the configuration" 
	echo "and see what command is being executed."
	echo "This level requires you to create a shell script!"
	echo "You might want to keep a copy of that script around-"
	ssh bandit23@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 23!"
	nextbandit
	bandit24
}
function bandit22 (){
	echo "Look in /etc/cron.d/ for the configuration" 
	echo "and see what command is being executed."
	echo "Note: Looking at the shell script might help"
	ssh bandit22@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 22!"
	nextbandit
	bandit23
}
function bandit21 (){
	echo "A program is running automatically at regular" 
	echo "intervals from cron, the time-based job scheduler." 
	echo "Look in /etc/cron.d/ for the configuration" 
	echo "and see what command is being executed."
	ssh bandit21@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 21!"
	nextbandit
	bandit22
}
function bandit20 (){
	echo "There is a setuid binary in the homedirectory" 
	echo "that does the following: it makes a connection" 
	echo "to localhost on the port you specify as a" 
	echo "commandline argument. It then reads a line of" 
	echo "text from the connection and compares it to the" 
	echo "password in the previous level. If the password" 
	echo "is correct, it will transmit the password" 
	echo "for the next level."
	ssh bandit20@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 20!"
	nextbandit
	bandit21
}
function bandit19 (){
	echo "The password for this level can be found"
        echo "in the usual place /etc/bandit_pass, after"
	echo "you have set the setuid binary"
	ssh bandit19@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 19!"
	nextbandit
	bandit20
}
function bandit18 (){
	echo "The password for the next level is in"
	echo "a file called readme in the home directory"
	ssh bandit18@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating- Wait a minute..."
	sleep 2
	echo "You got kicked out? Oh- I see..."
	sleep 2
	echo "Someone must have modified .bashrc..."
	echo "You'll have to enter a certain SSH command-"
	while true; do
		read -r sshcommand
		case "$sshcommand" in
			"ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme")
			ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
			;;
		*)
			echo "That's not the right command, try again!"
			;;
	esac
done
echo "Congratulations on beating Level 18!"
	nextbandit
	bandit19
}
function bandit17 (){
	echo "The password for the next level is in passwords.new"
       	echo "and is the only line that has been changed between" 
	echo "passwords.old and passwords.new"
	sleep 3
	ssh bandit17@bandit.labs.overthewire.org -p 2220 -i rsakey
	echo "Congratulations on beating Level 17!"
	nextbandit
	bandit18
}
function bandit16 (){
	echo "The credentials for the next level can be retrieved" 
	echo "by submitting the password of the current level"
	echo "to a port on localhost in the range of 31000 to 32000"
	echo "First find out which of these ports have a server" 
	echo "listening on them. Then find out which of those" 
	echo "speak SSL/TLS and which don’t. There is only 1 server" 
	echo "that will give the next credentials, the others will" 
	echo "simply send back to you whatever you send to it."
	ssh bandit16@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 16!"
	echo "You may have noticed you got another SSH key (see Bandit 13)"
	echo "I hope you have is copied because you'll need it!"
	sleep 1
	while true; do
		echo "Open your favorite terminal text editor to create a file called rsakey!"
		read -r rsatext
		case "$rsatext" in
			"vim rsakey")
				vim rsakey
				break
				;;
			"nano rsakey")
				nano rsakey
				break
				;;
			"gedit rsakey")
				gedit rsakey
				break
				;;
		esac
	done
	nextbandit
	bandit17
}
function bandit15 (){
	echo "The password for the next level can be retrieved by"
	echo "submitting the password of the current level to port 30001"
	echo "on localhost using SSL/TLS encryption."
	ssh bandit15@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 15!"
	nextbandit
	bandit16
}
function bandit14 (){
	echo "The password for the next level can be retrieved"
	echo "by submitting the password of the current leve to"
	echo "port 30000 on localhost"
	ssh bandit14@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 14!"
	nextbandit
	bandit15
}
function bandit13 (){
	echo "The password for the next level is stored in"
	echo "/etc/bandit_pass/bandit14, only readable by bandit14"
	echo "You don't get a password for this level- you get"
	echo "a private SSH key to log in to the next level"
	ssh bandit13@bandit.labs.overthewire.org -p 2220
	echo "Congratulations-! Oh right, OverTheWire doesn't want you to connect from localhost now-"
	echo "The private SSH key is called sshkey.private"
	while true; do
		echo "You'll have to use a Simple Command Prior to copying the key to the current directory..."
		read -r simple
		case "$simple" in
			"scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private .")
				scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private .
				;;
			*)
				echo "That's not the right command, try again!"
				;;
		esac
	done
	nextbandit
	bandit14
}
function bandit12 (){
	echo "The password for the next level is in the file data.txt,"
	echo "which is a hexdump that has been repeatedly compressed"
	ssh bandit12@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 12!"
	nextbandit
	bandit13
}
function bandit11 (){
	echo "The password for the next level is in the file data.txt"
	echo "where all lowercase (a-z) and uppercase letters (A-Z) have"
	echo "been rotated by 13 positions"
	ssh bandit11@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 11!"
	nextbandit
	bandit12
}
function bandit10 (){
	echo "The password for the next level is in the file data.txt"
	echo "which contains base64 encoded data"
	ssh bandit10@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 10!"
	nextbandit
	bandit11
}
function bandit9 (){
	echo "The password for the next level is in the file data.txt"
	echo "and is one of the human-readable strings, preceded by"
	echo "several = characters"
	ssh bandit9@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 9!"
	nextbandit
	bandit10
}
function bandit8 (){
	echo "The password for the next level is in the file data.txt"
	echo "and is the only line of text that only occurs once"
	ssh bandit8@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 8!"
	nextbandit
	bandit9
}
function bandit7 (){
	echo "The password for the next level is in the file data.txt"
	echo "and is next to the word millionth"
	ssh bandit7@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 7!"
	nextbandit
	bandit8
}
function bandit6 (){
	echo "The password for the next level is on the server"
	echo "and is owned by the user bandit7, the group bandit6,"
	echo "and is 33 bytes in size"
	ssh bandit6@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 6!"
	nextbandit
	bandit7
}
function bandit5 (){
	echo "The password for the next level is in a file"
	echo "that is in the inhere directory, human-readable,"
	echo "1033 bytes in size, and is not executable"
	ssh bandit5@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 5!"
	nextbandit
	bandit6
}
function bandit4 (){
	echo "The password for the next level is in the only"
	echo "human-readable file in the inhere directory"
	ssh bandit4@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 4!"
	nextbandit
	bandit5
}
function bandit3 (){
	echo "The password for the next file is in"
	echo "a hidden file in the inhere directory..."
	ssh bandit3@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 3!"
	nextbandit
	bandit4
}
function bandit2 (){
	echo "The password for the next level is in a file"
	echo "called --spaces in this filename-- in the home directory"
	ssh bandit2@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 2!"
	nextbandit
	bandit3
}
function bandit1 (){
	echo "The password for the next level is in a file"
	echo "called - in the home directory"
	ssh bandit1@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 1!"
	nextbandit
	bandit2
}
function bandit0 (){
	echo "The password for Bandit0 is bandit0"
	echo "The password for the next level is in a file"
	echo "called readme in the home directory"
	ssh bandit0@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 0!"
	nextbandit
	bandit1
}
function bandit (){
echo "Welcome to Bandit! An OverTheWire Wargame!"
echo "This wargame is geared for both beginners..."
echo "And seasoned Linux CLI Veterans alike!"
sleep 3
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.bandit.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.bandit.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							echo "The password for the next level is in a file"
							echo "called - in the home directory"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit1@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 1!"
							nextbandit
							bandit2
							;;
						2)
							echo "The password for the next level is in a file"
							echo "called --spaces in this filename-- in the home directory"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit2@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 2!"
							nextbandit
							bandit3
							;;
						3)
							echo "The password for the next file is in"
							echo "a hidden file in the inhere directory..."
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit3@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 3!"
							nextbandit
							bandit4
							;;
						4)
							echo "The password for the next level is in the only"
							echo "human-readable file in the inhere directory"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit4@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 4!"
							nextbandit
							bandit5
							;;
						5)
							echo "The password for the next level is in a file"
							echo "that is in the inhere directory, human-readable,"
							echo "1033 bytes in size, and is not executable"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit5@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 5!"
							nextbandit
							bandit6
							;;
						6)
							echo "The password for the next level is on the server"
							echo "and is owned by the user bandit7, the group bandit6,"
							echo "and is 33 bytes in size"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit6@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 6!"
							nextbandit
							bandit7
							;;
						7)
							echo "The password for the next level is in the file data.txt"
							echo "and is next to the word millionth"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit7@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 7!"
							nextbandit
							bandit8
							;;
						8)
							echo "The password for the next level is in the file data.txt"
							echo "and is the only line of text that only occurs once"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit8@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 8!"
							nextbandit
							bandit9
							;;
						9)
							echo "The password for the next level is in the file data.txt"
							echo "and is one of the human-readable strings, preceded by"
							echo "several = characters"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit8@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 9!"
							nextbandit
							bandit10
							;;
						10)
							echo "The password for the next level is in the file data.txt"
							echo "which contains base64 encoded data"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit10@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 10!"
							nextbandit
							bandit11
							;;
						11)
							echo "The password for the next level is in the file data.txt"
							echo "where all lowercase (a-z) and uppercase letters (A-Z) have"
							echo "been rotated by 13 positions"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit11@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 11!"
							nextbandit
							bandit12
							;;
						12)
							echo "The password for the next level is in the file data.txt,"
							echo "which is a hexdump that has been repeatedly compressed"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit12@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 12!"
							nextbandit
							bandit13
							;;
						13)	
							echo "The password for the next level is stored in"
							echo "/etc/bandit_pass/bandit14, only readable by bandit14"
							echo "You don't get a password for this level- you get"
							echo "a private SSH key to log in to the next level"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit13@bandit.labs.overthewire.org -p 2220
							echo "Congratulations-! Oh right, OverTheWire doesn't want you to connect from localhost now-"
							echo "The private SSH key is called sshkey.private"
							while true; do
								echo "You'll have to use a Simple Command Prior to copying the key to the current directory..."
								read -r simple
								case "$simple" in
								"scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private .")
									echo "Enter the password for bandit13..."
									echo "Since your save file led you here, here's the password..."
									cat ./.OTWSave/.bandit.sav
									scp -P 2220 bandit13@bandit.labs.overthewire.org:sshkey.private .
									break
									;;
								*)
									echo "That's not the right command, try again!"
									;;
								esac
							done
							while true; do
								echo "Perfect! Now just change the permissions for the key..."
								echo "Just make sure they aren't too open"
								read -r perms
								case "$perms" in
									"chmod 700 sshkey.private")
										chmod 700 sshkey.private
										break
										;;
									*)
										echo "Those aren't the right permissions... Try again!"
										;;
								esac
							done
							echo "The password for bandit14 is in /etc/bandit_pass/bandit14"
							echo "(You'll need the password- trust me)"
							ssh bandit14@bandit.labs.overthewire.org -p 2220 -i sshkey.private
							nextbandit
							bandit14
							;;
						14)
							echo "Your save file brought you here..."
							echo "So here's the password!"
							cat ./.OTWSave/.bandit.sav
							echo "The password for the next level can be retrieved"
							echo "by submitting the password of the current leve to"
							echo "port 30000 on localhost"
							sleep 2
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit14@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 14!"
							nextbandit
							bandit15
							;;
						15)
							echo "The password for the next level can be retrieved by"
							echo "submitting the password of the current level to port 30001"
							echo "on localhost using SSL/TLS encryption."
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit15@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 15!"
							nextbandit
							bandit16
							;;
						16)
							echo "Since your save file brought you here..."
							echo "You'll need the password, so here it is!"
							cat ./.OTWSave/.bandit.sav
							echo "The credentials for the next level can be retrieved" 
							echo "by submitting the password of the current level"
							echo "to a port on localhost in the range of 31000 to 32000"
							echo "First find out which of these ports have a server" 
							echo "listening on them. Then find out which of those" 
							echo "speak SSL/TLS and which don’t. There is only 1 server" 
							echo "that will give the next credentials, the others will" 
							echo "simply send back to you whatever you send to it."
							sleep 3
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit16@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 16!"
							echo "You may have noticed you got another SSH key (see Bandit 13)"
							echo "I hope you have is copied because you'll need it!"
							sleep 1
							while true; do
								echo "Open your favorite terminal text editor to create a file called rsakey!"
								echo "Make sure to save your file"
								read -r rsatext
								case "$rsatext" in
									"vim rsakey")
										vim rsakey
										break
										;;
									"nano rsakey")
										nano rsakey
										break
										;;
									"gedit rsakey")
										gedit rsakey
										break
										;;
								esac
							done
							while true; do
								echo "Now change the permissions for your rsafile..."
								echo "Just make sure no one else can see your key-"
								read -r rsaperm
								case "$rsaperm" in
									"chmod 700 rsakey")
										chmod 700 rsakey
										break
										;;
									*)
										echo "Those aren't the right permissions, try again!"
										;;
								esac
							done
							nextbandit
							bandit17
							;;
						17)
							echo "The password for the next level is in passwords.new"
						       	echo "and is the only line that has been changed between" 
							echo "passwords.old and passwords.new"
							ssh bandit17@bandit.labs.overthewire.org -p 2220 -i rsakey
							echo "Congratulations on beating Level 17!"
							nextbandit
							bandit18
							;;
						18)
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit18@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating- Wait a minute..."
							sleep 2
							echo "You got kicked out? Oh- I see..."
							sleep 2
							echo "Someone must have modified .bashrc..."
							echo "You'll have to enter a certain SSH command-"
							while true; do
								read -r sshcommand
								case "$sshcommand" in
									"ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme")
									ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme
									;;
									*)
									echo "That's not the right command, try again!"
									;;
								esac
							done
							echo "Congratulations on beating Level 18!"
							nextbandit
							bandit19
							;;
						19)
							echo "The password for this level can be found"
					       		echo "in the usual place /etc/bandit_pass, after"
							echo "you have set the setuid binary"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit19@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 19!"
							nextbandit
							bandit20
							;;
						20)
							echo "There is a setuid binary in the homedirectory" 
							echo "that does the following: it makes a connection" 
							echo "to localhost on the port you specify as a" 
							echo "commandline argument. It then reads a line of" 
							echo "text from the connection and compares it to the" 
							echo "password in the previous level. If the password" 
							echo "is correct, it will transmit the password" 
							echo "for the next level."
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit20@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 20!"
							nextbandit
							bandit21
							;;
						21)
							echo "A program is running automatically at regular" 
							echo "intervals from cron, the time-based job scheduler." 
							echo "Look in /etc/cron.d/ for the configuration" 
							echo "and see what command is being executed."
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit21@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 21!"
							nextbandit
							bandit22
							;;
						22)
							echo "Look in /etc/cron.d/ for the configuration" 
							echo "and see what command is being executed."
							echo "Note: Looking at the shell script might help"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit22@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 22!"
							nextbandit
							bandit23
							;;
						23)
							echo "Look in /etc/cron.d/ for the configuration" 
							echo "and see what command is being executed."
							echo "This level requires you to create a shell script!"
							echo "You might want to keep a copy of that script around-"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit23@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 23!"
							nextbandit
							bandit24
							;;
						24)
							echo "A daemon is listening on port 30002" 
							echo "and will give you the password for bandit25" 
							echo "if given the password for bandit24 and a" 
							echo "secret numeric 4-digit pincode. There is no way" 
							echo "to retrieve the pincode except by going through" 
							echo "all of the 10000 combinations, called brute-forcing."
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit24@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 24!"
							nextbandit
							bandit25
							;;
						25)
							echo "Logging in to bandit26 from bandit25" 
							echo "should be fairly easy… The shell for user" 
							echo "bandit26 is not /bin/bash, but something else."
							echo "Find out what it is, how it works," 
							echo "and how to break out of it."
							echo "If you're on Windows, use Command Prompt,"
							echo "as Powershell has been known to cause issues"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit25@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 25!"
							nextbandit
							bandit26
							;;
						26)
							echo "Hurry! Grab the password for bandit27!"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit26@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 26!"
							nextbandit
							bandit27
							;;
						27)
							echo "There is a git repository at"
							echo "ssh://bandit27-git@bandit.labs.overthewire.org/home/bandit27-git/repo"
							echo "via port 2220, The password  for the user"
							echo "bandit27-git is the same as for the user bandit27"
							echo "Clone the repository and find the password!"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit27@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 27!"
							nextbandit
							bandit28
							;;
						28)
							echo "There is a git repository at"
							echo "ssh://bandit28-git@bandit.labs.overthewire.org/home/bandit28-git/repo"
							echo "via port 2220, The password  for the user"
							echo "bandit28-git is the same as for the user bandit28"
							echo "Clone the repository and find the password!"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit28@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 28!"
							nextbandit
							bandit29
							;;
						29)
							echo "There is a git repository at"
							echo "ssh://bandit29-git@bandit.labs.overthewire.org/home/bandit29-git/repo"
							echo "via port 2220, The password  for the user"
							echo "bandit29-git is the same as for the user bandit29"
							echo "Clone the repository and find the password!"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit29@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 29!"
							nextbandit
							bandit30
							;;
						30)
							echo "There is a git repository at"
							echo "ssh://bandit30-git@bandit.labs.overthewire.org/home/bandit30-git/repo"
							echo "via port 2220, The password  for the user"
							echo "bandit30-git is the same as for the user bandit30"
							echo "Clone the repository and find the password!"
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit30@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 30!"
							nextbandit
							bandit31
							;;
						31)
							echo "There is a git repository at"
							echo "ssh://bandit31-git@bandit.labs.overthewire.org/home/bandit31-git/repo"
							echo "via port 2220, The password  for the user"
							echo "bandit31-git is the same as for the user bandit31"
							echo "Clone the repository and find the password!"					
							sshpass -p "$(cat ./.OTWSave/.bandit.sav)" ssh bandit31@bandit.labs.overthewire.org -p 2220
							echo "Congratulations on beating Level 31!"
							nextbandit
							bandit32
							;;
						*)
							echo "Please enter Yes or No."
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				bandit0
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save data detected, starting new game..."
	bandit0
fi
}
bandit
echo "Congratulations..."
sleep 2	
$"$user"
sleep 1				
echo "You have beaten the Bandit Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
