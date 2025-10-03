# 📘 SQL Learning Journey – Class 6  

In **Class 6** of my SQL learning journey (under the guidance of my instructor **Hafizullah Khokhar**), I revised and practiced **all topics covered from Class 1 to Class 5**, focusing on **database creation, table handling, CRUD operations, logical operators, comparison operators, WHERE clause & multiple conditions**.  

---

## ✅ Topics Covered  

- Creating a Database  
- Using a Database  
- Creating a Table with Multiple Columns  
- Inserting Multiple Rows into a Table  
- Aliases (`AS`) for readability  
- Updating Records (Single & Bulk Updates)  
- Transactions (`BEGIN`, `COMMIT`, `ROLLBACK`)  
- Deleting Records  
- Filtering with `WHERE`, `LIKE`, `IN`, `BETWEEN`  
- Sorting with `ORDER BY` (Ascending & Descending)  
- Limiting Results (`TOP`)  
- Using **Logical Operators**: `AND`, `OR`, `NOT`  
- Using **Comparison Operators**: `=`, `<`, `>`, `<=`, `>=`, `<>`, `BETWEEN`, `LIKE`, `IN`, `IS NULL`  
- Combining Multiple Conditions inside `WHERE`  

---

## 🛠 Practice Highlights  

### 1. **Database & Table Setup**  
```sql
CREATE DATABASE School;
USE School;

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
```

### 2. **Insert Multiple Students**  
```sql
INSERT INTO Students (RollNumber, Name, Age, Gender, City, Country, AdmissionDate, Class, Grade)
VALUES
(101, 'Ali Khan', 15, 'Male', 'Karachi', 'Pakistan', '2022-08-15', '10th', 'A'),
(102, 'Sara Malik', 14, 'Female', 'Lahore', 'Pakistan', NULL, '9th', 'B'),
...
(130, 'Liu Yang', 18, 'Male', 'Chengdu', 'China', '2020-09-10', '12th', 'A');
```

### 3. **Select with Aliases**  
```sql
SELECT Name AS StudentName, Age AS Years FROM Students;
```

### 4. **Update with Transaction**  
```sql
BEGIN TRANSACTION
UPDATE Students
SET Age = 20
WHERE Name = 'Hamza Mughal';
COMMIT;
```

### 5. **Delete a Record**  
```sql
DELETE FROM Students WHERE RollNumber = 103;
```

### 6. **Sorting & Limiting**  
```sql
-- Descending Order
SELECT * FROM Students ORDER BY RollNumber DESC;

-- Top 3 Ascending
SELECT TOP 3 * FROM Students ORDER BY RollNumber ASC;
```

### 7. **Filtering Examples**  
```sql
-- Names ending with Mughal
SELECT * FROM Students WHERE Name LIKE '%Mughal';

-- Age between 10 and 20
SELECT * FROM Students WHERE Age BETWEEN 10 AND 20;

-- RollNumbers in a list
SELECT * FROM Students WHERE RollNumber IN (110,120,130);

-- Names starting with A
SELECT * FROM Students WHERE Name LIKE 'A%';

-- Multiple Conditions with AND / OR
SELECT * FROM Students
WHERE (Age < 19 OR City = 'Karachi' AND Country = 'Pakistan') AND Gender = 'Female';
```

### 8. **Fixing Mistaken Data**  
```sql
UPDATE Students
SET Name = 'Areesha Sheikh'
WHERE RollNumber = 104 AND Name = 'Ayesha Sheikh';
```

---

## 📂 Repo Structure  

```
Class6_SQL/
│── README.md       # Summary of Class 6
│── class6.sql      # Full SQL practice file
```

---

## 🚀 Key Learning  

Class 6 was a **revision class** to combine all earlier concepts.  
I practiced **CRUD operations, conditions, and operators together**, giving me more confidence in **writing complex SQL queries** using multiple conditions inside the `WHERE` clause.  
