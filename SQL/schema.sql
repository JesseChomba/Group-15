-- Group 15 database project: Gym Membership Management System
-- creating the database
CREATE DATABASE gym_membership;
-- Using the database
USE gym_membership;
-- create MembershipType_table
CREATE TABLE MembershipType (
	MembershipTypeID INT PRIMARY KEY AUTO_INCREMENT,
	TypeName VARCHAR(50) NOT NULL,
	Price DECIMAL(10, 2) NOT NULL,
	Duration INT NOT NULL -- Duration in days
);
-- create Member Table
CREATE TABLE Member (
	MemberID INT PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	DOB DATE NOT NULL,
	PhoneNumber VARCHAR(20),
	Email VARCHAR(100) UNIQUE,
	MembershipTypeID INT,
	JoinDate DATE NOT NULL,
	EndDate DATE,
	FOREIGN KEY (MembershipTypeID) REFERENCES MembershipType(MembershipTypeID)
);
-- create Trainer Table
CREATE TABLE Trainer (
	TrainerID INT PRIMARY KEY AUTO_INCREMENT,
	Name VARCHAR(100) NOT NULL,
	Specialty VARCHAR(100),
	PhoneNumber VARCHAR(20),
	Email VARCHAR(100) UNIQUE
);
-- create Session table
CREATE TABLE Session (
	SessionID INT PRIMARY KEY AUTO_INCREMENT,
	SessionType VARCHAR(50) NOT NULL,
	SessionDate DATE NOT NULL,
	SessionTime TIME NOT NULL,
	Duration INT NOT NULL, -- Duration in minutes
	SessionStatus VARCHAR(50) NOT NULL,
	TrainerID INT,
	MemberID INT,
	FOREIGN KEY (TrainerID) REFERENCES Trainer(TrainerID),
	FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);
CREATE TABLE Payments (
	PaymentID INT PRIMARY KEY AUTO_INCREMENT, -- Primary Key
	MemberID INT,                        	-- Foreign Key referencing Member table
	DOB DATE NOT NULL,                   	-- Date of Birth of the member
	Amount INT NOT NULL,                 	-- Payment amount
	PaymentDate DATE NOT NULL,           	-- Date of the payment
	PaymentMethod VARCHAR(50) NOT NULL,  	-- Payment method (e.g., Cash, Card)
	PaymentStatus VARCHAR(20) NOT NULL,  	-- Status of payment (e.g., Completed, Pending)

	-- Foreign Key Constraint
	FOREIGN KEY (MemberID) REFERENCES Member(MemberID)
);
