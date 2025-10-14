CREATE DATABASE HM_School;
USE HM_School;

CREATE TABLE Students(
	StudentID VARCHAR (50) PRIMARY KEY,
	Student_Name VARCHAR (30) NOT NULL,
	Father_Name VARCHAR (30) NOT NULL,
	Phone VARCHAR (50) NULL,
	Email VARCHAR (50) NULL,
	Admission_Date Date NULL
);

CREATE TABLE Teachers(
	TeacherID VARCHAR (50) UNIQUE NOT NULL,
	Teacher_Name VARCHAR (30) UNIQUE NULL
);

CREATE TABLE Courses(
	CourseID VARCHAR (50) PRIMARY KEY,
	Course_Name VARCHAR (20) UNIQUE NOT NULL,
);

CREATE TABLE Enrollments(
	EnrollmentID INT IDENTITY(1,1) UNIQUE,
	StudentID VARCHAR (50) NOT NULL,
	CourseID VARCHAR (50) NOT NULL,
	TeacherID VARCHAR (50) NOT NULL,
	FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
	FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
	FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

INSERT INTO Students (StudentID, Student_Name, Father_Name, Phone, Email, Admission_Date)
VALUES
('H01', 'Muhammad Hamza', 'Muhammad Idrees', '+923002799288', 'mughalhamza2015@gmail.com', '2025-09-26'),
('S02', 'Shayan', 'Ali', NULL, NULL, NULL),
('Z03', 'Zaid', 'Irfan', NULL, NULL, NULL)

INSERT INTO Courses (CourseID,Course_Name)
VALUES
('P101', 'Physics'),
('C102', 'Chemistry'),
('S103', 'Science')

INSERT INTO Teachers (TeacherID, Teacher_Name)
VALUES
('HK111', 'Hafizullah Khokhar'),
('TH222', 'Tahir Rehman'),
('I333', 'Imran')

INSERT INTO Enrollments (StudentID, CourseID ,TeacherID)
VALUES
('H01', 'S103', 'HK111'),
('Z03', 'S103', 'HK111'),
('S02', 'C102', 'I333'),
('S02', 'P101', 'TH222')

SELECT
E.EnrollmentID,
E.StudentID,
S.Student_Name,
S.Admission_Date,
E.CourseID,
C.Course_Name,
E.TeacherID,
T.Teacher_Name
FROM Enrollments E
JOIN Students S ON E.StudentID = S.StudentID
JOIN Courses C ON E.CourseID = C.CourseID
JOIN Teachers T ON E.TeacherID = T.TeacherID
