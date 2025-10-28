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
function OTWCheck (){
	if test -e ./.OTWSave; then
		echo "Loading OverTheWire save data..."
	else
		echo "Creating OverTheWire save data..."
		mkdir ./.OTWSave
	fi
}
function UTWCheck (){
	if test -e ./.UTWSave; then
		echo "Loading UnderTheWire save data..."
	else
		echo "Creating UnderTheWire save data..."
		mkdir ./.UTWSave
	fi
}
function nextlevel (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			save
			quit
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
function kryptonsave (){
	if test -e ./.OTWSave/.krypton.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.krypton.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.krypton.sav
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
function nextkrypton (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			kryptonsave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function krypton6 (){
	echo "The password for Level 7 is encrypted with"
	echo "the file encrypt6, there are 2 hint files, in case"
	echo "you get stuck, HINT1 and HINT2..."
	sleep 2
	echo "Enter the password for Level 6..."
	ssh krypton6@krypton.labs.overthewire.org -p 2231
	echo "Congratulations on beating Level 6!"
}
function krypton5 (){
	echo "This level is like the last, the only"
	echo "difference is that the key length is unknown"
	echo "The text is in American English"
	sleep 2
	echo "Enter the password for Level 5..."
	ssh krypton5@krypton.labs.overthewire.org -p 2231
	echo "Congratulations on beating Level 5!"
	nextkrypton
	krypton6
}
function krypton4 (){
	echo "The password for the next level is in"
	echo "its usual place, encrypted with a 6 letter key"
	echo "This level uses a Vigenere Cipher, which is"
	echo "a type of polyalphabetic substitution cypher"
	echo "It works like this, If we use the key(K) 'GOLD'," 
	echo "and P = PROCEED MEETING AS AGREED, then add" 
	echo "P to K, we get C. When adding, if we exceed 25," 
	echo "then we roll to 0 (modulo 26)."
	sleep 2
	echo "Enter the password for Level 4..."
	ssh krypton4@krypton.labs.overthewire.org -p 2231
	echo "Congratulations on beating Level 4!"
	nextkrypton
	krypton5
}
function krypton3 (){
	echo "The password for the next level is in"
	echo "the file krypton4, you got lucky and you"
	echo "also have 3 other files, found1, found2,"
	echo "and found3... The message plaintexts are in"
	echo "American English, all produced from the same key"
	sleep 2
	echo "Enter the password for Level 3..."
	ssh krypton3@krypton.labs.overthewire.org -p 2231
	echo "Congratulations on beating Level 3!"
	nextkrypton
	krypton4
}
function krypton2 (){
	echo "The password for the next level is in"
	echo "the file krypton3, which is encrypted with"
	echo "a Caesar Cipher, which shifts the alphabet by"
	echo "a set number... Think logically, and it will be easy"	
	sleep 2
	echo "Enter the password for Level 2..."
	ssh krypton2@krypton.labs.overthewire.org -p 2231
	echo "Congratulations on beating Level 2!"
	nextkrypton
	krypton3
}
function krypton1(){
	echo "Getting into the first level is easy..."
	echo "The following password is encoded in Base64:"
	echo "S1JZUFRPTklTR1JFQVQ="
	echo "The password for the next level is in"
	echo "the file krypton2, encrypted with a simple"
	echo "rotation cypher, it is also in non-standard"
	echo "ciphertext format..."
	sleep 2
	echo "Enter the password for Level 1..."
	ssh krypton1@krypton.labs.overthewire.org -p 2231
	echo "Congratulations on beating Level 1!"
	nextkrypton
	krypton2
}
function krypton (){
echo "Welcome to Krypton! An OverTheWire Wargame!"
sleep 3
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.krypton.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.krypton.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						2)
							echo "The password for the next level is in"
							echo "the file krypton3, which is encrypted with"
							echo "a Caesar Cipher, which shifts the alphabet by"
							echo "a set number... Think logically, and it will be easy"	
							sshpass -p "$(cat ./.OTWSave/.krypton.sav)" ssh krypton2@krypton.labs.overthewire.org -p 2231
							echo "Congratulations on beating Level 2!"
							nextkrypton
							krypton3
							;;
						3)
							echo "The password for the next level is in"
							echo "the file krypton4, you got lucky and you"
							echo "also have 3 other files, found1, found2,"
							echo "and found3... The message plaintexts are in"
							echo "American English, all produced from the same key"
							sshpass -p "$(cat ./.OTWSave/.krypton.sav)" ssh krypton3@krypton.labs.overthewire.org -p 2231
							echo "Congratulations on beating Level 3!"
							nextkrypton
							krypton4
							;;
						4)
							echo "The password for the next level is in"
							echo "its usual place, encrypted with a 6 letter key"
							echo "This level uses a Vigenere Cipher, which is"
							echo "a type of polyalphabetic substitution cypher"
							echo "It works like this, If we use the key(K) 'GOLD'," 
							echo "and P = PROCEED MEETING AS AGREED, then add" 
							echo "P to K, we get C. When adding, if we exceed 25," 
							echo "then we roll to 0 (modulo 26)."
							sshpass -p "$(cat ./.OTWSave/.krypton.sav)" ssh krypton4@krypton.labs.overthewire.org -p 2231
							echo "Congratulations on beating Level 4!"
							nextkrypton
							krypton5
							;;
						5)
							echo "This level is like the last, the only"
							echo "difference is that the key length is unknown"
							echo "The text is in American English"
							sshpass -p "$(cat ./.OTWSave/.krypton.sav)" ssh krypton5@krypton.labs.overthewire.org -p 2231
							echo "Congratulations on beating Level 5!"
							nextkrypton
							krypton6
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				krypton1
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	krypton1
fi
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
function narniasave (){
	if test -e ./.OTWSave/.narnia.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.narnia.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.narnia.sav
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
function nextnarnia (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			narniasave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function narnia8 (){
	echo "Enter the password for Level 8..."
	ssh narnia8@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 8!"
}
function narnia7 (){
	echo "Enter the password for Level 7..."
	ssh narnia7@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 7!"
	nextnarnia
}
function narnia6 (){
	echo "Enter the password for Level 6..."
	ssh narnia6@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 6!"
	nextnarnia
}
function narnia5 (){
	echo "Enter the password for Level 5..."
	ssh narnia5@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 5!"
	nextnarnia
}
function narnia4 (){
	echo "Enter the password for Level 4..."
	ssh narnia4@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 4!"
	nextnarnia
}
function narnia3 (){
	echo "Enter the password for Level 3..."
	ssh narnia3@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 3!"
	nextnarnia
}
function narnia2 (){
	echo "Enter the password for Level 2..."
	ssh narnia3@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 2!"
	nextnarnia
}
function narnia1 (){
	echo "Enter the password for Level 1..."
	ssh narnia1@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 1!"
	nextnarnia
}
function narnia0 (){
	echo "Welcome to Narnia! An OverTheWire wargame"
	sleep 2
	echo "Enter the password for Level 0..."
	ssh narnia0@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 0!"
	nextnarnia
}
function narnia (){
	echo "Welcome to Narnia! An OverTheWire wargame"
	sleep 2
if test -e ./.OTWSave/.narnia.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.narnia.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia1@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 1!"
							nextnarnia
							narnia2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia2@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 2!"
							nextnarnia
							narnia3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia3@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 3!"
							nextnarnia
							narnia4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia4@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 4!"
							nextnarnia
							narnia5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia5@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 5!"
							nextnarnia
							narnia6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia6@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 6!"
							nextnarnia
							narnia7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.narnia.sav)" ssh narnia7@narnia.labs.overthewire.org -p 2226
							echo "Congratulations on beating Level 7!"
							nextnarnia
							narnia8
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				narnia0
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	narnia0
fi
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
function utumnosave (){
	if test -e ./.OTWSave/.utumno.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.utumno.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.utumno.sav
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
function nextutumno (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			utumnosave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function utumno7 (){
	echo "Enter the password for Level 7..."
	ssh utumno7@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 7!"
}
function utumno6 (){
	echo "Enter the password for Level 6..."
	ssh utumno6@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 6!"
	nextutumno
}
function utumno5 (){
	echo "Enter the password for Level 5..."
	ssh utumno5@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 5!"
	nextutumno
}
function utumno4 (){
	echo "Enter the password for Level 4..."
	ssh utumno4@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 4!"
	nextutumno
}
function utumno3 (){
	echo "Enter the password for Level 3..."
	ssh utumno3@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 3!"
	nextutumno
}
function utumno2 (){
	echo "Enter the password for Level 2..."
	ssh utumno2@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 2!"
	nextutumno
}
function utumno1 (){
	echo "Enter the password for Level 1..."
	ssh utumno1@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 1!"
	nextutumno
}
function utumno0 (){
	echo "Are you adaquate?"
	sleep 3
	echo "Welcome to Utumno! An OverTheWire wargame"
	echo "Enter the password for Level 0..."
	ssh utumno0@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 0!"
	nextutumno
}
function utumno (){
	echo "Are you adaquate?"
	sleep 3
	echo "Welcome to Utumno! An OverTheWire wargame"
	sleep 2
if test -e ./.OTWSave/.utumno.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.utumno.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno1@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 1!"
							nextutumno
							utumno2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno2@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 2!"
							nextutumno
							utumno3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno3@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 3!"
							nextutumno
							utumno4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno4@behemoth.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 4!"
							nextutumno
							utumno5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno5@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 5!"
							nextutumno
							utumno6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno6@utumno.labs.overthewire.org -p 2227
							echo "Congratulations on beating Level 6!"
							nextutumno
							utumno7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.utumno.sav)" ssh utumno7@utumno.labs.overthewire.org -p 2227
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
				utumno0
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	utumno0
fi
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
function vortexsave (){
	if test -e ./.OTWSave/.vortex.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.vortex.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.vortex.sav
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
function nextvortex (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			vortexsave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function vortex26(){
	echo "Enter the password for Level 26..."
	ssh vortex26@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 26!"
}
function vortex25(){
	echo "Enter the password for Level 25..."
	ssh vortex25@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 25!"
	nextlevel
}
function vortex24(){
	echo "Enter the password for Level 24..."
	ssh vortex24@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 24!"
	nextlevel
}
function vortex23(){
	echo "Enter the password for Level 23..."
	ssh vortex23@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 23!"
	nextlevel
}
function vortex22(){
	echo "Enter the password for Level 22..."
	ssh vortex22@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 22!"
	nextlevel
}
function vortex21(){
	echo "Enter the password for Level 21..."
	ssh vortex21@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 21!"
	nextlevel
}
function vortex20(){
	echo "Enter the password for Level 20..."
	ssh vortex20@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 20!"
	nextlevel
}
function vortex19(){
	echo "Enter the password for Level 19..."
	ssh vortex19@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 19!"
	nextlevel
}
function vortex18(){
	echo "Enter the password for Level 18..."
	ssh vortex18@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 18!"
	nextlevel
}
function vortex17(){
	echo "Enter the password for Level 17..."
	ssh vortex17@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 17!"
	nextlevel
}
function vortex16(){
	echo "Enter the password for Level 16..."
	ssh vortex16@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 16!"
	nextlevel
}
function vortex15(){
	echo "Enter the password for Level 15..."
	ssh vortex15@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 15!"
	nextlevel
}
function vortex14(){
	echo "Enter the password for Level 14..."
	ssh vortex14@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 14!"
	nextlevel
}
function vortex13(){
	echo "Enter the password for Level 13..."
	ssh vortex13@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 13!"
	nextlevel
}
function vortex12(){
	echo "Enter the password for Level 12..."
	ssh vortex12@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 12!"
	nextlevel
}
function vortex11(){
	echo "Enter the password for Level 11..."
	ssh vortex11@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 11!"
	nextlevel
}
function vortex10(){
	echo "Enter the password for Level 10..."
	ssh vortex10@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 10!"
	nextlevel
}
function vortex9(){
	echo "Enter the password for Level 9..."
	ssh vortex9@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 9!"
	nextlevel
}
function vortex8(){
	echo "Enter the password for Level 8..."
	ssh vortex8@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 8!"
	nextlevel
}
function vortex7(){
	echo "Enter the password for Level 7..."
	ssh vortex7@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 7!"
	nextlevel
}
function vortex6(){
	echo "Enter the password for Level 6..."
	ssh vortex6@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 6!"
	nextlevel
}
function vortex5(){
	echo "Enter the password for Level 5..."
	ssh vortex5@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 5!"
	nextlevel
}
function vortex4(){
	echo "Enter the password for Level 4..."
	ssh vortex4@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 4!"
	nextlevel
}
function vortex3(){
	echo "Enter the password for Level 3..."
	ssh vortex3@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 3!"
	nextlevel
}
function vortex2(){
	echo "Enter the password for Level 2..."
	ssh vortex2@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 2!"
	nextlevel
}
function vortex1(){
	echo "Enter the password for Level 1..."
	ssh vortex1@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 1!"
	nextlevel
}
function vortex (){
echo "Welcome to Vortex! An OverTheWire wargame"
sleep 3
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.vortex.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.vortex.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						2)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex2@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 2!"
							nextvortex
							vortex3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex3@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 3!"
							nextvortex
							vortex4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex4@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 4!"
							nextvortex
							vortex5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex5@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 5!"
							nextvortex
							vortex6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex6@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 6!"
							nextvortex
							vortex7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex7@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 7!"
							nextvortex
							vortex8
							;;
						8)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex8@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 8!"
							nextvortex
							vortex9
							;;
						9)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex9@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 9!"
							nextvortex
							vortex10
							;;
						10)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex10@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 10!"
							nextvortex
							vortex11
							;;
						11)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex11@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 11!"
							nextvortex
							vortex12
							;;
						12)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex12@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 12!"
							nextvortex
							vortex13
							;;
						13)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex13@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 13!"
							nextvortex
							vortex14
							;;
						14)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex14@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 14!"
							nextvortex
							vortex15
							;;
						15)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex15@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 15!"
							nextvortex
							vortex16
							;;
						16)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex16@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 16!"
							nextvortex
							vortex17
							;;
						17)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex17@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 17!"
							nextvortex
							vortex18
							;;
						18)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex18@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 18!"
							nextvortex
							vortex19
							;;
						19)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex19@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 19!"
							nextvortex
							vortex20
							;;
						20)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex20@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 20!"
							nextvortex
							vortex21
							;;
						21)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex21@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 21!"
							nextvortex
							vortex22
							;;
						22)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex22@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 22!"
							nextvortex
							vortex23
							;;
						23)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex23@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 23!"
							nextvortex
							vortex24
							;;
						24)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex24@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 24!"
							nextvortex
							vortex25
							;;
						25)
							sshpass -p "$(cat ./.OTWSave/.vortex.sav)" ssh vortex25@manpage.labs.overthewire.org -p 2228
							echo "Congratulations on beating Level 25!"
							nextvortex
							vortex26
							;;
						*)
							echo "Please enter Yes or No"
							;;
					esac
				done
				;;
			No)
				echo "Starting new game..."
				vortex1
				;;
			*)
				echo "Please enter Yes or No"
				;;
		esac
	done
