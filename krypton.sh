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
krypton
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Krypton Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
