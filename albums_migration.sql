USE codeup_test_db;


DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist VARCHAR(50) DEFAULT 'NONE',
        name  VARCHAR(100) NOT NULL DEFAULT 'ARTIST NAME',
        release_date  INT,
        sales  FLOAT,
        genre  VARCHAR(100) NOT NULL,
        PRIMARY KEY (id)
         )


        /* insert into quotes (author_first_name, author_last_name, content)
           values ('irvin','buendia','we would have a quote here.'),


           SELECT column1, coulumn2 FROM table_names;

           the astricks * means ALL
         */
