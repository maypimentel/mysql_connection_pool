CREATE DATABASE library;
USE library;
CREATE TABLE author (
    id INT AUTO_INCREMENT,
    name VARCHAR(50),
    PRIMARY KEY(id)
);
CREATE TABLE book (
    id INT AUTO_INCREMENT,
    title VARCHAR(50),
    desciption TEXT,
    author_id INT,
    PRIMARY KEY(id)
    
);
GRANT ALL PRIVILEGES ON library.* TO 'usertest'@'%' IDENTIFIED BY 'password';
