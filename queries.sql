-- THESE ARE QUERIES (CRUD OPERATIONS) THAT CAN BE PERFORMED ON THE Gym_membership database
-- Create Operations
-- Add a Training Session
-- Trainers can create new sessions in the system, specifying details such as the session type, date, time, duration, and the member assigned eg:

INSERT INTO Session (MemberID, SessionType, SessionDate, SessionTime, Duration, SessionStatus, TrainerID)
VALUES (6, 'Yoga', CURDATE(), CURTIME(), 60, 'Confirmed', 7);




-- Read operations
-- Trainers can retrieve and view data relevant to their role. Examples include:
-- View Assigned Sessions
-- Trainers can view their upcoming or completed sessions eg:

SELECT * FROM Session
 WHERE TrainerID = ? AND SessionStatus = 'Scheduled';

-- View Member Details
-- Trainers can access information about members attending their sessions eg:

SELECT Member.Name, Member.PhoneNumber, Member.Email 
FROM Member INNER JOIN Session ON Member.MemberID = Session.MemberID 
WHERE Session.TrainerID = ?;

-- Review Session History
-- Trainers can check their session history for performance tracking or evaluation eg to see the sessions the competed and the members that attended(a full session history):

SELECT * FROM Session WHERE TrainerID = ?;

-- Update Operations
-- Trainers working in tandem with gym administrators can modify existing information in the system for example:
-- Update Session Details
-- Trainers can reschedule or adjust session details, such as changing the time or marking the session as "Completed."

UPDATE Session 
SET SessionTime = '16:00:00', SessionStatus = 'Completed' 
WHERE SessionID = ?;

-- Update Trainer Information
-- Trainers can update their expertise or contact information if changes occur.

UPDATE Trainer
 SET Specialty = 'Strength Training and Cardio', PhoneNumber = '0712345678' WHERE TrainerID = ?;

-- Delete Operations
-- Delete a Session
-- Trainers can cancel and remove a session if it is no longer needed.(The session Id in this case will be input from the user)
DELETE FROM Session WHERE SessionID = ?;


-- 3.1.2 Gym Member CRUD operation 
-- Create Operations 
-- Schedule a New Session
-- The member can book a session by inserting a new record into the Session table with details about the session, member, and Session date.

INSERT INTO Session (MemberID, SessionType, SessionDate, SessionTime, Duration, SessionStatus, TrainerID)
VALUES (?, 'Yoga', ‘2023-12-15’, '09:00:00', 60, 'Confirmed', ?);

-- Read Operations 
-- View Upcoming Sessions
-- The member can check their future scheduled sessions, including session details and trainer names, using a SELECT query filtered by upcoming dates.

SELECT
	s.SessionID,
	s.SessionType,
	s.SessionDate,
	s.SessionTime,
	s.Duration,
	s.SessionStatus,
	t.Name AS TrainerName,
	t.Specialty AS TrainerSpecialty
FROM
	Session s
JOIN
	Trainer t ON s.TrainerID = t.TrainerID
JOIN
	Member m ON s.MemberID = m.MemberID
WHERE
	m.MemberID = ?
	AND s.SessionDate >= CURDATE()
	AND s.SessionStatus = 'Scheduled'
ORDER BY
	s.SessionDate ASC, s.SessionTime ASC;



-- View Session History
-- The member can review past sessions, including session types, dates, times, and trainers, using a SELECT query to retrieve their booking and session details.

SELECT s.SessionID, s.SessionType, s.SessionDate, s.SessionTime, s.Duration, 
       t.Name AS TrainerName
FROM Session s
JOIN Trainer t ON s.TrainerID = t.TrainerID
WHERE s.MemberID = ? AND s.SessionDate < CURDATE();


-- View Membership Details
-- The member can check their membership information, such as type, start and end dates, and current status, using a SELECT query.

SELECT m.MemberID, m.Name, mt.TypeName AS MembershipType, mt.Price, 
       m.JoinDate, m.EndDate
FROM Member m
JOIN MembershipType mt ON m.MembershipTypeID = mt.MembershipTypeID
WHERE m.MemberID = ?;

-- Update Operations 
-- Renew or Upgrade Membership
-- The member can renew or upgrade their membership type, duration, and access level by modifying their record in the Member table with an UPDATE query.

UPDATE Member
SET MembershipTypeID = ?, JoinDate = CURDATE(), 
    EndDate = DATE_ADD(CURDATE(), INTERVAL (
        SELECT Duration FROM MembershipType WHERE MembershipTypeID = ?
    ) DAY)
WHERE MemberID = ?;

-- Update Personal Information
-- The member can modify their personal details, such as phone number or email, by updating their record in the Member table using an UPDATE query.

UPDATE Member
SET PhoneNumber = ?, Email = ?
WHERE MemberID = ?;

-- Delete Operations
-- Delete their own account
-- A member can request to remove their account from the system. This involves deleting their data from the Member table while also ensuring related records (e.g., bookings, payments) are handled properly to maintain data integrity.

DELETE FROM Payments WHERE MemberID = ?; 
DELETE FROM Session WHERE MemberID = ?; 
DELETE FROM Member WHERE MemberID = ?;


-- 3.1.3 Gym Admin CRUD operation 
-- i.Create a New Membership
-- The gym admin can add a new membership plan to the system e.g. The admin can enter details for a new membership e.g. Couples which gives a discount to members with spouses
-- This could be done using an SQL command like:
INSERT INTO MembershipType (TypeName, Duration, Price) VALUES ('Couples', 365, 36000);
 
-- ii. Read Membership Information
-- The gym admin can view details of existing membership plans to assess their usage and popularity. E.g. The admin retrieves information about all available membership types.
-- This could be achieved using an SQL command like:
SELECT * FROM MembershipType;

-- iii. Update Trainer Information
-- The admin can update the details of a trainer, such as their specialization. E.g. If a trainer completes a new certification, the admin updates this information in the system.
-- This could be done with an SQL command like:

UPDATE Trainer SET Specialty = 'Yoga' WHERE TrainerId = 1;

-- iv. Delete a Session Record
-- The admin can remove a session from the schedule if it is canceled or no longer offered. E.g. The admin deletes a specific training session that has been canceled due to low enrollment.
-- This could be executed using an SQL command like:

DELETE FROM Session WHERE SessionID = 1;



