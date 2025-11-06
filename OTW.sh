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
function OTWCheck (){
	if test -e ./.OTWSave; then
		echo "Loading OverTheWire save data..."
	else
		echo "Creating OverTheWire save data..."
		mkdir ./.OTWSave
	fi
}
function wechall (){
	while true; do
		echo "Would you like to register for WeChall?"
		echo "--Yes--"
		echo "--No--"
		echo "--More--"
		read -r reg
		shopt -s nocasematch
		case "$reg" in
			Yes)
				echo "First, go to the WeChall site,"
				echo "and create an account..."
				echo "--Press any key to continue--"
				read -r anykey
				case "$anykey" in
					*)
						echo "Next step..."
						;;
				esac
				echo "Now, log in and retrieve your WeChall"
				echo "username and your WeChall token..."
				echo "Enter your WeChall Username..."
				read -r weuser
				echo "export WECHALLUSER=""$weuser""" > ~/.bashrc
				echo "Enter your WeChall token..."
				echo "It can be found on the WeChall site under 'Account' > 'WarBoxes'"
				echo "The tokens look something like this:"
				echo "EDD76-1FC9F-7388B-DC6EB-E3F71-FC4C8"
				read -r wetoken
				echo "export WECHALLTOKEN=""$wetoken""" > ~/.bashrc
				echo "Checking for ~/.ssh/config file..."
				if test -e ~/.ssh/config; then
					echo "File found."
				else
					echo "File not detected, creating file..."
					touch ~/.ssh/config
				fi
				echo "Adding ssh information for OverTheWire..."
				echo "Host *.labs.overthewire.org" >> ~/.ssh/config
				echo "SendEnv WECHALLTOKEN" >> ~/.ssh/config
				echo "SendEnv WECHALLUSER" >> ~/.ssh/config
				sleep 1
				echo "Perfect! You're now ready to use WeChall"
				echo "All you need to do is log into any OverTheWire server,"
				echo "and invoke the 'wechall' command, this command uses your"
				echo "WeChall user and token to register the levels you beat with WeChall."
				break
				;;
			No)
				break
				;;
			More)
				echo "OverTheWire uses a scoreboard provided by WeChall,"
				echo "which allows players to track their progress through the wargames,"
				echo "and to facilitate friendly competeion between players..."
				;;
			*)
				echo "Please enter Yes or No."
				;;
		esac
	done
}
function wechallchk (){
	while true; do
		echo "Do you have an existing account with WeChall?"
		read -r weexist
		shopt -s nocasematch
		case "$weexist" in
			Yes)
				echo "Enter your WeChall Username..."
				read -r weuser
				export WECHALLUSER="$weuser"
				echo "Enter your WeChall token..."
				echo "It can be found on the WeChall site under 'Account' > 'WarBoxes'"
				echo "The tokens look something like this:"
				echo "EDD76-1FC9F-7388B-DC6EB-E3F71-FC4C8"
				read -r wetoken
				export WECHALLTOKEN="$wetoken"
				echo "Welcome back..."
				$"$weuser"
				break
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
				./bandit.sh
				;;
			2|Krypton)
				./krypton.sh
				;;
			3|Leviathan)
				./leviathan.sh
				;;
			4|Narnia)
				./narnia.sh
				;;
			5|Behemoth)
				./behemoth.sh
				;;
			6|Utumno)
				./utumno.sh
				;;
			7|Maze)
				./maze.sh
				;;
			8|Vortex)
				./vortex.sh
				;;
			9|Manpage)
				./manpage.sh
				;;
			10|Drifter)
				./drifter.sh
				;;
			11|FormulaOne)
				./formulaone.sh
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
OTW
