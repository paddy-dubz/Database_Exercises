USE codeup_test_db;

# Select albums by Pink Floyd
SELECT name FROM albums WHERE artist='Pink Floyd';

# Select release date for SPLHCB
SELECT release_date FROM albums WHERE name='Sgt. Peppers Lonely Hearts Club Band';

# Select genre for Nevermind
SELECT genre FROM albums WHERE name='Nevermind';

# Select albums released in 1990
SELECT name FROM albums WHERE release_date=1990;

# Select albums with sales less than 20 million
SELECT name FROM albums WHERE sales < 20;

# Select albums with rock as their only genre
SELECT name FROM albums WHERE genre='Rock';

# Select albums with rock as one of multiple genres
SELECT name FROM albums WHERE genre LIKE '%Rock';