# sql_black_jack
 
chmod +x bike-shop.sh

psql -U postgres
CREATE DATABASE blackjack;
\c blackjack
CREATE TABLE cards;
ALTER TABLE cards ADD COLUMN card_id SERIAL PRIMARY KEY;
ALTER TABLE cards ADD COLUMN suit varchar(10);
ALTER TABLE cards ADD COLUMN face varchar(10);
ALTER TABLE cards ADD COLUMN value integer;
ALTER TABLE cards ADD COLUMN card_count integer;
ALTER TABLE cards ADD COLUMN card_count_complex integer;



   
CREATE TABLE suits(suit_id int, suit_name varchar(255));

CREATE TABLE faces(face_id int, face_value int, face_name varchar(255));

CREATE TABLE locations(location_id int, location_name varchar(255));
	
CREATE TABLE cards(card_id int, face_id int, location_id int, suit_id int, PRIMARY KEY(card_id), FOREIGN KEY (suit_id) REFERENCES suits (suit_id);

CREATE TABLE cards(card_id int, face_id int, PRIMARY KEY(card_id), FOREIGN KEY (face_id) REFERENCES suits (face_id));



CREATE TABLE faces(
   face_id SMALLINT GENERATED ALWAYS AS IDENTITY,
   face_name VARCHAR(255) NOT NULL,
   face_value SMALLINT NOT NULL,
   PRIMARY KEY(face_id));
   
INSERT INTO faces(face_name, face_value) 
VALUES('Ace', 1), 
('Two', 2),
('Three', 3),
('Four', 4),
('Five', 5),
('Six', 6),
('Seven', 7),
('Eight', 8),
('Nine', 9),
('Ten', 10),
('Jack', 10),
('Queen', 10),
('King', 10);

#CREATE TABLE card_counts(
#  card_count_id SMALLINT GENERATED ALWAYS AS IDENTITY,
#   card_count_value_simple SMALLINT NOT NULL,
#   card_count_value_complex SMALLINT NOT NULL,
#   PRIMARY KEY(card_count_id),
#   CONSTRAINT fk_face
#      FOREIGN KEY(face_id)
#	  REFERENCES 

CREATE TABLE locations(
   location_id SMALLINT GENERATED ALWAYS AS IDENTITY,
   location_name VARCHAR(255) NOT NULL,
   PRIMARY KEY(location_id));
   
INSERT INTO locations(location_name) 
VALUES('Deck'), ('Player'), ('Dealer_Hidden'), ('Dealer'), ('Discard_Pile');


#INSERT INTO locations(name) VALUES('Deck');
#INSERT INTO locations(name) VALUES('Player');
#INSERT INTO locations(name) VALUES('Dealer_Hidden');
#INSERT INTO locations(name) VALUES('Dealer');
#INSERT INTO locations(name) VALUES('Discard_Pile');

CREATE TABLE suits(
   suit_id SMALLINT GENERATED ALWAYS AS IDENTITY,
   suit_name VARCHAR(255) NOT NULL,
   PRIMARY KEY(suit_id));

INSERT INTO suits(suit_name) 
VALUES('Clubs'), ('Diamonds'), ('Hearts'), ('Spades');

#INSERT INTO suits(suit_name) VALUES ('Clubs');
#INSERT INTO suits(suit_name) VALUES ('Diamonds');
#INSERT INTO suits(suit_name) VALUES ('Hearts');
#INSERT INTO suits(suit_name) VALUES ('Spades');

CREATE TABLE cards(
   card_id INT GENERATED ALWAYS AS IDENTITY,
   face_id SMALLINT,
   suit_id SMALLINT,
   location_id SMALLINT,
   PRIMARY KEY(card_id),
   CONSTRAINT fk_face
      FOREIGN KEY(face_id) 
	  REFERENCES faces(face_id)
	  ON DELETE CASCADE,
   CONSTRAINT fk_suit
      FOREIGN KEY(suit_id)
	  REFERENCES suits(suit_id)
	  ON DELETE CASCADE,
   CONSTRAINT fk_location
      FOREIGN KEY(location_id)
	  REFERENCES locations(location_id)
	  ON DELETE CASCADE);

ADD_NEW_DECK(){
echo -e "\nAdding new deck.\n"
$PSQL "INSERT INTO cards(face_id, suit_id, location_id) VALUES(1, 1, 1), (2, 1, 1), (3, 1, 1), (4, 1, 1), (5, 1, 1), (6, 1, 1), (7, 1, 1), (8, 1, 1), (9, 1, 1), (10, 1, 1), (11, 1, 1), (12, 1, 1), (13, 1, 1);"
MAIN_MENU
}

SELECT face_name FROM cards INNER JOIN faces ON cards.face_id = faces.face_id;

SELECT A.*
FROM actors A
INNER JOIN castings C ON C.actorid = A.id
INNER JOIN movies M ON M.id = C.movieid
WHERE M.title = $title

----

ALTER TABLE cards ADD FOREIGN KEY(suit_id) REFERENCES suits(suit_id);
ALTER TABLE cards ADD FOREIGN KEY(location_id) REFERENCES locations(location_id);
ALTER TABLE cards ADD FOREIGN KEY(value_id) REFERENCES values(value_id);

CREATE TABLE locations();
ALTER TABLE locations ADD COLUMN location_id SERIAL PRIMARY KEY;
ALTER TABLE locations ADD COLUMN name varchar(20);
ALTER TABLE locations ADD COLUMN v\dalue integer;

CREATE TABLE values();
ALTER TABLE values ADD COLUMN value_id SERIAL PRIMARY KEY;
ALTER TABLE values ADD COLUMN value integer;
ALTER TABLE values ADD COLUMN name VARCHAR(20);

INSERT INTO locations(name, value) VALUES('Deck', 0);
INSERT INTO locations(name, value) VALUES('Discard_Pile', 0);
INSERT INTO locations(name, value) VALUES('Dealer', 0);
INSERT INTO locations(name, value) VALUES('Dealer_Hidden', 0);
INSERT INTO locations(name, value) VALUES('Player', 0);

CREATE TABLE suits();
ALTER TABLE suits ADD COLUMN suit_id SERIAL PRIMARY KEY;
ALTER TABLE suits ADD COLUMN name VARCHAR(10);
