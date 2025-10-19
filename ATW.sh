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
			quit
			;;
		*)
			echo "Please enter Yes or No"
			;;
	esac
done
}
function bandit0 (){
	echo "The password for Bandit0 is bandit0"
	echo "The password for the next level is in a file"
	echo "called readme in the home directory"
	ssh bandit0@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 0!"
	nextlevel
}
function bandit1 (){
	echo "The password for the next level is in a file"
	echo "called - in the home directory"
	ssh bandit1@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 1!"
	nextlevel
}
function bandit2 (){
	echo "The password for the next level is in a file"
	echo "called --spaces in this filename-- in the home directory"
	ssh bandit2@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 2!"
	nextlevel
}
function bandit3 (){
	echo "The password for the next file is in"
	echo "a hidden file in the inhere directory..."
	ssh bandit3@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 3!"
	nextlevel
}
function bandit4 (){
	echo "The password for the next level is in the only"
	echo "human-readable file in the inhere directory"
	ssh bandit4@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 4!"
	nextlevel
}
function bandit5 (){
	echo "The password for the next level is in a file"
	echo "that is in the inhere directory, human-readable,"
	echo "1033 bytes in size, and is not executable"
	ssh bandit5@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 5!"
	nextlevel
}
function bandit6 (){
	echo "The password for the next level is on the server"
	echo "and is owned by the user bandit7, the group bandit6,"
	echo "and is 33 bytes in size"
	ssh bandit6@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 6!"
	nextlevel
}
function bandit7 (){
	echo "The password for the next level is in the file data.txt"
	echo "and is next to the word millionth"
	ssh bandit7@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 7!"
	nextlevel
}
function bandit8 (){
	echo "The password for the next level is in the file data.txt"
	echo "and is the only line of text that only occurs once"
	ssh bandit8@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 8!"
	nextlevel
}
function bandit9 (){
	echo "The password for the next level is in the file data.txt"
	echo "and is one of the human-readable strings, preceded by"
	echo "several = characters"
	ssh bandit9@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 9!"
	nextlevel
}
function bandit10 (){
	echo "The password for the next level is in the file data.txt"
	echo "which contains base64 encoded data"
	ssh bandit10@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 10!"
	nextlevel
}
function bandit11 (){
	echo "The password for the next level is in the file data.txt"
	echo "where all lowercase (a-z) and uppercase letters (A-Z) have"
	echo "been rotated by 13 positions"
	ssh bandit11@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 11!"
	nextlevel
}
function bandit12 (){
	echo "The password for the next level is in the file data.txt,"
	echo "which is a hexdump that has been repeatedly compressed"
	ssh bandit12@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 12!"
	nextlevel
}
function bandit13 (){
	echo "The password for the next level is stored in"
	echo "/etc/bandit_pass/bandit14, only readable by bandit14"
	echo "You don't get a password for this level- you get"
	echo "a private SSH key to log in to the next level"
	ssh bandit13@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 1!"
	nextlevel
}
function bandit14 (){
	echo "The password for the next level can be retrieved"
	echo "by submitting the password of the current leve to"
	echo "port 30000 on localhost"
	ssh bandit14@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 14!"
	nextlevel
}
function bandit15 (){
	echo "The password for the next level can be retrieved by"
	echo "submitting the password of the current level to port 30001"
	echo "on localhost using SSL/TLS encryption."
	ssh bandit15@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 15!"
	nextlevel
}
function bandit16 (){
	echo "The password for the next level can be retrieved" 
	echo "by submitting the password of the current level"
	echo "to a port on localhost in the range of 31000 to 32000"
	echo "First find out which of these ports have a server" 
	echo "listening on them. Then find out which of those" 
	echo "speak SSL/TLS and which don’t. There is only 1 server" 
	echo "that will give the next credentials, the others will" 
	echo "simply send back to you whatever you send to it."
	ssh bandit16@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 16!"
	nextlevel
}
function bandit17 (){
	echo "The password for the next level is in passwords.new"
       	echo "and is the only line that has been changed between" 
	echo "passwords.old and passwords.new"
	ssh bandit17@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 17!"
	nextlevel
}
function bandit18 (){
	echo "The password for the next level is in"
	echo "a file called readme in the home directory"
	ssh bandit18@bandit.labs.overthewire.org
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
nextlevel
}
function bandit19 (){
	echo "The password for this level can be found"
        echo "in the usual place /etc/bandit_pass, after"
	echo "you have set the setuid binary"
	ssh bandit19@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 19!"
	nextlevel
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
	ssh bandit20@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 20!"
	nextlevel
}
function bandit21 (){
	echo "A program is running automatically at regular" 
	echo "intervals from cron, the time-based job scheduler." 
	echo "Look in /etc/cron.d/ for the configuration" 
	echo "and see what command is being executed."
	ssh bandit21@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 21!"
	nextlevel
}
function bandit22 (){
	echo "Look in /etc/cron.d/ for the configuration" 
	echo "and see what command is being executed."
	echo "Note: Looking at the shell script might help"
	ssh bandit22@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 22!"
	nextlevel
}
function bandit23 (){
	echo "Look in /etc/cron.d/ for the configuration" 
	echo "and see what command is being executed."
	echo "This level requires you to create a shell script!"
	echo "You might want to keep a copy of that script around-"
	ssh bandit23@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 23!"
	nextlevel
}
function bandit24 (){
	echo "A daemon is listening on port 30002" 
	echo "and will give you the password for bandit25" 
	echo "if given the password for bandit24 and a" 
	echo "secret numeric 4-digit pincode. There is no way" 
	echo "to retrieve the pincode except by going through" 
	echo "all of the 10000 combinations, called brute-forcing."
	ssh bandit24@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 24!"
	nextlevel
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
	nextlevel
}
function bandit26 (){
	echo "Hurry! Grab the password for bandit27!"
	ssh bandit26@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 26!"
	nextlevel
}
function bandit27 (){
	echo "There is a git repository at"
	echo "ssh://bandit27-git@bandit.labs.overthewire.org/home/bandit27-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit27-git is the same as for the user bandit27"
	echo "Clone the repository and find the password!"
	ssh bandit27@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 27!"
	nextlevel
}
function bandit28 (){
	echo "There is a git repository at"
	echo "ssh://bandit28-git@bandit.labs.overthewire.org/home/bandit28-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit28-git is the same as for the user bandit28"
	echo "Clone the repository and find the password!"
	ssh bandit28@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 28!"
	nextlevel
}
function bandit29 (){
	echo "There is a git repository at"
	echo "ssh://bandit29-git@bandit.labs.overthewire.org/home/bandit29-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit29-git is the same as for the user bandit29"
	echo "Clone the repository and find the password!"
	ssh bandit29@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 29!"
	nextlevel
}
function bandit30 (){
	echo "There is a git repository at"
	echo "ssh://bandit30-git@bandit.labs.overthewire.org/home/bandit30-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit30-git is the same as for the user bandit30"
	echo "Clone the repository and find the password!"
	ssh bandit30@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 30!"
	nextlevel
}
function bandit31 (){
	echo "There is a git repository at"
	echo "ssh://bandit31-git@bandit.labs.overthewire.org/home/bandit31-git/repo"
	echo "via port 2220, The password  for the user"
	echo "bandit31-git is the same as for the user bandit31"
	echo "Clone the repository and find the password!"
	ssh bandit31@bandit.labs.overthewire.org -p 2220
	echo "Congratulations on beating Level 31!"
	nextlevel
}
function bandit32 (){
	echo "Enough git stuff, you earned a break!"
	echo "Good luck!"
	ssh bandit32@bandit.labs.overthewire.org
	echo "Congratulations on beating Level 32!"
	nextlevel
}
function bandit (){
echo "Welcome to Bandit! An OverTheWire Wargame!"
echo "This wargame is geared for both beginners..."
echo "And seasoned Linux CLI Veterans alike!"
sleep 3
bandit0
bandit1
bandit2
bandit3
bandit4
bandit5
bandit6
bandit7
bandit8
bandit9
bandit10
bandit11
bandit12
bandit13
bandit14
bandit15
bandit16
bandit17
bandit18
bandit19
bandit20
bandit21
bandit22
bandit23
bandit24
bandit25
bandit26
bandit27
bandit28
bandit29
bandit30
bandit31
bandit32
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
	nextlevel
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
	nextlevel
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
	nextlevel
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
	nextlevel
}
function krypton5 (){
	echo "This level is like the last, the only"
	echo "difference is that the key length is unknown"
	echo "The text is in American English"
	sleep 2
	echo "Enter the password for Level 5..."
	ssh krypton5@krypton.labs.overthewire.org -p 2231
	echo "Congratulations on beating Level 5!"
	nextlevel
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
function krypton (){
	echo "Welcome to Krypton! An OverTheWire wargame"
	sleep 2
	krypton0
	krypton1
	krypton2
	krypton3
	krypton4
	krypton5
	krypton6
}
function leviathan1 (){
	echo "Behold, the hope of him is in vain:"
	echo "shall not one be cast down even at the sight of him?"
	echo "None is so fierce that dare stir him up..."
	echo "Enter the password for Level 1..."
	ssh leviathan1@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 1!"
	nextlevel
}
function leviathan2 (){
	echo "Out of his mouth go burning lamps,"
	echo "and sparks of fire leap out."
	echo "Out of his nostrils goeth smoke,"
	echo "as out of a seething pot or caldron..."
	echo "Enter the password for Level 2..."
	ssh leviathan2@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 2!"
	nextlevel
}
function leviathan3 (){
	echo "His heart is as firm as a stone; yea,"
	echo "as hard as a piece of the nether millstone"
	echo "When he raiseth up himself, the mighty are afraid"
	echo "Enter the password for Level 3..."
	ssh leviathan3@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 3!"
	nextlevel
}
function leviathan4 (){
	echo "The sword of him that layeth at him cannot hold:"
	echo "the spear, the dart, nor the habergeon"
	echo "He esteemeth iron as straw, and brass as rotten wood"
	echo "Enter the password for Level 4..."
	ssh leviathan4@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 4!"
	nextlevel
}
function leviathan5 (){
	echo "The arrow cannot make him flee: slingstones are turned"
	echo "with him into stubble. Darts are counted as stubble:"
	echo "he laugheth at the shaking of the spear."
	echo "Enter the password for Level 5..."
	ssh leviathan5@leviathan.labs.overthewire.org -p 2223
	echo "Congratulations on beating Level 5!"
	nextlevel
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
function leviathan (){
	echo "Canst thou draw out the Leviathan with a hook?"
	echo "Or his tongue with a cord which thou lettest down?"
	sleep 3
	echo "Welcome to Leviathan! An OverTheWire wargame"
	sleep 1
	leviathan1
	leviathan2
	leviathan3
	leviathan4
	leviathan5
	leviathan6
}
function narnia (){
	echo "Welcome to Narnia! An OverTheWire wargame"
	sleep 2
	echo "Enter the password for Level 0..."
	ssh narnia0@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 0!"
	nextlevel
	echo "Enter the password for Level 1..."
	ssh narnia1@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh narnia3@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh narnia3@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh narnia4@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh narnia5@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh narnia6@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh narnia7@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 7!"
	nextlevel
	echo "Enter the password for Level 8..."
	ssh narnia8@narnia.labs.overthewire.org -p 2226
	echo "Congratulations on beating Level 8!"
}
function behemoth0 (){
	echo "Lo now, his strength is in his lions,"
	echo "and the force is in the navel of his belly."
	echo "Enter the password for Level 0..."
	ssh behemoth0@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 0!"
	nextlevel
}
function behemoth1 (){
	echo "He moveth his tail like a cedar: the"
	echo "sinews of his stones are wrapped together"
	echo "Enter the password for Level 1..."
	ssh behemoth1@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 1!"
	nextlevel	
}
function behemoth2 (){
	echo "His bones are as strong pieces of brass;"
	echo "his bones are like bars of iron."
	echo "Enter the password for Level 2..."
	ssh behemoth2@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 2!"
	nextlevel	
}
function behemoth3 (){
	echo "He is the chief of the ways of God: he that"
	echo "made him can make his sword to approach unto him"
	echo "Enter the password for Level 3..."
	ssh behemoth3@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 3!"
	nextlevel	
}
function behemoth4 (){
	echo "Surely the mountains bring him forth food,"
	echo "where all the beasts of the field play."
	echo "Enter the password for Level 4..."
	ssh behemoth4@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 4!"
	nextlevel	
}
function behemoth5 (){
	echo "He lieth under the shady trees," 
	echo "in the covert of the reed, and fens."
	echo "Enter the password for Level 5..."
	ssh behemoth5@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 5!"
	nextlevel
}
function behemoth6 (){
	echo "The shady trees cover him with their shadow;"
	echo "the willows of the brook compass him about."
	echo "Enter the password for Level 6..."
	ssh behemoth6@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 6!"
	nextlevel	
}
function behemoth7 (){
	echo "Behold, he drinketh up a river, and hasteth not:"
	echo "he trusteth that he can draw up Jordan into his mouth."
	echo "Enter the password for Level 7..."
	ssh behemoth7@narnia.labs.overthewire.org -p 2221
	echo "Congratulations on beating Level 7!"
}
function behemoth (){
	echo "Welcome to Behemoth! An OverTheWire wargame"
	sleep 2
	echo "Behold now Behemoth, which I made with thee;"
	echo "he eateth grass as an ox."
	sleep 2
	behemoth0
	behemoth1
	behemoth2
	behemoth3
	behemoth4
	behemoth5
	behemoth6
	behemoth7
}
function utumno (){
	echo "Are you adaquate?"
	sleep 3
	echo "Welcome to Utumno! An OverTheWire wargame"
	echo "Enter the password for Level 0..."
	ssh utumno0@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 0!"
	nextlevel
	echo "Enter the password for Level 1..."
	ssh utumno1@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh utumno2@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh utumno3@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh utumno4@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh utumno5@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh utumno6@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh utumno7@narnia.labs.overthewire.org -p 2227
	echo "Congratulations on beating Level 7!"
}
function maze0 (){
	echo "Enter the password for Level 0..."
	ssh maze0@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 0!"
	nextlevel
}
function maze1 (){
	echo "Enter the password for Level 1..."
	ssh maze1@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 1!"
	nextlevel
}
function maze2 (){
	echo "Enter the password for Level 2..."
	ssh maze2@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 2!"
	nextlevel
}
function maze3 (){
	echo "Enter the password for Level 3..."
	ssh maze3@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 3!"
	nextlevel
}
function maze4 (){
	echo "Enter the password for Level 4..."
	ssh maze4@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 4!"
	nextlevel
}
function maze5 (){
	echo "Enter the password for Level 5..."
	ssh maze5@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 5!"
	nextlevel
}
function maze6 (){
	echo "Enter the password for Level 6..."
	ssh maze6@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 6!"
	nextlevel
}
function maze7 (){
	echo "Enter the password for Level 7..."
	ssh maze7@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 7!"
	nextlevel
}
function maze8 (){
	echo "One more... final analysis."
	echo "Now it's time for the last test."
	echo "To escape..."
	echo "Enter the password for Level 8..."
	ssh maze8@maze.labs.overthewire.org -p 2225
	echo "Congratulations on beating Level 8!"
}
function maze (){
	echo "Out there's the Maze. Everything we do-"
	echo "our whole life, Greenie- revolves around the Maze."
	sleep 3
	echo "Welcome to Maze! An OvertheWire wargame"
	maze0
	maze1
	maze2
	maze3
	maze4
	maze5
	maze6
	maze7
	maze8
}
function vortex (){
	echo "Welcome to Vortex! An OverTheWire wargame"
	sleep 3
	echo "Enter the password for Level 1..."
	ssh vortex1@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh vortex2@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh vortex3@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh vortex4@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh vortex5@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh vortex6@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh vortex7@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 7!"
	nextlevel
	echo "Enter the password for Level 8..."
	ssh vortex8@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 8!"
	nextlevel
	echo "Enter the password for Level 9..."
	ssh vortex9@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 9!"
	nextlevel
	echo "Enter the password for Level 10..."
	ssh vortex10@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 10!"
	nextlevel
	echo "Enter the password for Level 11..."
	ssh vortex11@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 11!"
	nextlevel
	echo "Enter the password for Level 12..."
	ssh vortex12@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 12!"
	nextlevel
	echo "Enter the password for Level 13..."
	ssh vortex13@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 13!"
	nextlevel
	echo "Enter the password for Level 14..."
	ssh vortex14@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 14!"
	nextlevel
	echo "Enter the password for Level 15..."
	ssh vortex15@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 15!"
	nextlevel
	echo "Enter the password for Level 16..."
	ssh vortex16@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 16!"
	nextlevel
	echo "Enter the password for Level 17..."
	ssh vortex17@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 17!"
	nextlevel
	echo "Enter the password for Level 18..."
	ssh vortex18@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 18!"
	nextlevel
	echo "Enter the password for Level 19..."
	ssh vortex19@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 19!"
	nextlevel
	echo "Enter the password for Level 20..."
	ssh vortex20@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 20!"
	nextlevel
	echo "Enter the password for Level 21..."
	ssh vortex21@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 21!"
	nextlevel
	echo "Enter the password for Level 22..."
	ssh vortex22@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 22!"
	nextlevel
	echo "Enter the password for Level 23..."
	ssh vortex23@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 23!"
	nextlevel
	echo "Enter the password for Level 24..."
	ssh vortex24@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 24!"
	nextlevel
	echo "Enter the password for Level 25..."
	ssh vortex25@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 25!"
	nextlevel
	echo "Enter the password for Level 26..."
	ssh vortex26@vortex.labs.overthewire.org -p 2228
	echo "Congratulations on beating Level 26!"
}
function manpage (){
	echo "Can you RTFM?"
	sleep 3
	echo "Welcome to Manpage! An OvertheWire wargame"
	sleep 1
	echo "Enter the password for Level 0..."
	ssh manpage0@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 0!"
	nextlevel
	echo "Enter the password for Level 1..."
	ssh manpage1@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh manpage2@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh manpage3@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh manpage4@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh manpage5@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh manpage6@manpage.labs.overthewire.org -p 2224
	echo "Congratulations on beating Level 6!"
}
function drifter (){
	echo "Welcome to Drifter! An OvertheWire wargame"
	sleep 1
	echo "Enter the password for Level 0..."
	ssh drifter0@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 0!"
	nextlevel
	echo "Enter the password for Level 1..."
	ssh drifter1@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh drifter2@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh drifter3@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh drifter4@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh drifter5@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh drifter6@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh drifter7@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 7!"
	nextlevel
	echo "Enter the password for Level 8..."
	ssh drifter8@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 8!"
	nextlevel
	echo "Enter the password for Level 9..."
	ssh drifter9@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 9!"
	nextlevel
	echo "Enter the password for Level 10..."
	ssh drifter10@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 10!"
	nextlevel
	echo "Enter the password for Level 11..."
	ssh drifter11@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 11!"
	nextlevel
	echo "Enter the password for Level 12..."
	ssh drifter12@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 12!"
	nextlevel
	echo "Enter the password for Level 13..."
	ssh drifter13@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 13!"
	nextlevel
	echo "Enter the password for Level 14..."
	ssh drifter14@drifter.labs.overthewire.org -p 2230
	echo "Congratulations on beating Level 14!"
}
function formulaone (){
	echo "Welcome to FormulaOne! An OverTheWire wargame"
	sleep 1
	echo "Enter the password for Level 0..."
	ssh formulaone0@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 0!"
	nextlevel
	echo "Enter the password for Level 1..."
	ssh formulaone1@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh formulaone2@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh formulaone3@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh formulaone4@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh formulaone5@formulaone.labs.overthewire.org -p 2232
	echo "Congratulations on beating Level 5!"
}
function OTW (){
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
function century (){
	echo "Welcome to Century! An UnderTheWire wargame"
	echo "Enter the password for Level 1..."
	ssh century1@century.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh century2@century.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh century3@century.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh century4@century.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh century5@century.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh century6@century.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh century7@century.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextlevel
	echo "Enter the password for Level 8..."
	ssh century8@century.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextlevel
	echo "Enter the password for Level 9..."
	ssh century9@century.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextlevel
	echo "Enter the password for Level 10..."
	ssh century10@century.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextlevel
	echo "Enter the password for Level 11..."
	ssh century11@century.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextlevel
	echo "Enter the password for Level 12..."
	ssh century12@century.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextlevel
	echo "Enter the password for Level 13..."
	ssh century13@century.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextlevel
	echo "Enter the password for Level 14..."
	ssh century14@century.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextlevel
	echo "Enter the password for Level 15..."
	ssh century15@century.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function cyborg (){
	echo "Welcome to Cyborg! An UnderTheWire wargame"
	echo "Enter the password for Level 1..."
	ssh cyborg1@cyborg.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh cyborg2@cyborg.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh cyborg3@cyborg.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh cyborg4@cyborg.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh cyborg5@cyborg.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh cyborg6@cyborg.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh cyborg7@cyborg.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextlevel
	echo "Enter the password for Level 8..."
	ssh cyborg8@cyborg.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextlevel
	echo "Enter the password for Level 9..."
	ssh cyborg9@cyborg.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextlevel
	echo "Enter the password for Level 10..."
	ssh cyborg10@cyborg.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextlevel
	echo "Enter the password for Level 11..."
	ssh cyborg11@cyborg.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextlevel
	echo "Enter the password for Level 12..."
	ssh cyborg12@cyborg.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextlevel
	echo "Enter the password for Level 13..."
	ssh cyborg13@cyborg.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextlevel
	echo "Enter the password for Level 14..."
	ssh cyborg14@cyborg.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextlevel
	echo "Enter the password for Level 15..."
	ssh cyborg15@cyborg.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function groot (){
	echo "I am Groot"
	ssh groot1@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot2@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot3@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot4@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot5@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot6@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot7@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot8@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot9@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot10@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot11@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot12@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot13@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot14@groot.underthewire.tech
	echo "I am Groot"
	nextlevel
	echo "I am Groot"
	ssh groot15@groot.underthewire.tech
	echo "I am Groot"
}
function oracle (){
	echo "Welcome to Oracle! An UnderTheWire wargame"
	echo "Enter the password for Level 1..."
	ssh oracle1@oracle.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh oracle2@oracle.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh oracle3@oracle.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh oracle4@oracle.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh oracle5@oracle.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh oracle6@oracle.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh oracle7@oracle.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextlevel
	echo "Enter the password for Level 8..."
	ssh oracle8@oracle.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextlevel
	echo "Enter the password for Level 9..."
	ssh oracle9@oracle.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextlevel
	echo "Enter the password for Level 10..."
	ssh oracle10@oracle.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextlevel
	echo "Enter the password for Level 11..."
	ssh oracle11@oracle.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextlevel
	echo "Enter the password for Level 12..."
	ssh oracle12@oracle.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextlevel
	echo "Enter the password for Level 13..."
	ssh oracle13@oracle.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextlevel
	echo "Enter the password for Level 14..."
	ssh oracle14@oracle.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextlevel
	echo "Enter the password for Level 15..."
	ssh oracle15@oracle.underthewire.tech
	echo "Congratulations on beating Level 15!"
}	
function trebek (){
	echo "This UnderTheWire wargame that is last alphabetically"
	echo "is also the name of a late famous game show host..."
	sleep 3
	echo "Answer: What is Trebek?"
	echo "Enter the password for Level 1..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 1!"
	nextlevel
	echo "Enter the password for Level 2..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 2!"
	nextlevel
	echo "Enter the password for Level 3..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 3!"
	nextlevel
	echo "Enter the password for Level 4..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 4!"
	nextlevel
	echo "Enter the password for Level 5..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 5!"
	nextlevel
	echo "Enter the password for Level 6..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 6!"
	nextlevel
	echo "Enter the password for Level 7..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 7!"
	nextlevel
	echo "Enter the password for Level 8..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 8!"
	nextlevel
	echo "Enter the password for Level 9..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 9!"
	nextlevel
	echo "Enter the password for Level 10..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 10!"
	nextlevel
	echo "Enter the password for Level 11..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 11!"
	nextlevel
	echo "Enter the password for Level 12..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 12!"
	nextlevel
	echo "Enter the password for Level 13..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 13!"
	nextlevel
	echo "Enter the password for Level 14..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 14!"
	nextlevel
	echo "Enter the password for Level 15..."
	ssh trebek1@trebek.underthewire.tech
	echo "Congratulations on beating Level 15!"
}
function UTW (){
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
function titlescreen (){
	while true; do
		echo "Return to the Title Screen?"
		shopt -s nocasematch
		read -r title
		case "$title" in
			Yes)
				while true; do
				echo "Are you sure you want to"
				echo "go to the Title Screen?"
				echo "Unsaved progress will be lost."
				shopt -s nocasematch
				read -r confirmtitle
				case "$confirmtitle" in
					Yes)
						AroundTheWire
						break
						;;
					No)
						break
						;;
					*)
						echo "Please enter Yes or No"
						;;
				esac
			done
			;;
			No)
				break
				;;
			*)
				echo "Please enter Yes or No."
				;;
		esac
	done
}
