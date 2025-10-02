-- Class 2 - SQL Database and Table Practice

-- 1. Create a new database
CREATE DATABASE SchoolDB;

-- 2. Select/Use the database
USE SchoolDB;

-- 3. Create a table with different data types
CREATE TABLE Students (
    StudentID INT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    AdmissionDate DATE
);
