CREATE DATABASE LibraryDB;

USE LibraryDB;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150),
    author VARCHAR(100),
    published_year INT,
    isbn VARCHAR(20) UNIQUE
);

CREATE TABLE librarians(
	librarian_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    contact VARCHAR(20)
);

CREATE TABLE isshuedbooks(
	issueid INT PRIMARY KEY AUTO_INCREMENT,
    book_id int,
    student_id int,
    issuedate date,
    return_date date,
    foreign key (book_id) references Books(book_id),
    foreign key (student_id) references Students(student_id)
);

