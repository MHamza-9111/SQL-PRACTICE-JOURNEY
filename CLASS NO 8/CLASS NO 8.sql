-- CLASS NO 8 TABLE RELATIONS WITH FOREIGN & PRIMARY KEY FUNCTION --

CREATE DATABASE HMUniversity;

USE HMUniversity;

CREATE TABLE Teachers (
    teacher_id INT IDENTITY (1,1) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE Students (
    student_id INT IDENTITY (1,1) PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    course_id INT IDENTITY (1,1) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

CREATE TABLE Enrollments (
    enrollment_id INT IDENTITY (1,1) PRIMARY KEY,
    student_id INT,
    teacher_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (teacher_id) REFERENCES Teachers(teacher_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

INSERT INTO Teachers (full_name) VALUES
('Ali Khan'),
('Sara Ahmed'),
('John Smith');

INSERT INTO Students (full_name) VALUES
('Ayesha Malik'),
('Bilal Ahmed'),
('Fatima Noor'),
('Hamza Mughal');

INSERT INTO Courses (course_name) VALUES
('Mathematics'),
('Physics'),
('Computer Science');

INSERT INTO Enrollments (student_id, teacher_id, course_id, enrollment_date) VALUES
(1, 2, 1, '2025-08-15'),
(1, 2, 2, '2025-08-15'),
(2, 1, 2, '2025-08-16'),
(3, 3, 3, '2025-08-17'),
(4, 1, 1, '2025-08-18'),
(4, 3, 3, '2025-08-18');

SELECT 
Students.full_name AS student_name,
Teachers.full_name AS teacher_name,
Courses.course_name,
Enrollments.enrollment_date
FROM Enrollments
JOIN Students ON Enrollments.student_id = Students.student_id
JOIN Teachers ON Enrollments.teacher_id = Teachers.teacher_id
JOIN Courses ON Enrollments.course_id = Courses.course_id;
