-- CLASS# 7 FUNCTIONS & EXPRESSIONS --

-- USE DATABASE --
USE School;

INSERT INTO Students (Name)
VALUES ('     usman     ')

/* Select TOP 3 Students Using TOP Function */
SELECT TOP 3 * From Students;

/* Select Duplicate name and age values from students */
SELECT DISTINCT name,Age FROM Students;

/* Get number of characters in name of all students */
SELECT Name, LEN(Name) AS NUMBER_OF_CHARACTERS FROM Students;

/* Make Name upper characters and Lower Characters of Gender  */
SELECT UPPER(Name) AS UPPER_NAME, LOWER(Gender) AS LOWER_GENDER FROM Students;

/* Remove LEFT & RIGHT spaces from name */
SELECT LTRIM(RTRIM('    Usman    ')) AS BOTH_TRIM FROM Students;

/* Print CurrentDate */
SELECT GETDATE() AS CURRENTDATE;

/* Print CurrentYear */
SELECT DATEPART(YEAR,GETDATE()) AS CURRENT_YEAR;

/* Get all students average month since joindate */
SELECT Name, DATEDIFF(MONTH, AdmissionDate, GETDATE()) AS Months_Since_Join FROM Students;

/* Print CurrentDate */
SELECT GETDATE() AS CURRENTDATE;

/* Add Extra Column Father_Name */
ALTER TABLE Students
ADD Father_Name VARCHAR(50);

/* Update Father name Data where name hamza mughal */
UPDATE Students
SET Father_Name= 'IDREES MUGHAL'
WHERE Name= 'Hamza Mughal';

/* DROP Column Father name */
ALTER TABLE Students
DROP COLUMN Father_Name;

/* Print Roundoff Number */
SELECT ROUND(19.999,2) AS ROUNDOFF;

--------------------MINI PROJECT DATA INSIGHTS REPORT--------------------
SELECT
NAME,
UPPER(Name) AS UPPER_NAME,
LEN(Name) AS NUMBEROFCHAR,
DATEPART(YEAR,AdmissionDate) AS JOIN_YEAR,
DATEDIFF(MONTH, AdmissionDate, GETDATE()) AS Months_Since_Join
FROM Students
ORDER BY AdmissionDate ASC;