USE codeup_test_db;


# Write SELECT statements for:
# Albums released after 1991
SELECT name AS "after 1991" FROM albums WHERE release_date > 1991;
DELETE name FROM albums WHERE release_date < 1991;
# Albums with the genre 'disco'
SELECT name AS "all disco" FROM albums WHERE genre = 'Disco';
DELETE name FROM albums WHERE genre = 'Disco';
# Albums by 'Whitney Houston' (...or maybe an artist of your choice)
SELECT name AS "ALBUMS BY WH" FROM albums WHERE artist = 'Whitney Houston';
DELETE name FROM albums WHERE artist = 'Whitney Houston';