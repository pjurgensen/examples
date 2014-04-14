#SQL Basics

##Common SQL Commands:
* CREATE DATABASE database_name;
* CREATE TABLE table_name (id serial PRIMARY KEY, some_column varchar, another_column int, yet_another_column timestamp);
* ALTER TABLE table_name ADD column_name boolean;
* ALTER TABLE table_name DROP column_name;
* INSERT INTO contacts (name, age, bday) VALUES ('Wes', 43, '1969-05-1') RETURNING ID;
* SELECT * FROM table_name WHERE age >= 18;
* UPDATE contacts SET name = 'Wes Anderson' WHERE id = 1;
* DELETE FROM contacts WHERE id = 1;
* DROP TABLE table_name;
* DROP DATABASE database_name;

##Common psql Commands:
* List all databases: \l
* Connect to database: \c database_name
* List tables in current database: \dt
* List columns in a table: \d table_name

##Common Data Types:
* int
* varchar
* timestamp
* float
* text
* boolean

##Operators for WHERE Clause:
* = != < <= > >=
* BETWEEN - allows range checking (inclusive)
* LIKE - permits pattern matching
* % - wildcard; any character (ex: LIKE 'G%' => returns any word that begins with 'G')
* IN - ability to check if an item is in a list (ex: WHERE id IN(4, 6))
* AND - ensures 2+ conditions hold true
* DISTINCT - no repeats
* COUNT - how many; returns a number (ex: SELECT COUNT (column_name))
* ALL - allows >= or > or < or <= to act over a list