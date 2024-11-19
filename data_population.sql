-- Group 15 database project: Gym Membership Management System
-- populating the database
USE gym_membership;
-- Populating membership_type
INSERT INTO MembershipType (TypeName, Price, Duration)
VALUES
	('Basic', 20000, 365),
	('Premium', 30000, 365),
	('VIP', 60000, 365),
	('Family', 50000, 365),
	('Student', 18000, 365);
-- Populating Member table
INSERT INTO Member (Name, DOB, PhoneNumber, Email, MembershipTypeID, JoinDate, EndDate)
VALUES
	('John Mwangi', '1985-05-15', '0764541234', 'john.Mwangi@example.com', 2, '2022-01-01', '2023-01-01'),
	('Jane Smith', '1990-09-23', '0725815678', 'jane.smith@example.com', 1, '2023-03-15', '2024-03-15'),
	('Michael Omondi', '1978-12-07', '0715159012', 'michael.Omondi@example.com', 3, '2021-06-01', '2022-06-01'),
	('Emily Williams', '1992-02-18', '0715423456', 'emily.williams@example.com', 2, '2022-09-01', '2023-09-01'),
	('David Brown', '1987-06-30', '0751857890', 'david.brown@example.com', 1, '2023-02-01', '2024-02-01'),
	('Sarah Davis', '1995-11-04', '0758542468', 'sarah.davis@example.com', 2, '2022-04-15', '2023-04-15'),
	('Alex Kiprotich', '1993-08-11', '0746523690', 'alex.Kiprotich@example.com', 1, '2023-01-01', '2024-01-01'),
	('Emily Taylor', '1991-03-22', '0715657531', 'emily.taylor@example.com', 3, '2021-12-01', '2022-12-01'),
	('Tom Anderson', '1988-07-14', '0715488642', 'tom.anderson@example.com', 2, '2022-06-01', '2023-06-01'),
	('Olivia Thompson', '1989-10-28', '0764829753', 'olivia.thompson@example.com', 1, '2023-03-15', '2024-03-15'),
	('Jessica Lee', '1996-04-05', '0765514567', 'jessica.lee@example.com', 1, '2023-11-01', '2024-11-01'),
	('Robert Kyalo', '1984-12-19', '0721548901', 'robert.Kyalo@example.com', 2, '2022-08-01', '2023-08-01'),
	('Sophia Hernandez', '1991-05-27', '0714846543', 'sophia.hernandez@example.com', 3, '2021-09-01', '2022-09-01'),
	('Christopher Gonzalez', '1988-02-14', '0755542109', 'christopher.gonzalez@example.com', 1, '2023-05-01', '2024-05-01'),
	('Megan Rodriguez', '1997-08-09', '0721657654', 'megan.rodriguez@example.com', 2, '2022-12-01', '2023-12-01'),
	('Emma Davis', '1993-06-20', '0714651357', 'emma.davis@example.com', 2, '2022-07-01', '2023-07-01'),
	('Jacob Gonzalez', '1985-11-12', '0764582468', 'jacob.gonzalez@example.com', 3, '2021-02-01', '2022-02-01'),
	('Sophia Herrera', '1988-03-28', '0761823579', 'sophia.herrera@example.com', 1, '2023-06-15', '2024-06-15'),
	('Ethan Ramirez', '1991-09-05', '0764984680', 'ethan.Ramirez@example.com', 2, '2022-11-01', '2023-11-01'),
	('Isabella Njeri', '1994-04-18', '0725455791', 'isabella.Njeri@example.com', 1, '2023-08-01', '2024-08-01'),
	('Lucas Mueni', '1986-12-24', '0796456802', 'lucas.Mueni@example.com', 3, '2021-05-01', '2022-05-01'),
	('Mia Khalifa', '1997-02-14', '0769697913', 'mia.Khalifa@example.com', 2, '2022-10-01', '2023-10-01'),
	('Sebastian Castillo', '1990-07-31', '0736568024', 'sebastian.castillo@example.com', 1, '2023-09-15', '2024-09-15'),
	('Olivia Diaz', '1992-05-09', '0754949135', 'olivia.diaz@example.com', 2, '2022-12-01', '2023-12-01'),
	('Daniel Flores', '1988-11-23', '0764490246', 'daniel.flores@example.com', 3, '2021-08-01', '2022-08-01'),
	('Camila Mwangi', '1995-03-07', '0758461357', 'camila.Mwangi@example.com', 1, '2023-04-01', '2024-04-01'),
	('Mark Kimingi', '1987-08-19', '0795842468', 'Mark.Kimingi@example.com', 2, '2022-09-01', '2023-09-01'),
	('Valeria Nana', '1993-01-02', '0764643579', 'valeria.Nana@example.com', 1, '2023-07-01', '2024-07-01'),
	('Gabriel Ramos', '1989-06-14', '0788414680', 'gabriel.ramos@example.com', 2, '2022-03-01', '2023-03-01'),
	('Emilia Mwangi', '1996-10-27', '0715485791', 'emilia.Mwangi@example.com', 1, '2023-12-01', '2024-12-01');
