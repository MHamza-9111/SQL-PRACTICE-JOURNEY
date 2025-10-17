CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    CourseName VARCHAR(100),
    City VARCHAR(50)
);

--INSERT Data into table students
INSERT INTO Students(StudentID,FirstName,LastName,CourseName,City)
VALUES
(1510101,'Hamza','Mughal','Computer Science','Karachi')

--Create Nonclustered Index for CourseName Column in Table Students
CREATE NONCLUSTERED INDEX CourseName --U can use any name in my case i used CourseName
ON Students (CourseName);

--Show Indexes that we made and where we made
SELECT name,type_desc
FROM sys.indexes
WHERE object_id = OBJECT_ID('Students');