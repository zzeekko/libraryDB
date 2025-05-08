INSERT INTO format(format)
VALUES ('Physical');

INSERT INTO format(format)
VALUES ('E-Book');

INSERT INTO format(format)
VALUES ('Audiobook');

INSERT INTO author(author)
VALUES ('Erin Hunter');

INSERT INTO publisher(publisher)
VALUES ('HarperCollins');

INSERT INTO book(
    title,
    author_id,
    pub_id,
    copyright_year,
    edition,
    edition_year,
    binding,
    rating,
    language,
    qty,
    num_pages,
    cover_image
)
VALUES (
    'Warriors: Into the Wild',
    1,
    1,
    '2015-03-17',
    'Revised',
    '2015-03-17',
    'paperback',
    '4.7',
    'English',
    10,
    320,
    'https://m.media-amazon.com/images/I/71gNzw663DL._SL1500_.jpg'
);

INSERT INTO author(
    author
)
VALUES
('George Orwell');

INSERT INTO publisher(
    publisher
)
VALUES
('Berkley');

INSERT INTO book(
    title,
    author_id,
    pub_id,
    copyright_year,
    edition,
    edition_year,
    binding,
    rating,
    language,
    qty,
    num_pages,
    cover_image
)
VALUES (
    '1984',
    2,
    2,
    '2003',
    'Reprint',
    '2003',
    'hardback',
    '4.8',
    'English',
    5,
    384,
    'https://m.media-amazon.com/images/I/91VsLImyJgL._SL1500_.jpg'
);

INSERT INTO author(
    author
)
VALUES
('R.J. Palacio');

INSERT INTO publisher(
    publisher
)
VALUES
('Knopf Books for Young Readers');

INSERT INTO book(
    title,
    author_id,
    pub_id,
    copyright_year,
    edition,
    edition_year,
    binding,
    rating,
    language,
    qty,
    num_pages,
    cover_image
)
VALUES (
    'Wonder',
    3,
    3,
    '2012',
    '1st',
    '2012',
    'Paperback',
    '4.8',
    'English',
    8,
    320,
    'https://m.media-amazon.com/images/I/71Q1KDTHXLL._SL1500_.jpg'
);

-- from here, the auto increment book_id skipped from 1 to 3, and the authors, publishers and format were submitted twice each

DELETE FROM book;
DELETE FROM author WHERE author_id > 3;
DELETE FROM publisher WHERE pub_id > 3;

ALTER TABLE book AUTO_INCREMENT = 1;
ALTER TABLE author AUTO_INCREMENT = 4;
ALTER TABLE publisher AUTO_INCREMENT = 4;

INSERT INTO author(author)
VALUES('Suzanne Collins');

INSERT INTO publisher(publisher)
VALUES('Scholastic Press');

INSERT INTO author(author)
VALUES
('Tatsuki Fujimoto'),
('Ji-Hun Jeong'),
('singNsong'),
('NISIOISIN'),
('Sarah J. Maas'),
('Kelly McGonigal');

INSERT INTO publisher(publisher)
VALUES
('Blackstone Publishing'),
('Viz Media'),
('Ize Press'),
('Vertical'),
('Recorded Books'),
('Mann, Ivanov and Ferber');

INSERT INTO book (
    title,
    author_id,
    pub_id,
    copyright_year,
    edition,
    edition_year,
    binding,
    rating,
    language,
    qty,
    num_pages,
    cover_image
)
VALUES
('Warriors: Into the Wild', 1, 1, '2015', 'Revised', '2015', 'paperback', '4.7', 'English', 10, 320, 'https://m.media-amazon.com/images/I/71gNzw663DL._SL1500_.jpg'),
('1984', 2, 2, '2003', 'Reprint', '2003', 'hardback', '4.8', 'English', 5, 384, 'https://m.media-amazon.com/images/I/91VsLImyJgL._SL1500_.jpg'),
('Wonder', 3, 3, '2012', '1st', '2012', 'Paperback', '4.8', 'English', 8, 320, 'https://m.media-amazon.com/images/I/71Q1KDTHXLL._SL1500_.jpg'),
('Mockingjay', 4, 4, '2014', '1st', '2014', 'Hardback', '4.6', 'English', 7, 400, 'https://m.media-amazon.com/images/I/61n5pTMvmpL._SL1200_.jpg'),
('The Hunger Games', 4, 4, '2010', 'Reprint', '2010', 'Paperback', '4.7', 'English', 12, 384, 'https://m.media-amazon.com/images/I/61I24wOsn8L._SL1200_.jpg'),
('Catching Fire', 4, 5, '2023', 'Large Print', '2023', 'Hardback', '4.7', 'English', 4, 496, 'https://m.media-amazon.com/images/I/71dVss+f-sL._SL1500_.jpg'),
('Chainsaw Man, Vol. 18', 5, 6, '2025', '1st', '2025', 'Paperback', '4.4', 'Japanese', 15, 192, 'https://m.media-amazon.com/images/I/61+5xbA4vWL._SL1500_.jpg'),
('Goodbye Eri', 5, 6, '2023', '1st', '2023', 'Paperback', '4.8', 'Japanese', 10, 208, 'c:\Users\dbzfa\AppData\Local\Temp\71fgXFnzayL._SL1500_.jpg'),
('The Horizon, Vol. 1', 6, 7, '2023', '1st', '2023', 'Paperback', '4.7', 'Korean', 13, 376, 'https://m.media-amazon.com/images/I/917yq3HDTHL._SL1500_.jpg'),
("Omniscient Reader's Viewpoint", 7, 7, '2023', '1st', '2023', 'Paperback', '4.8', 'Korean', 9, 252, 'https://m.media-amazon.com/images/I/81ZuZO5vr2L._SL1500_.jpg'),
('Bakemonogatari', 8, 8, '2020', 'Unabridged', '2020', 'Audiobook', '4.8', 'Japanese', NULL, NULL, 'https://m.media-amazon.com/images/I/81ElK9889BL._SL1500_.jpg'),
('A Court of Wings and Ruin', 9, 9, '2017', 'Unabridged', '2017', 'E-Book', '4.7', 'English', NULL, NULL, 'https://m.media-amazon.com/images/I/81+0J2x5WPL._SL1500_.jpg'),
('The Joy of Movement', 10, 10, '2020', 'Unabridged', '2020', 'E-Book', '4.7', 'Russian', NULL, 277, 'https://prodimage.images-bn.com/pimages/9785001691075_p0_v1_s1200x1200.jpg')
;

