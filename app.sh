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
echo -e "\nAdding new deck.\n"
$PSQL "INSERT INTO cards(suit, face, value, card_count, card_count_complex) VALUES('Hearts', 'Ace', 1, -1, -60), ('Hearts', 'Two', 2, 1, 37), ('Hearts', 'Three', 3, 1, 45), ('Hearts', 'Four', 4, 1, 52), ('Hearts', 'Five', 5, 1, 70), ('Hearts', 'Six', 6, 1, 46), ('Hearts', 'Seven', 7, 0, 27), ('Hearts', 'Eight', 8, 0, 0), ('Hearts', 'Nine', 9, 0, -17), ('Hearts', 'Ten', 10, -1, -50), ('Hearts', 'Jack', 10, -1, -50), ('Hearts', 'Queen', 10, -1, -50), ('Hearts', 'King', 10, -1, -50), ('Diamonds', 'Ace', 1, -1, -60), ('Diamonds', 'Two', 2, 1, 37), ('Diamonds', 'Three', 3, 1, 45), ('Diamonds', 'Four', 4, 1, 52), ('Diamonds', 'Five', 5, 1, 70), ('Diamonds', 'Six', 6, 1, 46), ('Diamonds', 'Seven', 7, 0, 27), ('Diamonds', 'Eight', 8, 0, 0), ('Diamonds', 'Nine', 9, 0, -17), ('Diamonds', 'Ten', 10, -1, -50), ('Diamonds', 'Jack', 10, -1, -50), ('Diamonds', 'Queen', 10, -1, -50), ('Diamonds', 'King', 10, -1, -50), ('Spades', 'Ace', 1, -1, -60), ('Spades', 'Two', 2, 1, 37), ('Spades', 'Three', 3, 1, 45), ('Spades', 'Four', 4, 1, 52), ('Spades', 'Five', 5, 1, 70), ('Spades', 'Six', 6, 1, 46), ('Spades', 'Seven', 7, 0, 27), ('Spades', 'Eight', 8, 0, 0), ('Spades', 'Nine', 9, 0, -17), ('Spades', 'Ten', 10, -1, -50), ('Spades', 'Jack', 10, -1, -50), ('Spades', 'Queen', 10, -1, -50), ('Spades', 'King', 10, -1, -50), ('Clubs', 'Ace', 1, -1, -60), ('Clubs', 'Two', 2, 1, 37), ('Clubs', 'Three', 3, 1, 45), ('Clubs', 'Four', 4, 1, 52), ('Clubs', 'Five', 5, 1, 70), ('Clubs', 'Six', 6, 1, 46), ('Clubs', 'Seven', 7, 0, 27), ('Clubs', 'Eight', 8, 0, 0), ('Clubs', 'Nine', 9, 0, -17), ('Clubs', 'Ten', 10, -1, -50), ('Clubs', 'Jack', 10, -1, -50), ('Clubs', 'Queen', 10, -1, -50), ('Clubs', 'King', 10, -1, -50);"
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