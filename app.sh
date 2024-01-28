#!/bin/bash

PSQL="psql -X --username=postgres --dbname=blackjack --tuples-only -c"

echo -e "\n~~~~~ Blackjack Simulator ~~~~~\n"

MAIN_MENU() {
	if [[ $1 ]]
	then
		echo -e "\n$1"
	fi

	echo "What would you like to do?"
	echo -e "\n1. New Hand\n2. Shuffle Deck\n3. Display Card Count\n4. Exit"
	read MAIN_MENU_SELECTION

	case $MAIN_MENU_SELECTION in
		1) NEW_HAND ;;
		2) SHUFFLE ;;
		3) DISPLAY_CARD_COUNT ;;
		4) EXIT ;;
		*) MAIN_MENU "Please enter a valid option." ;;
	esac
}



NEW_HAND_MENU(){
echo -e "\nThank you for stopping in.\n"
}

SHUFFLE(){
echo -e "\nThank you for stopping in.\n"
}

DISPLAY_CARD_COUNT(){
echo -e "\nThank you for stopping in.\n"
}

EXIT(){
echo -e "\nThank you for stopping in.\n"
}

MAIN_MENU