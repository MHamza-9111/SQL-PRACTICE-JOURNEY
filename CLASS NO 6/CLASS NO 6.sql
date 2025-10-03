-- CLASS# 6 PRACTICE ALL TOPICS FROM CLASS 1-5 --
/* COVERING ALL LOGICAL, COMPARISON OPERATORS, BY USING WHERE CLAUSE & MULTIPLE CONDITIONS */

-- CREATE DATABASE --
CREATE DATABASE School;

-- USE DATABASE --
USE School;

-- CREATE TABLE --
CREATE TABLE Students (
    RollNumber INT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    Country VARCHAR(50),
    AdmissionDate DATE,
    Class VARCHAR(20),
    Grade CHAR(2)
);

-- INSERT VALUES INTO TABLE --
INSERT INTO Students (RollNumber, Name, Age, Gender, City, Country, AdmissionDate, Class, Grade)
VALUES
(101, 'Ali Khan', 15, 'Male', 'Karachi', 'Pakistan', '2022-08-15', '10th', 'A'),
(102, 'Sara Malik', 14, 'Female', 'Lahore', 'Pakistan', NULL, '9th', 'B'),
(103, 'Hamza Mughal', 16, 'Male', 'Islamabad', 'Pakistan', '2021-07-20', NULL, 'A'),
(104, 'Ayesha Sheikh', 13, 'Female', 'Multan', 'Pakistan', '2023-01-10', '8th', NULL),
(105, 'Usman Ali', 17, 'Male', 'Faisalabad', 'Pakistan', NULL, '12th', 'B'),
(106, 'Fatima Khalid', 15, 'Female', 'Peshawar', 'Pakistan', '2022-08-22', '10th', 'A'),
(107, 'Bilal Ahmed', 18, 'Male', 'Quetta', 'Pakistan', '2020-09-12', '12th', NULL),
(108, 'Mariam Zafar', 14, 'Female', 'Rawalpindi', 'Pakistan', NULL, '9th', 'A'),
(109, 'Zain Hassan', 16, 'Male', 'Sialkot', 'Pakistan', '2021-08-30', NULL, 'B'),
(110, 'Hina Riaz', 13, 'Female', 'Hyderabad', 'Pakistan', '2023-01-25', '8th', 'A'),
(111, 'Rohan Sharma', 15, 'Male', 'Delhi', 'India', '2022-07-18', '10th', 'B'),
(112, 'Priya Verma', 14, 'Female', 'Mumbai', 'India', NULL, '9th', 'A'),
(113, 'Arjun Mehta', 16, 'Male', 'Bangalore', 'India', '2021-09-01', '11th', NULL),
(114, 'Neha Gupta', 13, 'Female', 'Kolkata', 'India', '2023-03-10', NULL, 'A'),
(115, 'Karan Singh', 17, 'Male', 'Chennai', 'India', '2021-07-28', '12th', 'B'),
(116, 'John Smith', 16, 'Male', 'New York', 'USA', NULL, '11th', 'A'),
(117, 'Emily Johnson', 15, 'Female', 'Los Angeles', 'USA', '2022-08-10', '10th', 'A'),
(118, 'Michael Brown', 17, 'Male', 'Chicago', 'USA', '2021-07-22', NULL, 'C'),
(119, 'Sophia Davis', 14, 'Female', 'Houston', 'USA', '2022-09-02', '9th', NULL),
(120, 'Daniel Wilson', 18, 'Male', 'San Francisco', 'USA', '2020-08-18', '12th', 'A'),
(121, 'Oliver Taylor', 15, 'Male', 'London', 'UK', '2022-08-25', '10th', 'B'),
(122, 'Amelia Clark', 14, 'Female', 'Manchester', 'UK', NULL, '9th', 'A'),
(123, 'George Lewis', 16, 'Male', 'Birmingham', 'UK', '2021-08-20', '11th', 'B'),
(124, 'Isla Walker', 13, 'Female', 'Leeds', 'UK', '2023-01-12', NULL, 'A'),
(125, 'Jack Hall', 17, 'Male', 'Liverpool', 'UK', '2021-09-03', '12th', NULL),
(126, 'Chen Wei', 16, 'Male', 'Beijing', 'China', '2021-08-28', '11th', 'A'),
(127, 'Li Na', 14, 'Female', 'Shanghai', 'China', NULL, '9th', 'B'),
(128, 'Wang Fang', 15, 'Female', 'Guangzhou', 'China', '2022-08-17', '10th', NULL),
(129, 'Zhao Ming', 17, 'Male', 'Shenzhen', 'China', '2021-07-30', NULL, 'B'),
(130, 'Liu Yang', 18, 'Male', 'Chengdu', 'China', '2020-09-10', '12th', 'A');

/* Give Alias Age AS "Years" and Name AS StudentName */
SELECT Name AS StudentName, Age AS Years FROM Students;

/* Update All Students age to +1 Year */
UPDATE Students
SET Age=age+1;

/* SELECT Students name Ends with Mughal */
SELECT * FROM Students
WHERE Name LIKE '%Mughal';

/* SELECT Students with Grade Null */
SELECT * FROM Students
WHERE Grade is Null;

/* UPDATE Students age to 1 year where there age is greater than 23 (USE TRANSACTION)*/
BEGIN TRANSACTION
UPDATE Students
SET age=age+1
WHERE Age<23;
SELECT * FROM Students WHERE Age<23;
ROLLBACK;

/* Permanent Hamza Mughal age Change to 20 */
BEGIN TRANSACTION
UPDATE Students
SET age=20
WHERE Name= 'Hamza Mughal';
SELECT * FROM Students WHERE Name= 'Hamza Mughal';
COMMIT;

/* Delete any student with rollnumber=103 */
DELETE FROM Students
WHERE RollNumber=103;

/* Show students from roll number descending order */
SELECT * FROM Students ORDER BY RollNumber DESC;

/* Show top 3 students having roll number ascending order */
SELECT TOP 3 * FROM Students ORDER BY RollNumber ASC;

/* Show students in (110,120,130) */
SELECT * FROM Students WHERE RollNumber IN (110,120,130);

/* Select names starting from letter A */
SELECT * FROM Students
WHERE Name LIKE 'A%';

/* Select names according to any single letter,Length Matters! */
SELECT * FROM Students
WHERE Name LIKE '___z________'; --Matches 11 Letters Name Where 4th Letter is Z

/* Select all where age is between 10 and 20 */
SELECT * FROM Students
WHERE Age BETWEEN 10 AND 20;

/* Select all where age is less than 10 either Gender Male But Country Should be Pakistan */
SELECT * FROM Students
WHERE (age<=10 OR Gender= 'Male') AND Country= 'Pakistan';

/* Select all where age is less than 19 either City Karachi
   But Country should be Pakistan and Gender will be Female */
SELECT * FROM Students
WHERE (age<19 OR City= 'Karachi' AND Country= 'Pakistan') AND Gender= 'Female';

/* Select all where age is less than 19 either
   Country Pakistan But Name is Ayesha Sheikh */
SELECT * FROM Students
WHERE (age<19 OR Country= 'Pakistan') AND Name Like 'Ayesha Sheikh';

/* Change the mistaken name Ayesha Sheikh
   into Areesha Sheikh Where Roll_Number is 104 */
UPDATE Students
SET Name= 'Areesha Sheikh'
WHERE RollNumber= 104 AND Name= 'Ayesha Sheikh';

SELECT * FROM Students;