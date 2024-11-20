-- These are views for the database:
-- 1.Membership Summary
-- This view provides an overview of all membership types, the number of members in each type, and their total revenue contribution.

CREATE VIEW MembershipSummary AS
SELECT 
    mt.MembershipTypeID,
    mt.TypeName AS MembershipType,
    mt.Price AS MembershipFee,
    COUNT(m.MemberID) AS TotalMembers,
    (COUNT(m.MemberID) * mt.Price) AS TotalRevenue
FROM 
    MembershipType mt
LEFT JOIN 
    Member m ON mt.MembershipTypeID = m.MembershipTypeID
GROUP BY 
    mt.MembershipTypeID, mt.TypeName, mt.Price;




-- 2.Active Sessions
-- This view lists all active sessions, including details about trainers and participating members.

CREATE VIEW ActiveSessions AS
SELECT 
    s.SessionID,
    s.SessionType,
    s.SessionDate,
    s.SessionTime,
    s.Duration,
    s.SessionStatus,
    t.Name AS TrainerName,
    m.Name AS MemberName
FROM 
    Session s
LEFT JOIN 
    Trainer t ON s.TrainerID = t.TrainerID
LEFT JOIN 
    Member m ON s.MemberID = m.MemberID
WHERE 
    s.SessionStatus = 'Active';

-- 3.Payments Summary
-- This view summarizes payments, showing total payments received, pending payments, and the number of transactions.

CREATE VIEW PaymentsSummary AS
SELECT 
    PaymentStatus,
    COUNT(PaymentID) AS TotalTransactions,
    SUM(Amount) AS TotalAmount
FROM 
    Payments
GROUP BY 
    PaymentStatus;







-- 4.Trainer Performance
-- This view provides an overview of trainer activity, including the number of sessions conducted and total members trained.

CREATE VIEW TrainerPerformance AS
SELECT 
    t.TrainerID,
    t.Name AS TrainerName,
    t.Specialty,
    COUNT(s.SessionID) AS TotalSessionsConducted,
    COUNT(DISTINCT s.MemberID) AS TotalMembersTrained
FROM 
    Trainer t
LEFT JOIN 
    Session s ON t.TrainerID = s.TrainerID
GROUP BY 
    t.TrainerID, t.Name, t.Specialty;


-- 5.Upcoming Sessions
-- This view displays all sessions scheduled for future dates.

CREATE VIEW UpcomingSessions AS
SELECT 
    s.SessionID,
    s.SessionType,
    s.SessionDate,
    s.SessionTime,
    s.Duration,
    t.Name AS TrainerName
FROM 
    Session s
LEFT JOIN 
    Trainer t ON s.TrainerID = t.TrainerID
WHERE 
    s.SessionDate > CURDATE()
ORDER BY 
    s.SessionDate, s.SessionTime;




-- 6.Expired Memberships
-- This view lists members whose memberships have expired.
CREATE VIEW ExpiredMemberships AS
SELECT 
    m.MemberID,
    m.Name AS MemberName,
    mt.TypeName AS MembershipType,
    m.EndDate
FROM 
    Member m
JOIN 
    MembershipType mt ON m.MembershipTypeID = mt.MembershipTypeID
WHERE 
    m.EndDate < CURDATE();

-- 7.Session Attendance
-- This view tracks members and trainers participating in sessions for attendance tracking.

CREATE VIEW SessionAttendance AS
SELECT s.SessionID, s.SessionType, s.SessionDate,  m.Name AS MemberName, t.Name AS TrainerName
FROM 
    Session s
LEFT JOIN 
    Member m ON s.MemberID = m.MemberID
LEFT JOIN 
    Trainer t ON s.TrainerID = t.TrainerID;
