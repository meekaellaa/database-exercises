USE codeup_test_db;

SELECT name From albums;
UPDATE albums SET sales = sales * 10;
UPDATE name, sales FROM albums;
SELECT name FROM  albums WHERE release_data < 1980;
UPDATE albums SET realease_date = release_date - 100 WHERE release_date < 1980;
SELECT name FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson' WHERE  artist = 'Michael Jackson';
SELECT name FROM albums WHERE artist = 'Peter Jackson';