-- Populating Trainers table
INSERT INTO Trainer (Name, Specialty, PhoneNumber, Email)
VALUES
	('Sarah Atieno', 'Strength Training', '0765452468', 'sarah.Atieno@example.com'),
	('Muli Wilson', 'Cardio', '0764523690', 'Muli.wilson@example.com'),
	('Emily Taylor', 'Yoga', '0761557531', 'emily.taylor@example.com'),
	('Tom Kipruto', 'Strength Training', '0765628642', 'tom.Kipruto@example.com'),
	('Olivia Wairimu', 'Cardio', '0766499753', 'olivia.Wairimu@example.com'),
	('Julia Muiruri', 'Pilates', '0764540987', 'julia.Muiruri@example.com'),
	('Michael kamau', 'Martial Arts', '0785346543', 'michael.Kamau@example.com'),
	('Isabella Sang', 'Nutrition', '0784852109', 'isabella.Sang@example.com'),
	('Daniel Kamau', 'Weight Loss', '0768927654', 'daniel.Kamau@example.com'),
	('Camila Mohamed', 'Flexibility', '0725650321', 'camila.Mohamed@example.com');
-- Populating Session table
	INSERT INTO Session (SessionType, SessionDate, SessionTime, Duration, SessionStatus, TrainerID, MemberID)
 VALUES ('Personal Training', '2024-12-01', '10:00:00', 60, 'Scheduled', 1, 6), 
('Group Fitness', '2024-12-02', '14:00:00', 45, 'Scheduled', 2, 7), 
('Yoga', '2024-12-03', '18:30:00', 90, 'Scheduled', 3, 8), 
('Pilates', '2024-12-04', '09:30:00', 75, 'Scheduled', 6, 9),
 ('Martial Arts', '2024-12-05', '19:00:00', 90, 'Scheduled', 7, 10),
 ('Nutrition Consultation', '2024-12-06', '14:00:00', 45, 'Scheduled', 8, 11), 
('Weight Loss Program', '2024-12-07', '11:30:00', 120, 'Scheduled', 9, 12), 

('Flexibility Training', '2024-12-08', '17:00:00', 60, 'Scheduled', 10, 13),
 ('Personal Training', '2024-12-09', '08:00:00', 60, 'Scheduled', 1, 14),
 ('Group Fitness', '2024-12-10', '16:30:00', 45, 'Scheduled', 2, 15),
 ('Yoga', '2024-12-11', '07:00:00', 90, 'Scheduled', 3, 16),

 ('Personal Training', '2024-12-12', '12:00:00', 60, 'Scheduled', 1, 17),
 ('Group Fitness', '2024-12-13', '15:30:00', 45, 'Scheduled', 2, 18),
 ('Pilates', '2024-12-14', '10:00:00', 75, 'Scheduled', 6, 19), 
('Martial Arts', '2024-12-15', '18:30:00', 90, 'Scheduled', 7, 20);
-- Populating Payments Table
INSERT INTO Payments (MemberID, DOB, Amount, PaymentDate, PaymentMethod, PaymentStatus)
VALUES
	(1, '1985-05-15', 20000, '2023-01-15', 'Cash', 'Completed'),
	(2, '1990-09-23', 18000, '2023-02-01', 'Card', 'Completed'),
	(3, '1978-12-07', 30000, '2023-01-25', 'Mpesa', 'Completed'),
	(4, '1992-02-18', 20000, '2023-03-10', 'Card', 'Pending'),
	(5, '1987-06-30', 30000, '2023-03-20', 'Cash', 'Completed'),
	(6, '1995-11-04', 20000, '2023-04-05', 'Mpesa', 'Completed'),
	(7, '1993-08-11', 18000, '2023-04-15', 'Card', 'Completed'),
	(8, '1991-03-22', 30000, '2023-05-10', 'Cash', 'Completed'),
	(9, '1988-07-14', 20000, '2023-05-20', 'Mpesa', 'Completed'),
	(10, '1989-10-28', 18000, '2023-06-01', 'Card', 'Pending'),
	(11, '1996-04-05', 20000, '2023-06-15', 'Mpesa', 'Completed'),
	(12, '1984-12-19', 30000, '2023-07-01', 'Card', 'Completed'),
	(13, '1991-05-27', 20000, '2023-07-20', 'Cash', 'Completed'),
	(14, '1988-02-14', 18000, '2023-08-05', 'Mpesa', 'Completed'),
	(15, '1997-08-09', 20000, '2023-08-15', 'Cash', 'Completed'),
	(16, '1993-06-20', 30000, '2023-09-01', 'Card', 'Completed'),
	(17, '1985-11-12', 20000, '2023-09-10', 'Mpesa', 'Pending'),
	(18, '1988-03-28', 18000, '2023-10-01', 'Card', 'Completed'),
	(19, '1991-09-05', 30000, '2023-10-10', 'Cash', 'Completed'),
	(20, '1994-04-18', 20000, '2023-10-20', 'Mpesa', 'Completed'),
	(21, '1986-12-24', 18000, '2023-11-01', 'Card', 'Completed'),
	(22, '1997-02-14', 20000, '2023-11-10', 'Mpesa', 'Completed'),
	(23, '1990-07-31', 30000, '2023-11-15', 'Cash', 'Pending'),
	(24, '1992-05-09', 20000, '2023-11-20', 'Card', 'Completed');
