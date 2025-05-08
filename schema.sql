DROP DATABASE IF EXISTS librarydb;
CREATE DATABASE librarydb;
USE librarydb;

CREATE TABLE author(
    author_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    author VARCHAR(40),
    CONSTRAINT author_pk PRIMARY KEY (author_id)
);

CREATE TABLE publisher(
    pub_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    publisher VARCHAR(40),
    CONSTRAINT pub_pk PRIMARY KEY (pub_id)
);

CREATE TABLE genre(
    genre_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    genre VARCHAR(40),
    CONSTRAINT genre_pk PRIMARY KEY (genre_id)
);

CREATE TABLE format(
    format_id INT AUTO_INCREMENT NOT NULL,
    format VARCHAR(40),
    CONSTRAINT format_pk PRIMARY KEY (format_id)
);

CREATE TABLE book(
    book_id INT UNSIGNED AUTO_INCREMENT NOT NULL,
    title VARCHAR(40),
    author_id INT UNSIGNED NOT NULL,
    pub_id INT UNSIGNED NOT NULL,
    copyright_year DATE NOT NULL,
    edition VARCHAR(40),
    edition_year DATE NOT NULL,
    binding ENUM('hardback', 'paperback'),
    rating INT,
    language VARCHAR(40),
    num_pages TINYINT UNSIGNED NOT NULL,
    cover_image VARCHAR(300),
    CONSTRAINT pk_book PRIMARY KEY (book_id),
    CONSTRAINT fk_author FOREIGN KEY (author_id) REFERENCES author(author_id),
    CONSTRAINT fk_pub FOREIGN KEY (pub_id) REFERENCES publisher(pub_id)
);

CREATE TABLE book_to_genre (
    book_id INT UNSIGNED NOT NULL,
    genre_id INT UNSIGNED NOT NULL,
    CONSTRAINT fk_book FOREIGN KEY (book_id) REFERENCES book(book_id),
    CONSTRAINT fk_genre FOREIGN KEY (genre_id) REFERENCES genre(genre_id)
);



-- Starting here i had to do all this to make the DATE into a YEAR while it already had data in it
ALTER TABLE book
    ADD qty INT UNSIGNED NOT NULL;

ALTER TABLE book
    MODIFY num_pages SMALLINT UNSIGNED NOT NULL;

ALTER TABLE book
    MODIFY rating VARCHAR(3);

ALTER TABLE book
    MODIFY copyright_year DATE;

ALTER TABLE book
    MODIFY edition_year DATE;

UPDATE book
SET edition_year = NULL
WHERE book_id = 1;

UPDATE book
SET copyright_year = NULL
WHERE book_id = 1;

ALTER TABLE book
    MODIFY edition_year YEAR;

ALTER TABLE book
    MODIFY copyright_year YEAR;

UPDATE book
SET edition_year = '2015'
WHERE book_id = 1;

UPDATE book
SET copyright_year = '2015'
WHERE book_id = 1;

ALTER TABLE book
    MODIFY edition_year YEAR NOT NULL;

ALTER TABLE book
    MODIFY copyright_year YEAR NOT NULL;

ALTER TABLE book
    MODIFY num_pages SMALLINT UNSIGNED;

ALTER TABLE book
    MODIFY qty INT UNSIGNED;