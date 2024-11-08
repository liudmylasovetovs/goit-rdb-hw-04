CREATE SCHEMA LibraryManagement;
CREATE TABLE authors (
author_id INT AUTO_INCREMENT PRIMARY KEY,
author_name VARCHAR(255)
);
CREATE TABLE genres (
genre_id INT AUTO_INCREMENT PRIMARY KEY,
genre_name VARCHAR(255)
);
CREATE TABLE books (
book_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
publication_year YEAR,
author_id INT,
FOREIGN KEY (author_id) REFERENCES authors (author_id),
genre_id INT,
FOREIGN KEY (genre_id) REFERENCES genres (genre_id)
);
CREATE TABLE users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
user_name VARCHAR(255),
email VARCHAR(255)
);
CREATE TABLE borrowed_books (
borrow_id INT AUTO_INCREMENT PRIMARY KEY,
book_id INT,
FOREIGN KEY (book_id) REFERENCES books (book_id),
user_id INT,
FOREIGN KEY (user_id) REFERENCES users (user_id),
borrow_date DATE,
return_date DATE
);

INSERT INTO authors (author_id, author_name)
VALUES (1, 'Isaak Asimov');

INSERT INTO genres (genre_id, genre_name)
VALUES (1, 'SiFi');

INSERT INTO books (book_id, title, publication_year, author_id, genre_id)
VALUES (1, 'Foundation', 1951, 1, 1);

INSERT INTO users (user_id, user_name, email)
VALUES (1, 'Liudmyla', 'liudmyla@gmail.com');

INSERT INTO borrowed_books (borrow_id, book_id, user_id, borrow_date, return_date)
VALUES (1, 1, 1, '2024-11-07', '2024-11-20');