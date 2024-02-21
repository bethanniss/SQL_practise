-- books i have read this year

CREATE TABLE books2024 (
    book_name VARCHAR(50) PRIMARY KEY,
    pages INT,
    genre VARCHAR(50),
    my_rating DECIMAL,
    rating DECIMAL,
    month VARCHAR(20)
);

--jan (3 books)
INSERT INTO books2024 (book_name, pages, genre, my_rating, rating, month)
VALUES ("Small_things_like_these", 128, "historical_fiction", 5, 4.19, "jan");
INSERT INTO books2024 (book_name, pages, genre, my_rating, rating, month)
VALUES ("Harry_Potter_y_la_camera_secreta", 286, "fantasy", 3, 4.43, "jan");
INSERT INTO books2024 (book_name, pages, genre, my_rating, rating, month)
VALUES ("The_7_husbands_of_Evelyn_Hugo", 389, "historical_fiction", 5, 4.43, "jan");

--feb (3 books)
INSERT INTO books2024 (book_name, pages, genre, my_rating, rating, month)
VALUES ("The_picture_of_Dorian_Gray", 254, "gothic fiction", 3, 4.12, "feb");
INSERT INTO books2024 (book_name, pages, genre, my_rating, rating, month)
VALUES ("A_haunting_in_the_arctic", 352, "gothic thriller", 4, 3.92, "feb");
INSERT INTO books2024 (book_name, pages, genre, my_rating, rating, month)
VALUES ("The_Book_theif", 592, "historical_fiction", 5, 4.39, "feb");

SELECT * FROM books2024;

SELECT book_name
FROM books2024
WHERE pages > 300 AND my_rating >= 4
    ORDER BY my_rating DESC;

SELECT AVG(pages) AS average_pages
FROM books2024;

SELECT book_name
FROM books2024
WHERE genre LIKE %gothic% ;

SELECT *
FROM books2024
WHERE my_rating > rating;





