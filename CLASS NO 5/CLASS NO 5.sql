
-- CLASS# 5 CRUD Operations (Advanced).
-- Logical Operators & Conditions --

CREATE TABLE Students (
    RollNumber INT,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10),
    City VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Students (RollNumber, Name, Age, Gender, City, Country)
VALUES
(101, 'Ali Khan', 15, 'Male', 'Karachi', 'Pakistan'),
(102, 'Sara Malik', 14, 'Female', 'Lahore', 'Pakistan'),
(103, 'Hamza Mughal', 16, 'Male', 'Islamabad', 'Pakistan'),
(104, 'Ayesha Sheikh', 13, 'Female', 'Multan', 'Pakistan'),
(105, 'Usman Ali', 17, 'Male', 'Faisalabad', 'Pakistan'),
(106, 'Fatima Khalid', 15, 'Female', 'Peshawar', 'Pakistan'),
(107, 'Bilal Ahmed', 18, 'Male', 'Quetta', 'Pakistan'),
(108, 'Mariam Zafar', 14, 'Female', 'Rawalpindi', 'Pakistan'),
(109, 'Zain Hassan', 16, 'Male', 'Sialkot', 'Pakistan'),
(110, 'Hina Riaz', 13, 'Female', 'Hyderabad', 'Pakistan'),
(111, 'Rohan Sharma', 15, 'Male', 'Delhi', 'India'),
(112, 'Priya Verma', 14, 'Female', 'Mumbai', 'India'),
(113, 'Arjun Mehta', 16, 'Male', 'Bangalore', 'India'),
(114, 'Neha Gupta', 13, 'Female', 'Kolkata', 'India'),
(115, 'Karan Singh', 17, 'Male', 'Chennai', 'India'),
(116, 'John Smith', 16, 'Male', 'New York', 'USA'),
(117, 'Emily Johnson', 15, 'Female', 'Los Angeles', 'USA'),
(118, 'Michael Brown', 17, 'Male', 'Chicago', 'USA'),
(119, 'Sophia Davis', 14, 'Female', 'Houston', 'USA'),
(120, 'Daniel Wilson', 18, 'Male', 'San Francisco', 'USA'),
(121, 'Oliver Taylor', 15, 'Male', 'London', 'UK'),
(122, 'Amelia Clark', 14, 'Female', 'Manchester', 'UK'),
(123, 'George Lewis', 16, 'Male', 'Birmingham', 'UK'),
(124, 'Isla Walker', 13, 'Female', 'Leeds', 'UK'),
(125, 'Jack Hall', 17, 'Male', 'Liverpool', 'UK'),
(126, 'Chen Wei', 16, 'Male', 'Beijing', 'China'),
(127, 'Li Na', 14, 'Female', 'Shanghai', 'China'),
(128, 'Wang Fang', 15, 'Female', 'Guangzhou', 'China'),
(129, 'Zhao Ming', 17, 'Male', 'Shenzhen', 'China'),
(130, 'Liu Yang', 18, 'Male', 'Chengdu', 'China');

/* Select names according to any single letter,Length Matters! */
SELECT * FROM Students
WHERE Name LIKE '___z________'; --Matches 11 Letters Name Where 4th Letter is Z


/* Select names starting from letter A */
SELECT * FROM Students
WHERE Name LIKE 'A%';


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


/* Update All Students age to +1 Year */
UPDATE Students
SET Age=age+1;