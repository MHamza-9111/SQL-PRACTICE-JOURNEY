CREATE TABLE Users(
	UserID INT PRIMARY KEY,
	Name VARCHAR(10) NOT NULL,
	Email VARCHAR(50) NOT NULL,
	Phone VARCHAR(30) NULL
);

CREATE TABLE UserProfiles(
	UserID INT UNIQUE,
	ProfileID INT IDENTITY(100,1) UNIQUE,
	Platform VARCHAR(50)
	FOREIGN KEY (UserID) REFERENCES Users(UserID)
);

INSERT INTO Users (UserID, Name, Email, Phone)
VALUES
(42101, 'Hamza', 'mughalhamza2015@gmail.com', '+923002799288'),
(99288, 'Shayan', 'shayan911@gmail.com', '+9230021192884')

INSERT INTO UserProfiles (UserID, Platform)
VALUES
(42101, 'Facebook'),
(99288, 'Linkedin')

SELECT
u.UserID,
p.ProfileID,
u.Name,
u.Email,
u.Phone
FROM Users u
JOIN UserProfiles p ON u.UserID = p.UserID