USE codeup_test_db;

#
# The name of all albums by Pink Floyd.
SELECT name FROM albums WHERE artist = 'Pink Floyd';
# returned the two albums by Pink FLoyd

# The year Sgt. Pepper's Lonely Hearts Club Band was released
SELECT release_date FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
# returned 1967

# The genre for Nevermind
SELECT genre FROM albums WHERE name = 'Nevermind';
# returned alternative rock

# Which albums were released in the 1990s
SELECT name FROM albums WHERE release_date = 1990;
#returned only the immaculate collection

# Which albums had less than 20 million certified sales
SELECT name FROM albums WHERE sales > 20;
# returned 20 album names that where all less than 20 mill

# All the albums with a genre of "Rock". Why do these query results not include albums with a genre of "Hard rock" or "Progressive rock"?
SELECT name FROM albums WHERE genre = 'Rock';
# only returned 4 albums with only rock genre, progressive rock and hard rock is a whole genre