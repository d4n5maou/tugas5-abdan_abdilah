-- SOAL 1
CREATE DATABASE books_store;

CREATE TABLE books(
    id INT NOT NULL,
    judul VARCHAR(255),
    pengarang VARCHAR(50),
    tahun_terbit VARCHAR(5),
    penerbit VARCHAR(50),
    tanggal_dibuat DATE,
    tanggal_diupdate DATE,
    PRIMARY KEY (id)
);

CREATE TABLE category(
    id INT NOT NULL,
    nama_category VARCHAR(50),
    tanggal_dibuat DATE,
    tanggal_diupdate DATE,
    PRIMARY KEY (id)
);

-- SOAL 2
INSERT INTO books
VALUES 
(1,'Building Microservices', 'Sam Newman', '2014', 'O''Reilly Media', '2023-09-18', '2023-09-18'),
(2,'Clean Code','Robert C. Martin','2008','Prentice Hall','2023-09-18','2023-09-18'),
(3,'The Pragmatic Programmer','Andrew Hunt','1999','Addison-Wesley','2023-09-18','2023-09-18'),
(4,'Design Patterns','Erich Gamma','1994','Addison-Wesley','2023-09-18','2023-09-18'),
(5,'Introduction To Algorithms','Thomas H. Cormen','1990','MIT Press','2023-09-18','2023-09-18'),
(6,'The Art Of Computer prog.','Donald E. Knuth','1968','Addison-Wesley','2023-09-18','2023-09-18'),
(7,'Clean Architecture','Robert C. Martin','2017','Prentice Hall','2023-09-18','2023-09-18'),
(8,'Refactoring','Martin Fowler','1999','Addison-Wesley','2023-09-18','2023-09-18'),
(9,'Domain-Driven Design','Eric Evans','2003','Addison-Wesley','2023-09-18','2023-09-18'),
(10,'The Mythical Man-Month','Frederick Brooks','1975','Addison-Wesley','2023-09-18','2023-09-18');

INSERT INTO category
VALUES
(1,'Pemrograman','2023-09-18', '2023-09-18'),
(2,'Fiksi','2023-09-18', '2023-09-18'),
(3,'Nonfiksi','2023-09-18', '2023-09-18'),
(4,'Bisnis','2023-09-18', '2023-09-18'),
(5,'Teknologi','2023-09-18', '2023-09-18'),
(6,'Seni','2023-09-18', '2023-09-18'),
(7,'Sejarah','2023-09-18', '2023-09-18'),
(8,'Sains','2023-09-18', '2023-09-18'),
(9,'Hukum','2023-09-18', '2023-09-18'),
(10,'Kesehatan','2023-09-18', '2023-09-18');

-- SOAL 3
SELECT * FROM books;

SELECT * FROM category;

-- SOAL 4
UPDATE books
SET 
judul = 'Building
Microservices:
Designing FineGrained Systems
1st',
tahun_terbit = '2015',
tanggal_diupdate = '2023-09-20'
WHERE id = 1;

-- SOAL 5
DELETE FROM books WHERE id = 10;

DELETE FROM category WHERE id = 10;

-- SOAL 6
SELECT judul FROM books WHERE penerbit = 'addison-wesley';

SELECT * FROM books WHERE tahun_terbit BETWEEN 2003 AND 2023;

SELECT * FROM books WHERE judul LIKE '%design%';

-- SOAL 7
CREATE TABLE book_categories (
    id INT NOT NULL,
    id_category INT NOT NULL,
    id_book INT NOT NULL,
    tanggal_dibuat DATE,
    tanggal_diupdate DATE
    PRIMARY KEY (id),
    CONSTRAINT fk_category FOREIGN KEY (id_category) REFERENCES category(id),
    CONSTRAINT fk_book FOREIGN KEY (id_book) REFERENCES books(id)
);

-- SOAL 8
INSERT INTO book_categories
VALUES
(1,1,2,'2023-09-18','2023-09-18'),
(2,5,3,'2023-09-18','2023-09-18'),
(3,1,1,'2023-09-18','2023-09-18');

-- SOAL 9
SELECT books.id, books.judul, category.nama_category
FROM books
INNER JOIN category ON books.id = category.id;

-- SOAL 10
ALTER TABLE books
ADD jumlah_halaman INT,