else
	echo "No save file found, starting new game..."
	vortex1
fi

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
function driftersave (){
	if test -e ./.OTWSave/.drifter.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.drifter.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.drifter.sav
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
function nextdrifter (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			driftersave
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function drifter14 (){
	echo "Enter the password for Level 14..."
	ssh drifter14@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 14!"
}
function drifter13 (){
	echo "Enter the password for Level 13..."
	ssh drifter13@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 13!"
	nextdrifter
	drifter14
}
function drifter12 (){
	echo "Enter the password for Level 12..."
	ssh drifter12@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 12!"
	nextdrifter
	drifter13
}
function drifter11 (){
	echo "Enter the password for Level 11..."
	ssh drifter11@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 11!"
	nextdrifter
	drifter12
}
function drifter10 (){
	echo "Enter the password for Level 10..."
	ssh drifter10@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 10!"
	nextdrifter
	drifter11
}
function drifter9 (){
	echo "Enter the password for Level 9..."
	ssh drifter9@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 9!"
	nextdrifter
	drifter10
}
function drifter8 (){
	echo "Enter the password for Level 8..."
	ssh drifter8@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 8!"
	nextdrifter
	drifter9
}
function drifter7 (){
	echo "Enter the password for Level 7..."
	ssh drifter7@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 7!"
	nextdrifter
	drifter8
}
function drifter6 (){
	echo "Enter the password for Level 6..."
	ssh drifter6@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 6!"
	nextdrifter
	drifter7
}
function drifter5 (){
	echo "Enter the password for Level 5..."
	ssh drifter5@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 5!"
	nextdrifter
	drifter6
}
function drifter4 (){
	echo "Enter the password for Level 4..."
	ssh drifter4@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 4!"
	nextdrifter
	drifter5
}
function drifter3 (){
	echo "Enter the password for Level 3..."
	ssh drifter3@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 3!"
	nextdrifter
	drifter4
}
function drifter2 (){
	echo "Enter the password for Level 2..."
	ssh drifter2@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 2!"
	nextdrifter
	drifter3
}
function drifter1 (){
	echo "Enter the password for Level 1..."
	ssh drifter1@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 1!"
	nextdrifter
	drifter2
}
function drifter0 (){
	echo "Enter the password for Level 0..."
	ssh drifter0@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 0!"
	nextdrifter
	drifter1
}
function drifter (){
echo "Welcome to Drifter! An OvertheWire wargame"
sleep 1
echo "Searching for save data..."
sleep 2
if test -e ./.OTWSave/.drifter.sav; then
	while true; do
		echo "Save file detected. Continue save game?"
		shopt -s nocasematch
		read -r contsave
		case "$contsave" in
			Yes)
				while true; do
					echo "Enter the level you left off on"
					echo "The next level is $(cat ./.OTWSave/.drifter.lvl)"	
					echo "(If you last completed level 4, enter 5)"
					shopt -s nocasematch
					read -r level
					case "$level" in
						1)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter1@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 1!"
							nextdrifter
							drifter2
							;;
						2)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter2@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 2!"
							nextdrifter
							drifter3
							;;
						3)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter3@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 3!"
							nextdrifter
							drifter4
							;;
						4)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter4@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 4!"
							nextdrifter
							drifter5
							;;
						5)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter5@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 5!"
							nextdrifter
							drifter6
							;;
						6)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter6@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 6!"
							nextdrifter
							drifter7
							;;
						7)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter7@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 7!"
							nextdrifter
							drifter8
							;;
						8)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter8@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 8!"
							nextdrifer
							drifter9
							;;
						9)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter9@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 9!"
							nextdrifer
							drifter9
							;;
						10)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter10@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 10!"
							nextdrifter
							drifter11
							;;
						11)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter11@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 11!"
							nextdrifter
							drifter12
							;;
						12)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter12@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 12!"
							nextdrifter
							drifter13
							;;
						13)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter13@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 13!"
							nextdrifter
							drifter14
							;;
						14)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter14@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 14!"
							nextdrifter
							drifter15
							;;
						15)
							sshpass -p "$(cat ./.OTWSave/.drifter.sav)" ssh drifter15@drifter.labs.overthewire.org -p 2230
							echo "Congratulations on beating Level 15!"
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
function f1save (){
	if test -e ./.OTWSave/.f1.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.OTWSave/.f1.sav
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.OTWSave/.f1.sav
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
function nextf1 (){
while true; do
echo "Proceed to the next level?"
	shopt -s nocasematch
	read -r cont
	case "$cont" in
		Yes)
			break
			;;
		No)
			f1save
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function formulaone5 (){
	echo "Enter the password for Level 5..."
	ssh formulaone5@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 5!"
}
function formulaone4 (){
	echo "Enter the password for Level 4..."
	ssh formulaone4@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 4!"
	nextf1
	formulaone5
}
function formulaone3 (){
	echo "Enter the password for Level 3..."
	ssh formulaone3@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 3!"
	nextf1
	formulaone4
}
function formulaone2 (){
	echo "Enter the password for Level 2..."
	ssh formulaone2@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 2!"
	nextf1
	formulaone3
}
function formulaone1 (){
	echo "Enter the password for Level 1..."
	ssh formulaone1@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 1!"
	nextf1
	formulaone2
}
function formulaone0 (){
	echo "Enter the password for Level 0..."
	ssh formulaone0@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 0!"
	nextf1
	formulaone1
}
function formulaone (){
	echo "Welcome to FormulaOne! An OverTheWire wargame"
	sleep 1
	echo "Searching for save data..."
	sleep 2
	if test -e ./.OTWSave/.f1.sav; then
		while true; do
			echo "Save file detected. Continue save game?"
			shopt -s nocasematch
			read -r contsave
			case "$contsave" in
				Yes)
					while true; do
						echo "Enter the level you left off on"
						echo "The next level is $(cat ./.OTWSave/.f1.lvl)"	
						echo "(If you last completed level 4, enter 5)"
						shopt -s nocasematch
						read -r level
						case "$level" in
							1)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone1@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone2
								;;
							2)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone2@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone3
								;;
							3)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone3@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone4
								;;
							4)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone4@bandit.labs.overthewire.org -p 2232
								nextf1
								formulaone5
								;;
							5)
								sshpass -p "$(cat ./.OTWSave/.f1.sav)" ssh formulaone5@krypton.labs.overthewire.org -p 2232
								;;
							*)
								echo "Please enter Yes or No"
								;;
						esac
					done
					;;
				No)
					echo "Starting new game..."
					formulaone0
					;;
				*)
					echo "Please enter Yes or No"
					;;
			esac
		done
	else
		echo "No save file found, starting new game..."
		formulaone0
	fi
}
function OTW (){
	OTWCheck
	echo "Welcome to OverTheWire Wargames!"
	echo "DISCLAIMER!"
	echo "I do not own OverTheWire or its wargames,"
	echo "Nor do I have any affiliation with OverTheWire"
	echo "(I think I'm legally required to put this)"
	echo "Well, enough legalese!"
	sleep 2
	while true; do
		echo "Choose a game:"
		echo "1. Bandit"
		echo "2. Krypton"
		echo "3. Leviathan"
		echo "4. Narnia"
		echo "5. Behemoth"
		echo "6. Utumno"
		echo "7. Maze"
		echo "8. Vortex"
		echo "9. Manpage"
		echo "10. Drifter"
		echo "11. FormulaOne"
		echo "Quit"
		shopt -s nocasematch
		read -r wargame
		case "$wargame" in
			1|Bandit)
				bandit
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Bandit Wargame..."
				echo "You can now choose another game or quit"
				;;

			2|Krypton)
				krypton
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Krypton Wargame..."
				echo "You can now choose another game or quit"
				;;
			3|Leviathan)
				leviathan
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Leviathan Wargame..."
				echo "You can now choose another game or quit"
				echo "Job 41"
				;;
			4|Narnia)
				narnia
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Narnia Wargame..."
				echo "You can now choose another game or quit"
				;;
			5|Behemoth)
				behemoth
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Behemoth Wargame..."
				echo "You can now choose another game or quit"
				echo "Job 40:15-24"
				;;
			6|Utumno)
				utumno
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Utumno Wargame..."
				echo "You can now choose another game or quit"
				;;
			7|Maze)
				maze
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Maze Wargame..."
				echo "You can now choose another game or quit"
				;;
			8|Vortex)
				vortex
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Vortex Wargame..."
				echo "You can now choose another game or quit"
				;;
			9|Manpage)
				manpage
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Manpage Wargame..."
				echo "You can now choose another game or quit"
				;;
			10|Drifter)
				drifter
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Drifter Wargame..."
				echo "You can now choose another game or quit"
				;;
			11|FormulaOne)
				formulaone
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the FormulaOne Wargame..."
				echo "You can now choose another game or quit"
				;;
			Quit)
				quit
				;;
			*)
				echo "Please enter a valid option"
				;;
		esac
	done
}
function centurysave (){
	if test -e ./.UTWSave/.century.sav; then
		echo "Save file found, loading save..."
	else
		echo "No save file found"
		echo "Creating save file..."
		touch ./.UTWSave/.century.sav
	fi
	if test -e ./.UTWSave/.century.lvl; then
		echo ""
	else
		touch ./.UTWSave/.century.lvl
	fi
	while true; do
		echo "Would you like to save your password?"
		shopt -s nocasematch
		read -r savepass
		case "$savepass" in
			Yes)
				echo "Enter the next level (if you just completed 4, enter 5)"
				read -r nextlvl
				echo "$nextlvl" > ./.UTWSave/.century.lvl
				echo "Enter the acquired password..."
				read -r acquire
				echo "$acquire" > ./.UTWSave/.century.sav
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
	echo "Enter the password for Level 14..."
	ssh cyborg14@cyborg.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextcyborg
	cyborg15
}
function cyborg13 (){
	echo "Enter the password for Level 13..."
	ssh cyborg13@cyborg.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextcyborg
	cyborg14
}
function cyborg12 (){
	echo "Enter the password for Level 12..."
	ssh cyborg12@cyborg.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextcyborg
	cyborg13
}
function cyborg11 (){
	echo "Enter the password for Level 11..."
	ssh cyborg11@cyborg.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextcyborg
	cyborg12
}
function cyborg10 (){
	echo "Enter the password for Level 10..."
	ssh cyborg10@cyborg.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextcyborg
	cyborg11
}
function cyborg9 (){
	echo "Enter the password for Level 9..."
	ssh cyborg9@cyborg.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextcyborg
	cyborg10
}
function cyborg8 (){
	echo "Enter the password for Level 8..."
	ssh cyborg8@cyborg.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextcyborg
	cyborg9
}
function cyborg7 (){
	echo "Enter the password for Level 7..."
	ssh cyborg7@cyborg.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextcyborg
	cyborg8
}
function cyborg6 (){
	echo "Enter the password for Level 6..."
	ssh cyborg6@cyborg.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextcyborg
	cyborg7
}
function cyborg5 (){
	echo "Enter the password for Level 5..."
	ssh cyborg5@cyborg.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextcyborg
	cyborg6
}
function cyborg4 (){
	echo "Enter the password for Level 4..."
	ssh cyborg4@cyborg.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextcyborg
	cyborg5
}
function cyborg3 (){
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
	echo "Enter the password for Level 15..."
	ssh oracle15@oracle.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function oracle14 (){
	echo "Enter the password for Level 14..."
	ssh oracle14@oracle.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextoracle
	oracle15
}
function oracle13 (){
	echo "Enter the password for Level 13..."
	ssh oracle13@oracle.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextoracle
	oracle14
}
function oracle12 (){
	echo "Enter the password for Level 12..."
	ssh oracle12@oracle.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextoracle
	oracle13
}
function oracle11 (){
	echo "Enter the password for Level 11..."
	ssh oracle11@oracle.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextoracle
	oracle12
}
function oracle10 (){
	echo "Enter the password for Level 10..."
	ssh oracle10@oracle.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextoracle
	oracle11
}
function oracle9 (){
	echo "Enter the password for Level 9..."
	ssh oracle9@oracle.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextoracle
	oracle10
}
function oracle8 (){
	echo "Enter the password for Level 8..."
	ssh oracle8@oracle.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextoracle
	oracle9
}
function oracle7 (){
	echo "Enter the password for Level 7..."
	ssh oracle7@oracle.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextoracle
	oracle8
}
function oracle6 (){
	echo "Enter the password for Level 6..."
	ssh oracle6@oracle.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextoracle
	oracle7
}
function oracle5 (){
	echo "Enter the password for Level 5..."
	ssh oracle5@oracle.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextoracle
	oracle6
}
function oracle4 (){
	echo "Enter the password for Level 4..."
	ssh oracle4@oracle.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextoracle
	oracle5
}
function oracle3 (){
	echo "Enter the password for Level 3..."
	ssh oracle3@oracle.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextoracle
	oracle4
}
function oracle2 (){
	echo "Enter the password for Level 2..."
	ssh oracle2@oracle.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextoracle
	oracle3
}
function oracle1 (){
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
								sshpass -p "$(cat ./.UTWSave/.oracle.sav)" ssh oracle2@oracle.underthewire.tech
								nextoracle
								oracle3
								;;
							3)
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
	echo "Enter the password for Level 15..."
	ssh trebek15@trebek.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function trebek14 (){
	echo "Enter the password for Level 14..."
	ssh trebek14@trebek.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nexttrebek
	trebek15
}
function trebek13 (){
	echo "Enter the password for Level 13..."
	ssh trebek13@trebek.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nexttrebek
	trebek14
}
function trebek12 (){
	echo "Enter the password for Level 12..."
	ssh trebek12@trebek.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nexttrebek
	trebek13
}
function trebek11 (){
	echo "Enter the password for Level 11..."
	ssh trebek11@trebek.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nexttrebek
	trebek12
}
function trebek10 (){
	echo "Enter the password for Level 10..."
	ssh trebek10@trebek.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nexttrebek
	trebek11
}
function trebek9 (){
	echo "Enter the password for Level 9..."
	ssh trebek9@trebek.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nexttrebek
	trebek10
}
function trebek8 (){
	echo "Enter the password for Level 8..."
	ssh trebek8@trebek.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nexttrebek
	trebek9
}
function trebek7 (){
	echo "Enter the password for Level 7..."
	ssh trebek7@trebek.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nexttrebek
	trebek8
}
function trebek6 (){
	echo "Enter the password for Level 6..."
	ssh trebek6@trebek.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nexttrebek
	trebek7
}
function trebek5 (){
	echo "Enter the password for Level 5..."
	ssh trebek5@trebek.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nexttrebek
	trebek6
}
function trebek4 (){
	echo "Enter the password for Level 4..."
	ssh trebek4@trebek.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nexttrebek
	trebek5
}
function trebek3 (){
	echo "Enter the password for Level 3..."
	ssh trebek3@trebek.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nexttrebek
	trebek4
}
function trebek2 (){
	echo "Enter the password for Level 2..."
	ssh trebek2@trebek.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nexttrebek
	trebek3
}
function trebek1 (){
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
								nextgroot
								groot3
								;;
							3)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek3@trebek.underthewire.tech
								nextgroot
								groot4
								;;
							4)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek4@trebek.underthewire.tech
								nextgroot
								groot5
								;;
							5)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek5@trebek.underthewire.tech
								nextgroot
								groot6
								;;
							6)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek6@trebek.underthewire.tech
								nextgroot
								groot7
								;;
							7)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek7@trebek.underthewire.tech
								nextgroot
								groot8
								;;
							8)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek8@trebek.underthewire.tech
								nextgroot
								groot9
								;;
							9)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek9@trebek.underthewire.tech
								nextgroot
								groot10
								;;
							10)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek10@trebek.underthewire.tech
								nextgroot
								groot11
								;;
							11)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek11@trebek.underthewire.tech
								nextgroot
								groot12
								;;
							12)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek12@trebek.underthewire.tech
								nextgroot
								groot13
								;;
							13)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek13@trebek.underthewire.tech
								nextgroot
								groot14
								;;
							14)
								sshpass -p "$(cat ./.UTWSave/.trebek.sav)" ssh trebek14@trebek.underthewire.tech
								nextgroot
								groot15
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
function UTW (){
	UTWCheck
	echo "Welcome to UnderTheWire:"
	echo "Powershell training for the people"
	sleep 1
	echo "DISCLAIMER!"
	echo "I do not own UnderTheWire nor its wargames"
	echo "Nor do I have any affilication with UnderTheWire"
	echo "(I'm probably legally required to put this)"
	echo "Well, enough legalese! Enjoy!"
	sleep 2
	while true; do
		echo "Choose a game:"
		echo "1. Century"
		echo "2. Cyborg"
		echo "3. Groot"
		echo "4. Oracle"
		echo "5. Trebek"
		echo "Quit"
		shopt -s nocasematch
		read -r wargame
		case "$wargame" in
			1|Century)
				century
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Century Wargame..."
				echo "You can now choose another game or quit"
				;;
			2|Cyborg)
				cyborg
				echo "Congratulations..."
				sleep 2
				$"$user"
				sleep 1
				echo "You have beaten the Cyborg Wargame..."
				echo "You can now choose another game or quit"
				;;
			3|Groot)
				groot
				echo "I Am Groot"
				;;
			4|Oracle)
				oracle
				echo "Congratulations..."
				$"$user"
				sleep 1
				echo "You have beaten the Oracle Wargame..."
				echo "You can now choose another game or quit"
				;;
			5|Trebek)
				trebek
				echo "Final Jeopardy: The name of the user"
				echo "that just beat the Trebek Wargame..."
				sleep 3
				echo "What is $user?"
				echo "Correct!"
				echo "You can now play Double Jeopardy or quit"
				;;
			Quit)
				quit
				;;
		esac
	done
}
function AroundTheWire (){
echo "Welcome to AroundTheWire!"
echo "First time here?"
sleep 1
echo "This script is an interactive interface"
echo "To play both OverTheWire and UnderTheWire wargames!"
sleep 1
echo "Please note the I have no affiliation with"
echo "OverTheWire nor UnderTheWire, nor do I own them."
sleep 1
echo "Enough legalese, enjoy!"
while true; do
	echo "Choose a wargame:" 
	echo "OverTheWire (OTW)" 
	echo "UnderTheWire (UTW)"
	echo "--Cancel--"
	shopt -s nocasematch
	read -r wire
	case "$wire" in
		OTW|otw|OverTheWire|overthewire)
		OTW
		break
		;;
		UTW|utw|UnderTheWire|underthewire)
		UTW
		break
		;;
		Cancel)
		break
		;;
		*)
		echo "Please choose a valid option"
		;;
	esac
done
}
AroundTheWire
