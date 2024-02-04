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
MAIN_MENU
}

DISCARD_ALL_CARDS(){
echo -e "\nDiscarding all cards.\n"
$PSQL "TRUNCATE TABLE cards;"
MAIN_MENU
}


ADD_NEW_DECK(){
$PSQL "INSERT INTO cards(face_id, suit_id, location_id) VALUES(1, 1, 1), (2, 1, 1), (3, 1, 1), (4, 1, 1), (5, 1, 1), (6, 1, 1), (7, 1, 1), (8, 1, 1), (9, 1, 1), (10, 1, 1), (11, 1, 1), (12, 1, 1), (13, 1, 1), (1, 2, 1), (2, 2, 1), (3, 2, 1), (4, 2, 1), (5, 2, 1), (6, 2, 1), (7, 2, 1), (8, 2, 1), (9, 2, 1), (10, 2, 1), (11, 2, 1), (12, 2, 1), (13, 2, 1), (1, 3, 1), (2, 3, 1), (3, 3, 1), (4, 3, 1), (5, 3, 1), (6, 3, 1), (7, 3, 1), (8, 3, 1), (9, 3, 1), (10, 3, 1), (11, 3, 1), (12, 3, 1), (13, 3, 1), (1, 4, 1), (2, 4, 1), (3, 4, 1), (4, 4, 1), (5, 4, 1), (6, 4, 1), (7, 4, 1), (8, 4, 1), (9, 4, 1), (10, 4, 1), (11, 4, 1), (12, 4, 1), (13, 4, 1)";
echo -e "\nAdded new deck.\n"
MAIN_MENU
}

DISPLAY_CARD_COUNT(){
$PSQL "SELECT SUM(card_count) FROM cards;"
$PSQL "SELECT SUM(card_count_complex) FROM cards;"

echo -e "\nThank you for stopping in.\n"
MAIN_MENU
}

EXIT(){
echo -e "\nThank you for stopping in.\n"
}

MAIN_MENU