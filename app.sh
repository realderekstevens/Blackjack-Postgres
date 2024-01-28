#!/bin/bash

PSQL="psql -X --username=postgres --dbname=blackjack --tuples-only -c"

echo -e "\n~~~~~ Blackjack Simulator ~~~~~\n"

MAIN_MENU() {
	if [[ $1 ]]
	then
		echo -e "\n$1"
	fi

	echo "What would you like to do?"
	echo -e "\n1. New Hand\n2. Discard All Cards\n3. Add New Deck\n4. Display Card Count\n5. Exit"
	read MAIN_MENU_SELECTION

	case $MAIN_MENU_SELECTION in
		1) NEW_HAND ;;
		2) DISCARD_ALL_CARDS ;;
		3) ADD_NEW_DECK ;;
		4) DISPLAY_CARD_COUNT ;;
		5) EXIT ;;
		*) MAIN_MENU "Please enter a valid option." ;;
	esac
}

NEW_HAND(){
echo -e "\nThank you for stopping in.\n"
}

DISCARD_ALL_CARDS(){
echo -e "\nDiscarding all cards.\n"
$($PSQL "DELETE FROM CARDS *;") 
}


ADD_NEW_DECK(){
echo -e "\nAdding new deck.\n"
$($PSQL "INSERT INTO cards(suit, face, value) VALUES('hearts', 'Ace', 1)") 
}

DISPLAY_CARD_COUNT(){
echo -e "\nThank you for stopping in.\n"
}

EXIT(){
echo -e "\nThank you for stopping in.\n"
}

MAIN_MENU