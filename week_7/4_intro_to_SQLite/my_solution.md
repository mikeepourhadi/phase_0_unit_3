# U3.W7: Intro to SQLite

## Release 0: Create a dummy database

Mikees-MacBook-Pro:Desktop User$ sqlite3 users.db
-- Loading resources from /Users/User/.sqliterc

SQLite version 3.7.13 2012-07-17 17:46:21
Enter ".help" for instructions
Enter SQL statements terminated with a ";"
sqlite> CREATE TABLE users (
   ...>   id INTEGER PRIMARY KEY AUTOINCREMENT,
   ...>   first_name VARCHAR(64) NOT NULL,
   ...>   last_name  VARCHAR(64) NOT NULL,
   ...>   email VARCHAR(128) UNIQUE NOT NULL,
   ...>   created_at DATETIME NOT NULL,
   ...>   updated_at DATETIME NOT NULL
   ...> );
sqlite> 

<!-- paste your terminal output here -->

## Release 1: Insert Data 


sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 01:45:54  2014-04-28 01:45:54
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Mikee', 'Pourhadi', 'mikeepourhadi@gmail.com', DATETIME('now'), DATETIME('now'));
sqlite> SELECT * FROM users;
id          first_name  last_name   email                  created_at           updated_at         
----------  ----------  ----------  ---------------------  -------------------  -------------------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 01:45:54  2014-04-28 01:45:54
2           Mikee       Pourhadi    mikeepourhadi@gmail.c  2014-04-28 01:47:58  2014-04-28 01:47:58
sqlite> 
<!-- paste your terminal output here -->

## Release 2: Multi-line commands
<!-- paste your terminal output here -->
sqlite> INSERT INTO users
   ...> (first_name, last_name, email, created_at, updated_at)
   ...> VALUES
   ...> ('Kimmey', 'Lin', 'kimmy@devbootcamp.com', DATETIME('now'), DATETIME('now'));
Error: column email is not unique
sqlite> 

## Release 3: Add a column
<!-- paste your terminal output here -->
sqlite> ALTER TABLE users ADD COLUMN nickname VARCHAR(64);
sqlite> .schema
CREATE TABLE users (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(64) NOT NULL,
  last_name  VARCHAR(64) NOT NULL,
  email VARCHAR(128) UNIQUE NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL
, nickname VARCHAR(64));
sqlite> select * from users;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 01:58:12  2014-04-28 01:58:12            
2           Mikee       Pourhadi    mikeepourhadi@gmail.c  2014-04-28 01:59:50  2014-04-28 01:59:50            
sqlite> UPDATE users SET nickname='Kimchee' WHERE id=1
   ...> ;
sqlite> select * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 01:58:12  2014-04-28 01:58:12  Kimchee   
2           Mikee       Pourhadi    mikeepourhadi@gmail.c  2014-04-28 01:59:50  2014-04-28 01:59:50            
sqlite> UPDATE users SET nickname='MeMrMikee' WHERE id=2
   ...> ;
sqlite> select * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname  
----------  ----------  ----------  ---------------------  -------------------  -------------------  ----------
1           Kimmey      Lin         kimmy@devbootcamp.com  2014-04-28 01:58:12  2014-04-28 01:58:12  Kimchee   
2           Mikee       Pourhadi    mikeepourhadi@gmail.c  2014-04-28 01:59:50  2014-04-28 01:59:50  MeMrMikee 
sqlite> 

## Release 4: Change a value
<!-- paste your terminal output here -->
sqlite> UPDATE users SET nickname='Ninja Coder', first_name='Kimmy Lin' WHERE id=1
   ...> ;
sqlite> select * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy Lin   Lin         kimmy@devbootcamp.com  2014-04-28 01:58:12  2014-04-28 01:58:12  Ninja Coder
2           Mikee       Pourhadi    mikeepourhadi@gmail.c  2014-04-28 01:59:50  2014-04-28 01:59:50  MeMrMikee  
sqlite> UPDATE users SET updated_at=DATETIME('now') WHERE id=1
   ...> ;
sqlite> select * from users
   ...> ;
id          first_name  last_name   email                  created_at           updated_at           nickname   
----------  ----------  ----------  ---------------------  -------------------  -------------------  -----------
1           Kimmy Lin   Lin         kimmy@devbootcamp.com  2014-04-28 01:58:12  2014-04-28 02:11:01  Ninja Coder
2           Mikee       Pourhadi    mikeepourhadi@gmail.c  2014-04-28 01:59:50  2014-04-28 01:59:50  MeMrMikee  
## Release 5: Reflect
<!-- Add your reflection here -->

I'm still getting used to SQL. I'll be honest (and you'll see this with my first few reflections): I sort of hated it. A lot. It seemed like an extremely powerful tool, but it was just so tedious to use. Now that I have an understanding of the basics, it is much more manageable. I like how powerful of a tool it is, and I really enjoy using it. And thank goodness for the bit of code that cleans up the output - I would go crazy without it. I'm glad that not all of the code was cut and paste, but I am glad that some of it was. When I read "oh now alter the table," without any assisting code - I freaked out. But I'm so happy that it wasn't there because it was so much more gratifying to find it out for myself. Lesson learned

I feel confident in the learning objectives for this lesson, and it felt pretty good to get the correct output.




