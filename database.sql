CREATE DATABASE job_portal;

USE job_portal;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(255)
);

CREATE TABLE jobs (
    id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100),
    company VARCHAR(100),
    location VARCHAR(100),
    description TEXT
);

CREATE TABLE applications (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    job_id INT,
    applied_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);