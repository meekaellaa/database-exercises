USE codeup_test_db;
    TRUNCATE albums;

--     INSERT INTO albums (artist, name, release_date, sales, genre);
--     VALUES  ('Michael Jackson', 'Thriller', 1982, 47.3,'Pop, Rock, R&B' );
    INSERT INTO albums (artist, name, release_date, sales, genre)
    VALUES  ('AC/DC', 'Back in Black', 1980, 26.1,'Hard Rock'),
            ('Pink Floyd', 'The Dark Side of the Moon', 1973, 24.3, 'Progressive Rock'),
            ('Meat Loaf', 'Bat Out of Hell', 1977, 21.5, 'Hard Rock, Progressive Rock'),
            ('Whitney Houston / Various Artists', 'The Bodyguard', 1992, 28.4, 'R&B, Soul, Pop, Soundtrack'),
            ('The Eagle', 'Their Greatest Hits (1971-1975)', 1976, 32.2, 'Rock, Soft Rock, Folk Rock'),
            ('Bee Gees / Various Artists', 'Saturday Night Fever', 1977, 21.6, 'Disco'),
            ('Fleetwood Mac', 'Rumors', 1977, 27.9, 'Soft Rock'),
            ('Various Artists', 'Grease: The Original Soundtrack from the Motion Picture', 1978, 14.4, 'Soundtrack'),
            ('Led Zeppelin', 'Led Zeppelin IV', 1971, 29, 'Hard Rock, Heavy Metal, Folk'),
            ('Michael Jackson', 'Bad', 1987, 19.3, 'Pop, Funk, Rock'),
            ('Alanis Morissette', 'Jagged Little Pill', 1995, 24.4, 'Alternative Rock'),
            ('Shania Twain', 'Come On Over', 1997, 29.6, 'Country, Pop'),
            ('Celine Dion', 'Falling into You', 1996, 20.2, 'Pop, Soft Rock'),
            ('The Beatles', 'Sgt. Pepper''s Lonely Hearts Club Band', 1967, 13.1, 'Rock'),
            ('The Eagles', 'Hotel California', 1976, 21.5, 'Rock, Soft Rock, Folk Rock'),
            ('Various Artists', 'Dirty Dancing', 1987, 17.9, 'Pop, Rock, R&B'),
            ('Adele', 21, 2011, 25.3,'Pop, Soul'),
            ('Celine Dion', 'Let''s Talk About Love', 1997, 19.3, 'Pop, Soft Rock'),
            ('The Beatles', 1, 2000, 22.6, 'Rock'),
            ('Michael Jackson', 'Dangerous', 1991, 16.3, 'Rock, Funk, Pop'),
            ('Madonna', 'The Immaculate Collection', 1990, 19.4,'Pop, Dance'),
            ('The Beatles', 'Abbey Road', 1969, 14.4, 'Rock'),
            ('Bruce Springsteen', 'Born in the U.S.A.', 1984, 19.6, 'Rock'),
            ('Dire Straits', 'Brothers in Arms', 1985, 17.7, 'Rock, Pop'),
            ('James Horner', 'Titanic: Music from the Motion Picture', 1997, 18.1, 'Soundtrack' ),
            ('Metallica', 'Metallica', 1991, 21.2, 'Thrash Metal, Heavy Metal'),
            ('Nirvana', 'Nevermind', 1991, 16.7, 'Grunge, Alternative Rock'),
            ('Pink Floyd ', 'The Wall', 1979, 17.6, 'Progressive Rock'),
            ('Santana', 'Supernatural', 1999, 20.5, 'Rock'),
            ('Guns N'' Roses', 'Appetite for Destruction', 1987, 21.6, 'Hard Rock');

