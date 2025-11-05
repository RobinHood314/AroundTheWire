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
vortex
echo "Congratulations..."
sleep 2
$"$user"
sleep 1
echo "You have beaten the Vortex Wargame..."
echo "You can now choose another game or quit"
echo "--Press Enter to continue--"
read -r enter
case "$enter" in
	*)
		echo "Continuing..."
		;;
esac
