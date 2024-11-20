-- These are Advanced SQL queries to be carried out on the gym_membership database
-- 3.2.1 Stored Procedures:

i.Procedure to add new member
DELIMITER //
CREATE PROCEDURE `AddNewMember`(
	IN p_Name VARCHAR(100),
	IN p_DOB DATE,
	IN p_PhoneNumber VARCHAR(20),
	IN p_Email VARCHAR(100),
	IN p_MembershipTypeID INT,
	IN p_JoinDate DATE,
	IN p_EndDate DATE
 
)
BEGIN
	INSERT INTO Member (Name, DOB, PhoneNumber, Email, MembershipTypeID, JoinDate, EndDate)
	VALUES (p_Name, p_DOB, p_PhoneNumber, p_Email, p_MembershipTypeID, p_JoinDate, p_EndDate);
END //
DELIMITER ;

-- ii.Procedure to add new Membership type
DELIMITER //
CREATE PROCEDURE `AddMembershipType`(
	IN p_TypeName VARCHAR(50),
	IN p_Price DECIMAL(10, 2),
	IN p_Duration INT
)
BEGIN
	INSERT INTO MembershipType (TypeName, Price, Duration)
	VALUES (p_TypeName, p_Price, p_Duration);
END //
DELIMITER ;
iii.Procedure to Schedule New Session
DELIMITER //
CREATE PROCEDURE `ScheduleSession`(
	IN p_SessionType VARCHAR(50),
	IN p_SessionDate DATE,
	IN p_SessionTime TIME,
	IN p_Duration INT,
	IN p_SessionStatus VARCHAR(50),
	IN p_TrainerID INT,
	IN p_MemberID INT
)
BEGIN
	INSERT INTO Session (SessionType, SessionDate, SessionTime, Duration, SessionStatus, TrainerID, MemberID)
	VALUES (p_SessionType, p_SessionDate, p_SessionTime, p_Duration, p_SessionStatus, p_TrainerID, p_MemberID);
END //
DELIMITER ;
DELIMITER //
-- iv.Procedure to handle new payments
CREATE PROCEDURE AddPayment(
    IN p_member_id INT,
    IN p_amount DECIMAL(10, 2),
    IN p_payment_date DATE,
    IN p_payment_method VARCHAR(50)
)
BEGIN
    -- Insert a new payment record into the payments table
    INSERT INTO Payments (member_id, amount, PaymentDate, PaymentMethod)
    VALUES (p_member_id, p_amount, p_payment_date, p_payment_method);
END //

DELIMITER ;
