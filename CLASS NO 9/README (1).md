# 📘 SQL Learning Journey – Class 9  
### 🧩 One-to-One & Many-to-Many Relationships

This repository contains my **Class 9 practice** of SQL database relationships under the guidance of **Instructor Hafizullah Khokhar** at **Aptech Pakistan Institute**.

---

## 🧑‍🤝‍🧑 One-to-One Relationship

### 📄 Description
In a **One-to-One relationship**, each record in one table is linked to exactly **one** record in another table.  
Example: `Users` and `UserProfiles`.

- Each **User** has only one **UserProfile**.  
- Each **UserProfile** belongs to only one **User**.  
- `UserID` is the **Primary Key** in `Users`.  
- `UserID` is also the **Foreign Key** in `UserProfiles`.

### 🧾 Sample SQL
```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE UserProfiles (
    ProfileID INT IDENTITY(1,1),
    UserID INT UNIQUE,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20),
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
);
```

---

## 🔁 Many-to-Many Relationship

### 📄 Description
In a **Many-to-Many relationship**, multiple records in one table can relate to multiple records in another table.  
Example: `Students` and `Courses`.

- A **Student** can enroll in multiple **Courses**.  
- A **Course** can have multiple **Students**.  
- A **junction table** `Enrollments` is used to connect both tables.

### 🧾 Sample SQL
```sql
CREATE TABLE Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL
);

CREATE TABLE Courses (
    CourseID INT IDENTITY(1,1) PRIMARY KEY,
    CourseName VARCHAR(100) NOT NULL
);

CREATE TABLE Enrollments (
    EnrollmentID INT IDENTITY(1,1) PRIMARY KEY,
    StudentID INT,
    CourseID INT,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID)
);
```

---

## 🧠 Concepts Covered
- Understanding One-to-One relationships
- Understanding Many-to-Many relationships
- Using Foreign Keys to build relationships
- Junction (linking) table in Many-to-Many
- Enforcing data integrity using constraints

---

## 🧑‍🏫 Instructor  
**Sir Hafizullah Khokhar** – Aptech Pakistan

## 🧰 Tools Used
- Microsoft SQL Server  
- SQL Server Management Studio (SSMS)

## 📝 Author
**Mughal Hamza**  
📅 Class 9 – SQL Learning Journey

---

⭐ *If you find this helpful, give it a star on GitHub!* 🌟
