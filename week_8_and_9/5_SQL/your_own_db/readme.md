[Week 8 and 9 Home](./)



CREATE TABLE products (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    item_name VARCHAR(64) NOT NULL,
    barcode_num INTEGER NOT NULL,
    price INTEGER NOT NULL,
    weight INTEGER NOT NULL,
    ingredients_id INTEGER NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL, 
    FOREIGN KEY (ingredients_id) REFERENCES ingredients(id)
    );

CREATE TABLE ingredients (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  calories INTEGER NOT NULL,
  carbohydrates INTEGER NOT NULL,
  sodium INTEGER NOT NULL,
  vit_id INTEGER NOT NULL,
  protein INTEGER NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  FOREIGN KEY (vit_id) REFERENCES vitamins(id)
  )

  CREATE TABLE vitamins (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  vit_a INTEGER NOT NULL,
  vit_b INTEGER NOT NULL,
  vit_c INTEGER NOT NULL,
  vit_d INTEGER NOT NULL,
  vit_k INTEGER NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
  );

  	INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
	VALUES
('Ham', '123456079', '12', '10', '135', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Frosted Flakes', '123412379', '5', '8', '175', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Coca Cola', '245450009', '25', '35', '002', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Peanut Butter', '353446002', '45', '3000', '001', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Cookies', '111230079', '5', '8', '003', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Brownies', '136250000', '10', '4', '005', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Beer', '123288800', '45', '22', '006', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Gin', '100006079', '60', '17', '007', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Whiskey', '100032079', '55', '9', '008', DATETIME('now'), DATETIME('now'));

  INSERT INTO products
(item_name, barcode_num, price, weight, ingredients_id, created_at, updated_at)
VALUES
('Fake Meat', '124776079', '40', '5', '009', DATETIME('now'), DATETIME('now'));


#U3.W8-9: Create your Own Database

## Learning Competencies
- Adhere to established naming conventions for DB tables and columns
- Create a graphical representation of a simple database
- Identify database relationships including one to many, many to many, and one to one
- Write simple SELECT statements to extract data from one or more fields on a single table using the SELECT, FROM, WHERE, LIMIT, and ORDER BY keywords

## Summary:
I'm sure you have something you would like to itemize into a database. In this challenge, you will want to explore designing, implementing, and searching a database you create. 

## Release 0: Decide what you want to track
Come up with something that needs at least 2 tables. 

## Release 1: Design the Schema
Using [SQL Designer](https://socrates.devbootcamp.com/sql), create a schema for your database. 

## Release 2: Add the schemas
Follow the instructions from [4_intro_to_SQLite](../../../week_7/4_intro_to_SQLite) to set up your database.

## Release 3: Join your tables
Research connecting your tables to one another. 

## Release 4: Enter Data
Enter some data for one of the tables. Make at least 10 entries.

## Release 5: [Reflect](../../../references/reflection.md) 
Put your reflection in the [my_reflection](my_reflection.md) file.

## Release 6: [Review](../../../references/review.md)


## Resources
[Joining Tables](http://zetcode.com/db/sqlite/joins/)