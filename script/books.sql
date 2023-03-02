CREATE TABLE authors (
    id INT PRIMARY KEY,
    name VARCHAR(45),
    created_ad DATETIME,
    updated_ad DATETIME
);

CREATE TABLE books (
    id INT PRIMARY KEY,
    title VARCHAR(45),
    num_of_pages INT,
    created_ad DATETIME,
    updated_ad DATETIME
);

CREATE TABLE favorites (
    id INT PRIMARY KEY,
    author_id INT,
    book_id INT,
    created_ad DATETIME,
    updated_ad DATETIME,
    FOREIGN KEY (author_id) REFERENCES authors(id),
    FOREIGN KEY (book_id) REFERENCES books(id)
);

-- Crear autores
INSERT INTO authors (name, created_at, updated_at) VALUES 
    ('Jane Austen', NOW(), NOW()),
    ('Emily Dickinson', NOW(), NOW()),
    ('Fyodor Dostoevsky', NOW(), NOW()),
    ('William Shakespeare', NOW(), NOW()),
    ('Lau Tzu', NOW(), NOW());

-- Crear libros
INSERT INTO books (title, num_of_pages, created_at, updated_at) VALUES 
    ('C Sharp', 300, NOW(), NOW()),
    ('Java', 400, NOW(), NOW()),
    ('Python', 500, NOW(), NOW()),
    ('PHP', 200, NOW(), NOW()),
    ('Ruby', 350, NOW(), NOW());

-- Cambiar el nombre del libro 'C Sharp' a 'C#'
UPDATE books SET title = 'C#' WHERE title = 'C Sharp';

-- Cambiar el nombre del cuarto autor a 'Bill'
UPDATE authors SET name = 'Bill' WHERE id = 4;

INSERT INTO favorites (author_id, book_id, created_ad, updated_ad) VALUES
    (1, 1, NOW(), NOW()),
    (1, 2, NOW(), NOW());
INSERT INTO favorites (author_id, book_id, created_ad, updated_ad) VALUES
    (2, 1, NOW(), NOW()),
    (2, 2, NOW(), NOW()),
    (2, 3, NOW(), NOW());
INSERT INTO favorites (author_id, book_id, created_ad, updated_ad) VALUES
    (3, 1, NOW(), NOW()),
    (3, 2, NOW(), NOW()),
    (3, 3, NOW(), NOW()),
    (3, 4, NOW(), NOW());
INSERT INTO favorites (author_id, book_id, created_ad, updated_ad) VALUES
    (4, 1, NOW(), NOW()),
    (4, 2, NOW(), NOW()),
    (4, 3, NOW(), NOW()),
    (4, 4, NOW(), NOW()),
    (4, 5, NOW(), NOW());
SELECT authors.name
FROM authors
JOIN favorites ON authors.id = favorites.author_id
WHERE favorites.book_id = 3;

SELECT id FROM favorites WHERE author_id = 1 AND book_id = 3;
DELETE FROM favorites WHERE id = 5;

INSERT INTO favorites (author_id, book_id, created_at, updated_at) VALUES (5, 2, NOW(), NOW());

SELECT books.* FROM books
INNER JOIN favorites ON books.id = favorites.book_id
WHERE favorites.author_id = 3;

SELECT authors.* FROM authors
INNER JOIN favorites ON authors.id = favorites.author_id
WHERE favorites.book_id = 5;
