
-- CLASS# 3 (Create Database,Create Table,Show Values in Table).

CREATE DATABASE Class;
USE Class;

CREATE TABLE Std(
ROLL_NUMBER INT,
NAME VARCHAR (50),
AGE INT,
ADMISSION_DATE DATE
);

INSERT INTO Std (ROLL_NUMBER, NAME, AGE, ADMISSION_DATE)
VALUES
(1, 'Hamza', 19, '2025-09-20'),
(2, 'Ayan', 15, '2020-01-01'),
(3, 'Usman', 25, '2023-12-05'),
(4, 'Zaid', 17, '2025-05-09'),
(5, 'Shayan', 19, '2024-08-25')

SELECT * FROM Std;