-- for some reason, the auto increment skipped from 3 to 28, so i have to manually do this again

DELETE FROM book WHERE book_id > 3;
ALTER TABLE book AUTO_INCREMENT = 4;

INSERT INTO book (
    title,
    author_id,
    pub_id,
    copyright_year,
    edition,
    edition_year,
    binding,
    rating,
    language,
    qty,
    num_pages,
    cover_image
)
VALUES
('Mockingjay', 4, 4, '2014', '1st', '2014', 'Hardback', '4.6', 'English', 7, 400, 'https://m.media-amazon.com/images/I/61n5pTMvmpL._SL1200_.jpg'),
('The Hunger Games', 4, 4, '2010', 'Reprint', '2010', 'Paperback', '4.7', 'English', 12, 384, 'https://m.media-amazon.com/images/I/61I24wOsn8L._SL1200_.jpg'),
('Catching Fire', 4, 5, '2023', 'Large Print', '2023', 'Hardback', '4.7', 'English', 4, 496, 'https://m.media-amazon.com/images/I/71dVss+f-sL._SL1500_.jpg'),
('Chainsaw Man, Vol. 18', 5, 6, '2025', '1st', '2025', 'Paperback', '4.4', 'Japanese', 15, 192, 'https://m.media-amazon.com/images/I/61+5xbA4vWL._SL1500_.jpg'),
('Goodbye Eri', 5, 6, '2023', '1st', '2023', 'Paperback', '4.8', 'Japanese', 10, 208, 'https://m.media-amazon.com/images/I/71fgXFnzayL._SL150_.jpg'),
('The Horizon, Vol. 1', 6, 7, '2023', '1st', '2023', 'Paperback', '4.7', 'Korean', 13, 376, 'https://m.media-amazon.com/images/I/917yq3HDTHL._SL1500_.jpg'),
("Omniscient Reader's Viewpoint", 7, 7, '2023', '1st', '2023', 'Paperback', '4.8', 'Korean', 9, 252, 'https://m.media-amazon.com/images/I/81ZuZO5vr2L._SL1500_.jpg'),
('Bakemonogatari', 8, 8, '2020', 'Unabridged', '2020', 'Audiobook', '4.8', 'Japanese', NULL, NULL, 'https://m.media-amazon.com/images/I/81ElK9889BL._SL1500_.jpg'),
('A Court of Wings and Ruin', 9, 9, '2017', 'Unabridged', '2017', 'E-Book', '4.7', 'English', NULL, NULL, 'https://m.media-amazon.com/images/I/81+0J2x5WPL._SL1500_.jpg'),
('The Joy of Movement', 10, 10, '2020', 'Unabridged', '2020', 'E-Book', '4.7', 'Russian', NULL, 277, 'https://prodimage.images-bn.com/pimages/9785001691075_p0_v1_s1200x1200.jpg')
;

UPDATE book
SET cover_image = 'https://m.media-amazon.com/images/I/71fgXFnzayL._SL1500_.jpg'
WHERE book_id = 8;

INSERT INTO genre(genre)
VALUES
('Fantasy'),
('Dystopian'),
('Adventure'),
("Children's"),
('Science Fiction'),
('Action'),
('Comedy'),
('Horror'),
('Mystery'),
('Sports'),
('Psychological'),
('Romance'),
('Paranormal');


INSERT INTO book_to_genre (book_id, genre_id)
VALUES
    (1, 3),
    (1, 4),
    (1, 6),
    (2, 2),
    (2, 11),
    (3, 4),
    (4, 2),
    (4, 6),
    (5, 2),
    (5, 6),
    (6, 2),
    (6, 6),
    (7, 6),
    (7, 7),
    (7, 8), 
    (8, 9), 
    (9, 11), 
    (10, 5), 
    (11, 12),
    (11, 13), 
    (12, 1), 
    (12, 12),
    (13, 10);

    -- tests

    SELECT b.book_id, b.title, g.genre_id, g.genre
    FROM book b
    JOIN book_to_genre btg USING (book_id)
    JOIN genre g USING (genre_id);

    SELECT b.book_id, b.title, a.author_id, a.author, p.pub_id, p.publisher
    FROM book b
    JOIN author a USING (author_id)
    JOIN publisher p USING (pub_id);