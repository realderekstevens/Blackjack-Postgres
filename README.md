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
ALTER TABLE cards ADD FOREIGN KEY(location_id) REFERENCES locations(location_id);
ALTER TABLE cards ADD FOREIGN KEY(value_id) REFERENCES values(value_id);

CREATE TABLE locations();
ALTER TABLE locations ADD COLUMN location_id SERIAL PRIMARY KEY;
ALTER TABLE locations ADD FOREIGN KEY(value_id) REFERENCES values(value_id);

CREATE TABLE values();
ALTER TABLE values ADD COLUMN value_id SERIAL PRIMARY KEY;
ALTER TABLE values ADD COLUMN value integer;
ALTER TABLE values ADD COLUMN name VARCHAR(20);