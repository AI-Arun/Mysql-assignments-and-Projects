
#creating database-----------
create database KIA;
use KIA;


#creation of table and inserting records in to it-------------
create table Flights
(
Flight_ID INT Primary Key,
Airline_code Varchar(3) not null,
Airline_Name VARCHAR(20)not null,
Origin_Airport VARCHAR(50) not null,
Destination_Airport VARCHAR(50)not null,
Departure_Date_Time DATETIME,
Arrival_Date_Time DATETIME not null,
Terminal_NO int,
Gate VARCHAR(10) not null,
Flight_Status ENUM('Scheduled', 'Departed', 'Arrived', 'Cancelled')
);

select * from Flights;

CREATE TABLE Passengers (
Passenger_ID INT PRIMARY KEY,
First_Name VARCHAR(50) not null,
Last_Name VARCHAR(50),
Passport_No varchar(30),
Booking_Reference VARCHAR(20) unique not null,
Flight_ID INT REFERENCES Flights(Flight_ID),
Seat_Number VARCHAR(10),
Class ENUM('Economy', 'Business', 'First')); 


INSERT INTO Flights (Flight_ID, Airline_Code, Airline_Name, Origin_Airport, Destination_Airport, Departure_Date_Time, Arrival_Date_Time, Terminal_No,Gate, Flight_Status) 
VALUES
(1001, '6E', 'IndiGo','Bengaluru', 'Mumbai', '2024-03-21 08:00:00', '2024-03-21 10:00:00',1, 'A1', 'scheduled'),
(1002, 'SG', 'SpiceJet','Delhi', 'Bengaluru', '2024-03-21 09:00:00', '2024-03-21 11:30:00', 1,'B2', 'Arrived'),
(1003, 'AI','Air India', 'Bengaluru', 'Hyderabad', '2024-03-21 10:30:00', '2024-03-21 12:00:00',1, 'C3', 'Departed'),
(1004, 'G8', 'GoAir', 'Mumbai', 'Bengaluru', '2024-03-21 12:00:00', '2024-03-21 14:00:00', 1,'D4', 'Arrived'),
(1005, '6E', 'IndiGo', 'Bengaluru', 'Chennai', '2024-03-21 14:30:00', '2024-03-21 16:00:00', 1,'E5', 'Cancelled'),
(1006, 'SG', 'SpiceJet', 'Kolkata', 'Bengaluru', '2024-03-21 15:00:00', '2024-03-21 17:30:00',1, 'F6', 'Arrived'),
(1007, 'AI','Air India', 'Bengaluru', 'Pune', '2024-03-21 17:00:00', '2024-03-21 19:00:00', 1,'G7','Departed'),
(1008, 'G8', 'GoAir','Bengaluru', 'Goa', '2024-03-21 18:30:00', '2024-03-21 20:00:00', 1,'H8','Scheduled'),
(1009, '2T','TruJet', 'Chennai', 'Bengaluru', '2024-03-21 20:00:00', '2024-03-21 22:00:00', 1,'I9', 'Arrived'),
(1010, '6E', 'IndiGo', 'Bengaluru', 'Delhi', '2024-03-21 21:30:00', '2024-03-22 00:30:00', 1,'J10', 'Scheduled'),
(1011, 'SG', 'SpiceJet', 'Jaipur', 'Bengaluru', '2024-03-22 08:00:00', '2024-03-22 10:30:00', 1,'A11', 'Scheduled'),
(1012, 'AK','AirAsia India','Bengaluru', 'Kolkata', '2024-03-22 10:30:00', '2024-03-22 12:30:00', 1,'B12', 'Departed'),
(1013, 'G8', 'GoAir', 'Mumbai', 'Bengaluru', '2024-03-22 12:00:00', '2024-03-22 14:00:00', 1,'C13', 'Scheduled'),
(1014, 'UK','Vistara','Bengaluru', 'Ahmedabad', '2024-03-22 14:30:00', '2024-03-22 16:30:00',1, 'D14', 'Scheduled'),
(1015, '6E', 'IndiGo', 'Pune', 'Bengaluru', '2024-03-22 16:00:00', '2024-03-22 18:00:00', 1,'E15', 'Arrived'),
(1016, 'SG', 'SpiceJet', 'Bengaluru', 'Jaipur', '2024-03-22 17:30:00', '2024-03-22 19:30:00',1, 'F16', 'Departed'),
(1017, 'AI','Air India', 'Hyderabad', 'Bengaluru', '2024-03-22 19:00:00', '2024-03-22 21:00:00',1, 'G17', 'Scheduled'),
(1018, 'G8', 'GoAir', 'Bengaluru', 'Varanasi', '2024-03-22 20:30:00', '2024-03-22 23:00:00', 1,'H18', 'Scheduled'),
(1019, 'UK','Vistara', 'Goa', 'Bengaluru', '2024-03-22 22:00:00', '2024-03-23 00:00:00', 1,'I19', 'Departed'),
(1020, '6E', 'IndiGo', 'Bengaluru', 'Guwahati', '2024-03-23 08:30:00', '2024-03-23 11:30:00', 1,'J20', 'Scheduled'),
(1021, 'SG', 'SpiceJet', 'Bengaluru', 'Lucknow', '2024-03-23 10:00:00', '2024-03-23 12:30:00', 1,'A21', 'Cancelled'),
(1022, 'AI','Air India', 'Delhi', 'Bengaluru', '2024-03-23 11:30:00', '2024-03-23 14:00:00', 1,'B22', 'Departed'),
(1023, 'G8', 'GoAir', 'Bengaluru', 'Patna', '2024-03-23 13:00:00', '2024-03-23 15:30:00', 1,'C23', 'Scheduled'),
(1024, 'DN','Air Deccan', 'Mumbai', 'Bengaluru', '2024-03-23 15:30:00', '2024-03-23 17:30:00', 1,'D24', 'Scheduled'),
(1025, '6E', 'IndiGo', 'Bengaluru', 'Chandigarh', '2024-03-23 17:00:00', '2024-03-23 19:30:00', 1,'E25', 'Arrived'),
(1026, 'AI', 'Air India', 'Bengaluru', 'London Heathrow Airport', '2024-03-25 02:00:00', '2024-03-25 09:30:00', 2, 'B45', 'Scheduled'),
(1027, 'EK', 'Emirates', 'Dubai International Airport', 'Bengaluru', '2024-03-24 23:50:00', '2024-03-25 05:15:00', 2, 'A12', 'Departed'),
(1028, 'SG', 'SpiceJet', 'Bengaluru', 'Singapore Changi Airport', '2024-03-26 05:30:00', '2024-03-26 10:45:00', 2, 'C21', 'Arrived'),
(1029, 'EY', 'Etihad Airways', 'Abu Dhabi International Airport', 'Bengaluru', '2024-03-26 01:25:00', '2024-03-26 05:45:00', 2, 'B36', 'Scheduled'),
(1030, 'UA', 'United Airlines', 'Bengaluru', 'Newark Liberty International Airport', '2024-03-26 23:55:00', '2024-03-27 15:40:00', 2, 'D10', 'Departed'),
(1031, 'AI', 'Air India', 'Bengaluru', 'Dubai International Airport', '2024-03-25 11:30:00', '2024-03-25 13:45:00', 2, 'E27', 'Scheduled'),
(1032, 'BA', 'British Airways', 'London Heathrow Airport', 'Bengaluru', '2024-03-25 08:20:00', '2024-03-26 01:40:00', 2, 'F14', 'Arrived'),
(1033, 'EK', 'Emirates', 'Bengaluru', 'New York John F. Kennedy International Airport', '2024-03-26 20:10:00', '2024-03-27 06:35:00', 2, 'G29', 'Departed'),
(1034, 'EY', 'Etihad Airways', 'Bengaluru', 'Abu Dhabi International Airport', '2024-03-27 06:45:00', '2024-03-27 08:55:00', 2, 'I42', 'Departed'),
(1035, 'QR', 'Qatar Airways', 'Doha Hamad International Airport', 'Bengaluru', '2024-03-27 02:55:00', '2024-03-27 08:20:00', 2, 'J37', 'Scheduled'),
(1036, 'AI', 'Air India', 'Bengaluru', 'Singapore Changi Airport', '2024-03-27 09:30:00', '2024-03-27 14:45:00', 2, 'A25', 'Arrived'),
(1037, 'EK', 'Emirates', 'Bengaluru', 'Sydney Kingsford Smith Airport', '2024-03-28 00:40:00', '2024-03-28 16:55:00', 2, 'C12', 'Departed'),
(1038, 'UA', 'United Airlines', 'Los Angeles International Airport', 'Bengaluru', '2024-03-28 18:15:00', '2024-03-29 09:30:00', 2, 'D28', 'Scheduled'),
(1039, 'AI', 'Air India', 'Bengaluru', 'Hong Kong International Airport', '2024-03-29 05:30:00', '2024-03-29 11:45:00', 2, 'E22', 'Scheduled'),
(1040, 'EK', 'Emirates', 'Bengaluru', 'Paris Charles de Gaulle Airport', '2024-03-30 15:20:00', '2024-03-31 01:35:00', 2, 'H11', 'Scheduled'),
(1041, 'BA', 'British Airways', 'Bengaluru', 'London Heathrow Airport', '2024-04-01 07:30:00', '2024-04-01 15:45:00', 2, 'J32', 'Scheduled'),
(1042, 'AI', 'Air India', 'Bengaluru', 'Toronto Pearson International Airport', '2024-04-03 20:30:00', '2024-04-04 07:45:00', 2, 'C28', 'Departed'),
(1043, 'EK', 'Emirates', 'Bengaluru', 'Dubai International Airport', '2024-04-05 05:55:00', '2024-04-05 10:10:00', 2, 'E36', 'Arrived'),
(1044, 'QR', 'Qatar Airways', 'Bengaluru', 'Hamad International Airport', '2024-04-06 09:15:00', '2024-04-06 12:30:00', 2, 'F17', 'Scheduled'),
(1045, 'BA', 'British Airways', 'Heathrow Airport', 'Bengaluru', '2024-04-07 18:45:00', '2024-04-08 07:00:00', 2, 'G24', 'Departed'),
(1046, 'UA', 'United Airlines', 'San Francisco International Airport', 'Bengaluru', '2024-04-10 10:30:00', '2024-04-11 01:45:00', 2, 'J29', 'Scheduled'),
(1047, 'EK', 'Emirates', 'Bengaluru', 'Sydney Kingsford Smith Airport', '2024-04-12 08:20:00', '2024-04-12 21:35:00', 2, 'B27', 'Scheduled'),
(1048, 'QR', 'Qatar Airways', 'Bengaluru', 'Doha Hamad International Airport', '2024-04-13 03:10:00', '2024-04-13 08:25:00', 2, 'C19', 'departed')
; 

select * from Flights;

INSERT INTO Passengers (Passenger_ID, First_Name, Last_Name, Passport_NO, Booking_Reference, Flight_ID, Seat_Number, Class) VALUES
(1, 'Rahul', 'Kumar', 'IN123456', 'BK001', 1001, 'A1', 'Economy'),
(2, 'Priya', 'Patel', 'IN234567', 'BK002', 1002, 'B2', 'Business'),
(3, 'Amit', 'Sharma', 'IN345678', 'BK003', 1003, 'C3', 'First'),
(4, 'Deepika', 'Singh', 'IN456789', 'BK004', 1004, 'D4', 'Economy'),
(5, 'Sandeep', 'Reddy', 'IN567890', 'BK005', 1005, 'E5', 'Economy'),
(6, 'Arun', 'Mishra', 'IN678901', 'BK006', 1006, 'F6', 'Business'),
(7, 'Swati', 'Gupta', 'IN789012', 'BK007', 1007, 'G7', 'Economy'),
(8, 'Vivek', 'Choudhary', 'IN890123', 'BK008', 1008, 'H8', 'Economy'),
(9, 'Aditi', 'Shah', 'IN901234', 'BK009', 1009, 'I9', 'First'),
(10, 'Sachin', 'Yadav', 'IN012345', 'BK010', 1010, 'J10', 'Economy'),
(11, 'Oliver', 'Smith', 'US123456', 'BK011', 1011, 'A11', 'Business'),
(12, 'Sophia', 'Johnson', 'US234567', 'BK012', 1012, 'B12', 'Economy'),
(13, 'Liam', 'Williams', 'US345678', 'BK013', 1013, 'C13', 'Economy'),
(14, 'Emma', 'Brown', 'US456789', 'BK014', 1014, 'D14', 'First'),
(15, 'Noah', 'Jones', 'US567890', 'BK015', 1015, 'E15', 'Economy'),
(16, 'Olivia', 'Davis', 'US678901', 'BK016', 1016, 'F16', 'Business'),
(17, 'William', 'Miller', 'US789012', 'BK017', 1017, 'G17', 'Economy'),
(18, 'Isabella', 'Wilson', 'US890123', 'BK018', 1018, 'H18', 'Economy'),
(19, 'James', 'Taylor', 'US901234', 'BK019', 1019, 'I19', 'First'),
(20, 'Sophia', 'Lee', 'US012345', 'BK020', 1020, 'J20', 'Economy'),
(21, 'Aarav', 'Patel', 'IN123457', 'BK021', 1021, 'A21', 'Economy'),
(22, 'Isha', 'Sharma', 'IN234568', 'BK022', 1022, 'B22', 'Business'),
(23, 'Arjun', 'Singh', 'IN345679', 'BK023', 1023, 'C23', 'First'),
(24, 'Ananya', 'Reddy', 'IN456790', 'BK024', 1024, 'D24', 'Economy'),
(25, 'Vikram', 'Kumar', 'IN567891', 'BK025', 1025, 'E25', 'Economy'),
(26, 'Ella', 'Smith', 'US123457', 'BK026', 1026, 'F26', 'Business'),
(27, 'Mia', 'Johnson', 'US234568', 'BK027', 1027, 'G27', 'Economy'),
(28, 'Liam', 'Williams', 'US345679', 'BK028', 1028, 'H28', 'Economy'),
(29, 'Ethan', 'Brown', 'US456790', 'BK029', 1029, 'I29', 'First'),
(30, 'Ava', 'Jones', 'US567891', 'BK030', 1030, 'J30', 'Economy'),
(31, 'Rahul', 'Kumar', 'IN123458', 'BK031', 1031, 'A31', 'Economy'),
(32, 'Priya', 'Patel', 'IN234569', 'BK032', 1032, 'B32', 'Business'),
(33, 'Amit', 'Sharma', 'IN345680', 'BK033', 1033, 'C33', 'First'),
(34, 'Deepika', 'Singh', 'IN456791', 'BK034', 1034, 'D34', 'Economy'),
(35, 'Sandeep', 'Reddy', 'IN567892', 'BK035', 1035, 'E35', 'Economy'),
(36, 'Arun', 'Mishra', 'IN678903', 'BK036', 1036, 'F36', 'Business'),
(37, 'Swati', 'Gupta', 'IN789014', 'BK037', 1037, 'G37', 'Economy'),
(38, 'Vivek', 'Choudhary', 'IN890125', 'BK038', 1038, 'H38', 'Economy'),
(39, 'Aditi', 'Shah', 'IN901236', 'BK039', 1039, 'I39', 'First'),
(40, 'Sachin', 'Yadav', 'IN012347', 'BK040', 1040, 'J40', 'Economy'),
(41, 'Oliver', 'Smith', 'US123458', 'BK041', 1041, 'A41', 'Business'),
(42, 'Sophia', 'Johnson', 'US234569', 'BK042', 1042, 'B42', 'Economy'),
(43, 'Liam', 'Williams', 'US345680', 'BK043', 1043, 'C43', 'Economy'),
(44, 'Emma', 'Brown', 'US456791', 'BK044', 1044, 'D44', 'First'),
(45, 'Noah', 'Jones', 'US567892', 'BK045', 1045, 'E45', 'Economy'),
(46, 'Olivia', 'Davis', 'US678903', 'BK046', 1046, 'F46', 'Business'),
(47, 'Arun', 'Kumar', 'US789014', 'BK047', 1047,'C12','Economy'),
(48, 'Aarav', 'Patel', 'IN123459', 'BK048', 1001, 'A48', 'Economy'),
(49, 'Isha', 'Sharma', 'IN234570', 'BK049', 1002, 'B49', 'Business'),
(50, 'Arjun', 'Singh', 'IN345681', 'BK050', 1003, 'C50', 'First'),
(51, 'Ananya', 'Reddy', 'IN456792', 'BK051', 1004, 'D51', 'Economy'),
(52, 'Vikram', 'Kumar', 'IN567893', 'BK052', 1005, 'E52', 'Economy'),
(53, 'Ella', 'Smith', 'IN678904', 'BK053', 1006, 'F53', 'Business'),
(54, 'Mia', 'Johnson', 'IN789015', 'BK054', 1007, 'G54', 'Economy'),
(55, 'Liam', 'Williams', 'IN890126', 'BK055', 1008, 'H55', 'Economy'),
(56, 'Ethan', 'Brown', 'IN901237', 'BK056', 1009, 'I56', 'First'),
(57, 'Ava', 'Jones', 'IN012348', 'BK057', 1010, 'J57', 'Economy'),
(58, 'Rahul', 'Kumar', 'IN123460', 'BK058', 1011, 'A58', 'Economy'),
(59, 'Priya', 'Patel', 'IN234571', 'BK059', 1012, 'B59', 'Business'),
(60, 'Amit', 'Sharma', 'IN345682', 'BK060', 1013, 'C60', 'First'),
(61, 'Deepika', 'Singh', 'IN456793', 'BK061', 1014, 'D61', 'Economy'),
(62, 'Sandeep', 'Reddy', 'IN567894', 'BK062', 1015, 'E62', 'Economy'),
(63, 'Arun', 'Mishra', 'IN678905', 'BK063', 1016, 'F63', 'Business'),
(64, 'Swati', 'Gupta', 'IN789016', 'BK064', 1017, 'G64', 'Economy'),
(65, 'Vivek', 'Choudhary', 'IN890127', 'BK065', 1018, 'H65', 'Economy'),
(66, 'Aditi', 'Shah', 'IN901238', 'BK066', 1019, 'I66', 'First'),
(67, 'Sachin', 'Yadav', 'IN012349', 'BK067', 1020, 'J67', 'Economy'),
(68, 'Rahul', 'Kumar', 'IN123461', 'BK068', 1021, 'A68', 'Economy'),
(69, 'Priya', 'Patel', 'IN234572', 'BK069', 1022, 'B69', 'Business'),
(70, 'Amit', 'Sharma', 'IN345683', 'BK070', 1023, 'C70', 'First'),
(71, 'Deepika', 'Singh', 'IN456794', 'BK071', 1024, 'D71', 'Economy'),
(72, 'Sandeep', 'Reddy', 'IN567895', 'BK072', 1025, 'E72', 'Economy'),
(73, 'Arun', 'Mishra', 'IN678906', 'BK073', 1026, 'F73', 'Business'),
(74, 'Swati', 'Gupta', 'IN789017', 'BK074', 1027, 'G74', 'Economy'),
(75, 'Vivek', 'Choudhary', 'IN890128', 'BK075', 1028, 'H75', 'Economy'),
(76, 'Aditi', 'Shah', 'IN901239', 'BK076', 1029, 'I76', 'First'),
(77, 'Sachin', 'Yadav', 'IN012350', 'BK077', 1030, 'J77', 'Economy'),
(78, 'Rahul', 'Kumar', 'IN123462', 'BK078', 1031, 'A78', 'Economy'),
(79, 'Priya', 'Patel', 'IN234573', 'BK079', 1032, 'B79', 'Business'),
(80, 'Amit', 'Sharma', 'IN345684', 'BK080', 1033, 'C80', 'First'),
(81, 'Deepika', 'Singh', 'IN456795', 'BK081', 1034, 'D81', 'Economy'),
(82, 'Sandeep', 'Reddy', 'IN567896', 'BK082', 1035, 'E82', 'Economy'),
(83, 'Arun', 'Mishra', 'IN678907', 'BK083', 1036, 'F83', 'Business'),
(84, 'Swati', 'Gupta', 'IN789018', 'BK084', 1037, 'G84', 'Economy'),
(85, 'Vivek', 'Choudhary', 'IN890129', 'BK085', 1038, 'H85', 'Economy'),
(86, 'Aditi', 'Shah', 'IN901240', 'BK086', 1039, 'I86', 'First'),
(87, 'Sachin', 'Yadav', 'IN012351', 'BK087', 1040, 'J87', 'Economy'),
(88, 'Rahul', 'Kumar', 'IN123463', 'BK088', 1041, 'A88', 'Economy'),
(89, 'Priya', 'Patel', 'IN234574', 'BK089', 1042, 'B89', 'Business'),
(90, 'Amit', 'Sharma', 'IN345685', 'BK090', 1043, 'C90', 'First'),
(91, 'Deepika', 'Singh', 'IN456796', 'BK091', 1044, 'D91', 'Economy'),
(92, 'Sandeep', 'Reddy', 'IN567897', 'BK092', 1045, 'E92', 'Economy'),
(93, 'Arun', 'Mishra', 'IN678908', 'BK093', 1046,'E91','First'),
(94, 'Swati', 'Gupta', 'IN789019', 'BK094', 1047, 'F94', 'Business'),
(95, 'Vivek', 'Choudhary', 'IN890130', 'BK095', 1001, 'G95', 'Economy'),
(96, 'Aditi', 'Shah', 'IN901241', 'BK096', 1002, 'H96', 'First'),
(97, 'Sachin', 'Yadav', 'IN012352', 'BK097', 1003, 'I97', 'Economy'),
(98, 'Rahul', 'Kumar', 'IN123464', 'BK098', 1004, 'J98', 'Economy'),
(99, 'Priya', 'Patel', 'IN234575', 'BK099', 1005, 'A99', 'Business'),
(100, 'Amit', 'Sharma', 'IN345686', 'BK100', 1006, 'B100', 'First'),
(101, 'Deepika', 'Singh', 'IN456797', 'BK101', 1007, 'C101', 'Economy'),
(102, 'Sandeep', 'Reddy', 'IN567898', 'BK102', 1008, 'D102', 'Economy'),
(103, 'Arun', 'Mishra', 'IN678909', 'BK103', 1009, 'E103', 'Business'),
(104, 'Swati', 'Gupta', 'IN789020', 'BK104', 1010, 'F104', 'Economy'),
(105, 'Vivek', 'Choudhary', 'IN890131', 'BK105', 1011, 'G105', 'Economy'),
(106, 'Aditi', 'Shah', 'IN901242', 'BK106', 1012, 'H106', 'First'),
(107, 'Sachin', 'Yadav', 'IN012353', 'BK107', 1013, 'I107', 'Economy'),
(108, 'Rahul', 'Kumar', 'IN123465', 'BK108', 1014, 'J108', 'Economy'),
(109, 'Priya', 'Patel', 'IN234576', 'BK109', 1015, 'A109', 'Business'),
(110, 'Amit', 'Sharma', 'IN345687', 'BK110', 1016, 'B110', 'First'),
(111, 'Deepika', 'Singh', 'IN456798', 'BK111', 1017, 'C111', 'Economy'),
(112, 'Sandeep', 'Reddy', 'IN567899', 'BK112', 1018, 'D112', 'Economy'),
(113, 'Arun', 'Mishra', 'IN678910', 'BK113', 1019, 'E113', 'Business'),
(114, 'Swati', 'Gupta', 'IN789021', 'BK114', 1020, 'F114', 'Economy'),
(115, 'Vivek', 'Choudhary', 'IN890132', 'BK115', 1021, 'G115', 'Economy'),
(116, 'Aditi', 'Shah', 'IN901243', 'BK116', 1022, 'H116', 'First'),
(117, 'Sachin', 'Yadav', 'IN012354', 'BK117', 1023, 'I117', 'Economy'),
(118, 'Rahul', 'Kumar', 'IN123466', 'BK118', 1024, 'J118', 'Economy'),
(119, 'Priya', 'Patel', 'IN234577', 'BK119', 1025, 'A119', 'Business'),
(120, 'Amit', 'Sharma', 'IN345688', 'BK120', 1026, 'B120', 'First'),
(121, 'Deepika', 'Singh', 'IN456799', 'BK121', 1027, 'C121', 'Economy'),
(122, 'Sandeep', 'Reddy', 'IN567900', 'BK122', 1028, 'D122', 'Economy'),
(123, 'Arun', 'Mishra', 'IN678911', 'BK123', 1029, 'E123', 'Business'),
(124, 'Swati', 'Gupta', 'IN789022', 'BK124', 1030, 'F124', 'Economy'),
(125, 'Vivek', 'Choudhary', 'IN890133', 'BK125', 1031, 'G125', 'Economy'),
(126, 'Aditi', 'Shah', 'IN901244', 'BK126', 1032, 'H126', 'First'),
(127, 'Sachin', 'Yadav', 'IN012355', 'BK127', 1033, 'I127', 'Economy'),
(128, 'Rahul', 'Kumar', 'IN123467', 'BK128', 1034, 'J128', 'Economy'),
(129, 'Priya', 'Patel', 'IN234578', 'BK129', 1035, 'A129', 'Business'),
(130, 'Amit', 'Sharma', 'IN345689', 'BK130', 1036, 'B130', 'First'),
(131, 'Deepika', 'Singh', 'IN456800', 'BK131', 1037, 'C131', 'Economy'),
(132, 'Sandeep', 'Reddy', 'IN567901', 'BK132', 1038, 'D132', 'Economy'),
(133, 'Arun', 'Mishra', 'IN678912', 'BK133', 1039, 'E133', 'Business'),
(134, 'Swati', 'Gupta', 'IN789023', 'BK134', 1040, 'F134', 'Economy'),
(135, 'Vivek', 'Choudhary', 'IN890134', 'BK135', 1041, 'G135', 'Economy'),
(136, 'Aditi', 'Shah', 'IN901245', 'BK136', 1042, 'H136', 'First'),
(137, 'Sachin', 'Yadav', 'IN012356', 'BK137', 1043, 'I137', 'Economy'),
(138, 'Rahul', 'Kumar', 'IN123468', 'BK138', 1044, 'J138', 'Economy'),
(139, 'Priya', 'Patel', 'IN234579', 'BK139', 1045, 'A139', 'Business'),
(140, 'Amit', 'Sharma', 'IN345690', 'BK140', 1046, 'B140', 'First'),
(141, 'Deepika', 'Singh', 'IN456801', 'BK141', 1047, 'C141', 'Economy'),
(142, 'Sandeep', 'Reddy', 'IN567902', 'BK142', 1001, 'D142', 'Economy'),
(143, 'Arun', 'Mishra', 'IN678913', 'BK143', 1002, 'E143', 'Business'),
(144, 'Swati', 'Gupta', 'IN789024', 'BK144', 1003, 'F144', 'Economy'),
(145, 'Vivek', 'Choudhary', 'IN890135', 'BK145', 1004, 'G145', 'Economy'),
(146, 'Aditi', 'Shah', 'IN901246', 'BK146', 1005, 'H146', 'First'),
(147, 'Sachin', 'Yadav', 'IN012357', 'BK147', 1006, 'I147', 'Economy'),
(148, 'Rahul', 'Kumar', 'IN123469', 'BK148', 1007, 'J148', 'Economy'),
(149, 'Priya', 'Patel', 'IN234580', 'BK149', 1008, 'A149', 'Business'),
(150, 'Amit', 'Sharma', 'IN345691', 'BK150', 1009, 'B150', 'First'),
(151, 'Deepika', 'Singh', 'IN456802', 'BK151', 1010, 'C151', 'Economy'),
(152, 'Sandeep', 'Reddy', 'IN567903', 'BK152', 1011, 'D152', 'Economy'),
(153, 'Arun', 'Mishra', 'IN678914', 'BK153', 1012, 'E153', 'Business'),
(154, 'Swati', 'Gupta', 'IN789025', 'BK154', 1013, 'F154', 'Economy'),
(155, 'Vivek', 'Choudhary', 'IN890136', 'BK155', 1014, 'G155', 'Economy'),
(156, 'Aditi', 'Shah', 'IN901247', 'BK156', 1015, 'H156', 'First'),
(157, 'Sachin', 'Yadav', 'IN012358', 'BK157', 1016, 'I157', 'Economy'),
(158, 'Rahul', 'Kumar', 'IN123470', 'BK158', 1017, 'J158', 'Economy'),
(159, 'Priya', 'Patel', 'IN234581', 'BK159', 1018, 'A159', 'Business'),
(160, 'Amit', 'Sharma', 'IN345692', 'BK160', 1019, 'B160', 'First'),
(161, 'Deepika', 'Singh', 'IN456803', 'BK161', 1020, 'C161', 'Economy'),
(162, 'Sandeep', 'Reddy', 'IN567904', 'BK162', 1021, 'D162', 'Economy'),
(163, 'Arun', 'Mishra', 'IN678915', 'BK163', 1022, 'E163', 'Business'),
(164, 'Swati', 'Gupta', 'IN789026', 'BK164', 1023, 'F164', 'Economy'),
(165, 'Vivek', 'Choudhary', 'IN890137', 'BK165', 1024, 'G165', 'Economy'),
(166, 'Aditi', 'Shah', 'IN901248', 'BK166', 1025, 'H166', 'First'),
(167, 'Sachin', 'Yadav', 'IN012359', 'BK167', 1026, 'I167', 'Economy'),
(168, 'Rahul', 'Kumar', 'IN123471', 'BK168', 1027, 'J168', 'Economy'),
(169, 'Priya', 'Patel', 'IN234582', 'BK169', 1028, 'A169', 'Business'),
(170, 'Amit', 'Sharma', 'IN345693', 'BK170', 1029, 'B170', 'First'),
(171, 'Deepika', 'Singh', 'IN456804', 'BK171', 1030, 'C171', 'Economy'),
(172, 'Sandeep', 'Reddy', 'IN567905', 'BK172', 1031, 'D172', 'Economy'),
(173, 'Arun', 'Mishra', 'IN678916', 'BK173', 1032, 'E173', 'Business'),
(174, 'Swati', 'Gupta', 'IN789027', 'BK174', 1033, 'F174', 'Economy'),
(175, 'Vivek', 'Choudhary', 'IN890138', 'BK175', 1034, 'G175', 'Economy'),
(176, 'Aditi', 'Shah', 'IN901249', 'BK176', 1035, 'H176', 'First'),
(177, 'Sachin', 'Yadav', 'IN012360', 'BK177', 1036, 'I177', 'Economy'),
(178, 'Rahul', 'Kumar', 'IN123472', 'BK178', 1037, 'J178', 'Economy'),
(179, 'Priya', 'Patel', 'IN234583', 'BK179', 1038, 'A179', 'Business'),
(180, 'Amit', 'Sharma', 'IN345694', 'BK180', 1039, 'B180', 'First'),
(181, 'Deepika', 'Singh', 'IN456805', 'BK181', 1040, 'C181', 'Economy'),
(182, 'Sandeep', 'Reddy', 'IN567906', 'BK182', 1041, 'D182', 'Economy'),
(183, 'Arun', 'Mishra', 'IN678917', 'BK183', 1042, 'E183', 'Business'),
(184, 'Swati', 'Gupta', 'IN789028', 'BK184', 1043, 'F184', 'Economy'),
(185, 'Vivek', 'Choudhary', 'IN890139', 'BK185', 1044, 'G185', 'Economy'),
(186, 'Aditi', 'Shah', 'IN901250', 'BK186', 1045, 'H186', 'First'),
(187, 'Sachin', 'Yadav', 'IN012361', 'BK187', 1046, 'I187', 'Economy'),
(188, 'Rahul', 'Kumar', 'IN123473', 'BK188', 1047, 'J188', 'Economy'),
(189, 'Priya', 'Patel', 'IN234584', 'BK189', 1001, 'A189', 'Business'),
(190, 'Amit', 'Sharma', 'IN345695', 'BK190', 1002, 'B190', 'First'),
(191, 'Deepika', 'Singh', 'IN456806', 'BK191', 1003, 'C191', 'Economy'),
(192, 'Sandeep', 'Reddy', 'IN567907', 'BK192', 1004, 'D192', 'Economy'),
(193, 'Arun', 'Mishra', 'IN678918', 'BK193', 1005, 'E193', 'Business'),
(194, 'Swati', 'Gupta', 'IN789029', 'BK194', 1006, 'F194', 'Economy'),
(195, 'Vivek', 'Choudhary', 'IN890140', 'BK195', 1007, 'G195', 'Economy'),
(196, 'Aditi', 'Shah', 'IN901251', 'BK196', 1008, 'H196', 'First'),
(197, 'Sachin', 'Yadav', 'IN012362', 'BK197', 1009, 'I197', 'Economy'),
(198, 'Rahul', 'Kumar', 'IN123474', 'BK198', 1010, 'J198', 'Economy'),
(199, 'Priya', 'Patel', 'IN234585', 'BK199', 1011, 'A199', 'Business'),
(200, 'Amit', 'Sharma', 'IN345696', 'BK200', 1012, 'B200', 'First'),
(201, 'Deepika', 'Singh', 'IN456807', 'BK201', 1013, 'C201', 'Economy'),
(202, 'Sandeep', 'Reddy', 'IN567908', 'BK202', 1014, 'D202', 'Economy'),
(203, 'Arun', 'Mishra', 'IN678919', 'BK203', 1015, 'E203', 'Business'),
(204, 'Swati', 'Gupta', 'IN789030', 'BK204', 1016, 'F204', 'Economy'),
(205, 'Vivek', 'Choudhary', 'IN890141', 'BK205', 1017, 'G205', 'Economy'),
(206, 'Aditi', 'Shah', 'IN901252', 'BK206', 1018, 'H206', 'First'),
(207, 'Sachin', 'Yadav', 'IN012363', 'BK207', 1019, 'I207', 'Economy'),
(208, 'Rahul', 'Kumar', 'IN123475', 'BK208', 1020, 'J208', 'Economy'),
(209, 'Priya', 'Patel', 'IN234586', 'BK209', 1021, 'A209', 'Business'),
(210, 'Amit', 'Sharma', 'IN345697', 'BK210', 1022, 'B210', 'First'),
(211, 'Deepika', 'Singh', 'IN456808', 'BK211', 1023, 'C211', 'Economy'),
(212, 'Sandeep', 'Reddy', 'IN567909', 'BK212', 1024, 'D212', 'Economy'),
(213, 'Arun', 'Mishra', 'IN678920', 'BK213', 1025, 'E213', 'Business'),
(214, 'Swati', 'Gupta', 'IN789031', 'BK214', 1026, 'F214', 'Economy'),
(215, 'Vivek', 'Choudhary', 'IN890142', 'BK215', 1027, 'G215', 'Economy'),
(216, 'Aditi', 'Shah', 'IN901253', 'BK216', 1028, 'H216', 'First'),
(217, 'Sachin', 'Yadav', 'IN012364', 'BK217', 1029, 'I217', 'Economy'),
(218, 'Rahul', 'Kumar', 'IN123476', 'BK218', 1030, 'J218', 'Economy'),
(219, 'Priya', 'Patel', 'IN234587','BK219', 1031, 'A219', 'Business'),
(220, 'Amit', 'Sharma', 'IN345698', 'BK220', 1032, 'B220', 'First'),
(221, 'Deepika', 'Singh', 'IN456809', 'BK221', 1033, 'C221', 'Economy'),
(222, 'Sandeep', 'Reddy', 'IN567910', 'BK222', 1034, 'D222', 'Economy'),
(223, 'Arun', 'Mishra', 'IN678921', 'BK223', 1035, 'E223', 'Business'),
(224, 'Swati', 'Gupta', 'IN789032', 'BK224', 1036, 'F224', 'Economy'),
(225, 'Vivek', 'Choudhary', 'IN890143', 'BK225', 1037, 'G225', 'Economy'),
(226, 'Aditi', 'Shah', 'IN901254', 'BK226', 1038, 'H226', 'First'),
(227, 'Sachin', 'Yadav', 'IN012365', 'BK227', 1039, 'I227', 'Economy'),
(228, 'Rahul', 'Kumar', 'IN123477', 'BK228', 1040, 'J228', 'Economy'),
(229, 'Priya', 'Patel', 'IN234588', 'BK229', 1041, 'A229', 'Business'),
(230, 'Amit', 'Sharma', 'IN345699', 'BK230', 1042, 'B230', 'First'),
(231, 'Deepika', 'Singh', 'IN456810', 'BK231', 1043, 'C231', 'Economy'),
(232, 'Sandeep', 'Reddy', 'IN567911', 'BK232', 1044, 'D232', 'Economy'),
(233, 'Arun', 'Mishra', 'IN678922', 'BK233', 1045, 'E233', 'Business'),
(234, 'Swati', 'Gupta', 'IN789033', 'BK234', 1046, 'F234', 'Economy'),
(235, 'Vivek', 'Choudhary', 'IN890144', 'BK235', 1047, 'G235', 'Economy'),
(236, 'Aditi', 'Shah', 'IN901255', 'BK236', 1001, 'H236', 'First'),
(237, 'Sachin', 'Yadav', 'IN012366', 'BK237', 1002, 'I237', 'Economy'),
(238, 'Rahul', 'Kumar', 'IN123478', 'BK238', 1003, 'J238', 'Economy'),
(239, 'Priya', 'Patel', 'IN234589', 'BK239', 1004, 'A239', 'Business'),
(240, 'Amit', 'Sharma', 'IN345700', 'BK240', 1005, 'B240', 'First'),
(241, 'Deepika', 'Singh', 'IN456811', 'BK241', 1006, 'C241', 'Economy'),
(242, 'Sandeep', 'Reddy', 'IN567912', 'BK242', 1007, 'D242', 'Economy'),
(243, 'Arun', 'Mishra', 'IN678923', 'BK243', 1008, 'E243', 'Business'),
(244, 'Swati', 'Gupta', 'IN789034', 'BK244', 1009, 'F244', 'Economy'),
(245, 'Vivek', 'Choudhary', 'IN890145', 'BK245', 1010, 'G245', 'Economy'),
(246, 'Aditi', 'Shah', 'IN901256', 'BK246', 1011, 'H246', 'First'),
(247, 'Sachin', 'Yadav', 'IN012367', 'BK247', 1012, 'I247', 'Economy'),
(248, 'Rahul', 'Kumar', 'IN123479', 'BK248', 1013, 'J248', 'Economy'),
(249, 'Priya', 'Patel', 'IN234590', 'BK249', 1014, 'A249', 'Business'),
(250, 'Amit', 'Sharma', 'IN345701', 'BK250', 1015, 'B250', 'First'),
(251, 'Deepika', 'Singh', 'IN456812', 'BK251', 1016, 'C251', 'Economy'),
(252, 'Sandeep', 'Reddy', 'IN567913', 'BK252', 1017, 'D252', 'Economy'),
(253, 'Arun', 'Mishra', 'IN678924', 'BK253', 1018, 'E253', 'Business'),
(254, 'Swati', 'Gupta', 'IN789035', 'BK254', 1019, 'F254', 'Economy'),
(255, 'Vivek', 'Choudhary', 'IN890146', 'BK255', 1020, 'G255', 'Economy'),
(256, 'Aditi', 'Shah', 'IN901257', 'BK256', 1021, 'H256', 'First'),
(257, 'Sachin', 'Yadav', 'IN012368', 'BK257', 1022, 'I257', 'Economy'),
(258, 'Rahul', 'Kumar', 'IN123480', 'BK258', 1023, 'J258', 'Economy'),
(259, 'Priya', 'Patel', 'IN234591', 'BK259', 1024, 'A259', 'Business'),
(260, 'Amit', 'Sharma', 'IN345702', 'BK260', 1025, 'B260', 'First'),
(261, 'Deepika', 'Singh', 'IN456813', 'BK261', 1026, 'C261', 'Economy'),
(262, 'Sandeep', 'Reddy', 'IN567914', 'BK262', 1027, 'D262', 'Economy'),
(263, 'Arun', 'Mishra', 'IN678925', 'BK263', 1028, 'E263', 'Business'),
(264, 'Swati', 'Gupta', 'IN789036', 'BK264', 1029, 'F264', 'Economy'),
(265, 'Vivek', 'Choudhary', 'IN890147', 'BK265', 1030, 'G265', 'Economy'),
(266, 'Aditi', 'Shah', 'IN901258', 'BK266', 1031, 'H266', 'First'),
(267, 'Sachin', 'Yadav', 'IN012369', 'BK267', 1032, 'I267', 'Economy'),
(268, 'Rahul', 'Kumar', 'IN123481', 'BK268', 1033, 'J268', 'Economy'),
(269, 'Priya', 'Patel', 'IN234592', 'BK269', 1034, 'A269', 'Business'),
(270, 'Amit', 'Sharma', 'IN345703', 'BK270', 1035, 'B270', 'First'),
(271, 'Deepika', 'Singh', 'IN456814', 'BK271', 1036, 'C271', 'Economy'),
(272, 'Sandeep', 'Reddy', 'IN567915', 'BK272', 1037, 'D272', 'Economy'),
(273, 'Arun', 'Mishra', 'IN678926', 'BK273', 1038, 'E273', 'Business'),
(274, 'Swati', 'Gupta', 'IN789037', 'BK274', 1039, 'F274', 'Economy'),
(275, 'Vivek', 'Choudhary', 'IN890148', 'BK275', 1040, 'G275', 'Economy'),
(276, 'Aditi', 'Shah', 'IN901259', 'BK276', 1041, 'H276', 'First'),
(277, 'Sachin', 'Yadav', 'IN012370', 'BK277', 1042, 'I277', 'Economy'),
(278, 'Rahul', 'Kumar', 'IN123482', 'BK278', 1043, 'J278', 'Economy'),
(279, 'Priya', 'Patel', 'IN234593', 'BK279', 1044, 'A279', 'Business'),
(280, 'Amit', 'Sharma', 'IN345704', 'BK280', 1045, 'B280', 'First'),
(281, 'Deepika', 'Singh', 'IN456815', 'BK281', 1046, 'C281', 'Economy'),
(282, 'Sandeep', 'Reddy', 'IN567916', 'BK282', 1047, 'D282', 'Economy'),
(283, 'Arun', 'Mishra', 'IN678927', 'BK283', 1001, 'E283', 'Business'),
(284, 'Swati', 'Gupta', 'IN789038', 'BK284', 1002, 'F284', 'Economy'),
(285, 'Vivek', 'Choudhary', 'IN890149', 'BK285', 1003, 'G285', 'Economy'),
(286, 'Aditi', 'Shah', 'IN901260', 'BK286', 1004, 'H286', 'First'),
(287, 'Sachin', 'Yadav', 'IN012371', 'BK287', 1005, 'I287', 'Economy'),
(288, 'Rahul', 'Kumar', 'IN123483', 'BK288', 1006, 'J288', 'Economy'),
(289, 'Priya', 'Patel', 'IN234594', 'BK289', 1007, 'A289', 'Business'),
(290, 'Amit', 'Sharma', 'IN345705', 'BK290', 1008, 'B290', 'First'),
(291, 'Deepika', 'Singh', 'IN456816', 'BK291', 1009, 'C291', 'Economy'),
(292, 'Sandeep', 'Reddy', 'IN567917', 'BK292', 1010, 'D292', 'Economy'),
(293, 'Arun', 'Mishra', 'IN678928', 'BK293', 1011, 'E293', 'Business'),
(294, 'Swati', 'Gupta', 'IN789039', 'BK294', 1012, 'F294', 'Economy'),
(295, 'Vivek', 'Choudhary', 'IN890150', 'BK295', 1013, 'G295', 'Economy'),
(296, 'Aditi', 'Shah', 'IN901261', 'BK296', 1014, 'H296', 'First'),
(297, 'Sachin', 'Yadav', 'IN012372', 'BK297', 1015, 'I297', 'Economy'),
(298, 'Rahul', 'Kumar', 'IN123484', 'BK298', 1016, 'J298', 'Economy'),
(299, 'Priya', 'Patel', 'IN234595', 'BK299', 1017, 'A299', 'Business'),
(300, 'Amit', 'Sharma', 'IN345706', 'BK300', 1018, 'B300', 'First'),
(301, 'Deepika', 'Singh', 'IN456817', 'BK301', 1019, 'C301', 'Economy');

select * from Passengers;

CREATE TABLE Baggage (
    Baggage_ID INT PRIMARY KEY AUTO_INCREMENT,
    Passenger_ID INT,
    Flight_ID INT,
    Baggage_KG DECIMAL(5,2)
);


INSERT INTO Baggage (Passenger_ID, Flight_ID, Baggage_KG) VALUES
(1, 1001, 12.5),
(2, 1002, 14.2),
(3, 1003, 11.8),
(4, 1004, 13.7),
(5, 1005, 10.5),
(6, 1006, 12.0),
(7, 1007, 13.2),
(8, 1008, 11.5),
(9, 1009, 14.8),
(10, 1010, 12.3),
(11, 1011, 11.0),
(12, 1012, 13.9),
(13, 1013, 10.2),
(14, 1014, 12.7),
(15, 1015, 14.5),
(16, 1016, 13.0),
(17, 1017, 12.8),
(18, 1018, 11.3),
(19, 1019, 14.2),
(20, 1020, 12.6),
(21, 1021, 11.9),
(22, 1022, 10.8),
(23, 1023, 13.6),
(24, 1024, 14.4),
(25, 1025, 12.1),
(26, 1026, 11.4),
(27, 1027, 13.3),
(28, 1028, 14.1),
(29, 1029, 12.9),
(30, 1030, 13.5),
(31, 1031, 12.4),
(32, 1032, 11.7),
(33, 1033, 14.7),
(34, 1034, 12.2),
(35, 1035, 10.9),
(36, 1036, 13.8),
(37, 1037, 14.6),
(38, 1038, 12.7),
(39, 1039, 11.2),
(40, 1040, 13.4),
(41, 1041, 14.9),
(42, 1042, 12.0),
(43, 1043, 11.1),
(44, 1044, 10.7),
(45, 1045, 13.1),
(46, 1046, 14.3),
(47, 1047, 12.5),
(48, 1048, 11.6);

select * from baggage;

CREATE TABLE Staff (
    StaffID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Flight_ID INT,
    Designation VARCHAR(50)
);


INSERT INTO Staff (StaffID, FirstName, LastName, Flight_ID, Designation) VALUES
(10001, 'Rajesh', 'Patel', 1001, 'Pilot'),
(10002, 'Amit', 'Sharma', 1002, 'Flight Attendant'),
(10003, 'Sandeep', 'Singh', 1003, 'Mechanic'),
(10004, 'Sunita', 'Das', 1004, 'Cabin Crew'),
(10005, 'Priya', 'Gupta', 1005, 'Pilot'),
(10006, 'Neha', 'Khan', 1006, 'Flight Attendant'),
(10007, 'Anil', 'Reddy', 1007, 'Mechanic'),
(10008, 'Rahul', 'Kumar', 1008, 'Cabin Crew'),
(10009, 'Ajay', 'Mishra', 1009, 'Pilot'),
(10010, 'Manish', 'Chopra', 1010, 'Flight Attendant'),
(10011, 'Kavita', 'Patil', 1011, 'Mechanic'),
(10012, 'Deepak', 'Shah', 1012, 'Cabin Crew'),
(10013, 'Ashok', 'Verma', 1013, 'Pilot'),
(10014, 'Anjali', 'Naidu', 1014, 'Flight Attendant'),
(10015, 'Arun', 'Dutta', 1015, 'Mechanic'),
(10016, 'Pooja', 'Banerjee', 1016, 'Cabin Crew'),
(10017, 'Sanjay', 'Joshi', 1017, 'Pilot'),
(10018, 'Meera', 'Patel', 1018, 'Flight Attendant'),
(10019, 'Ramesh', 'Singh', 1019, 'Mechanic'),
(10020, 'Seema', 'Rao', 1020, 'Cabin Crew'),
(10021, 'Vikram', 'Desai', 1021, 'Pilot'),
(10022, 'Ritu', 'Sharma', 1022, 'Flight Attendant'),
(10023, 'Hari', 'Menon', 1023, 'Mechanic'),
(10024, 'Mala', 'Iyer', 1024, 'Cabin Crew'),
(10025, 'Avinash', 'Kulkarni', 1025, 'Pilot'),
(10026, 'Shanti', 'Narayan', 1026, 'Flight Attendant'),
(10027, 'Anand', 'Kumar', 1027, 'Mechanic'),
(10028, 'Sarita', 'Shetty', 1028, 'Cabin Crew'),
(10029, 'Prakash', 'Gowda', 1029, 'Pilot'),
(10030, 'Komal', 'Mehra', 1030, 'Flight Attendant'),
(10031, 'Nisha', 'Rai', 1031, 'Mechanic'),
(10032, 'Vivek', 'Nair', 1032, 'Cabin Crew'),
(10033, 'Anita', 'Dewan', 1033, 'Pilot'),
(10034, 'Dinesh', 'Khanna', 1034, 'Flight Attendant'),
(10035, 'Sarika', 'Jain', 1035, 'Mechanic'),
(10036, 'Gaurav', 'Malhotra', 1036, 'Cabin Crew'),
(10037, 'Preeti', 'Chauhan', 1037, 'Pilot'),
(10038, 'Manoj', 'Shah', 1038, 'Flight Attendant'),
(10039, 'Rajni', 'Kapoor', 1039, 'Mechanic'),
(10040, 'Neha', 'Rajput', 1040, 'Cabin Crew'),
(10041, 'Sunil', 'Gandhi', 1041, 'Pilot'),
(10042, 'Tanvi', 'Desai', 1042, 'Flight Attendant'),
(10043, 'Rohit', 'Mehta', 1043, 'Mechanic'),
(10044, 'Pallavi', 'Sharma', 1044, 'Cabin Crew'),
(10045, 'Suresh', 'Patil', 1045, 'Pilot'),
(10046, 'Ananya', 'Nair', 1046, 'Flight Attendant'),
(10047, 'Raj', 'Kumar', 1047, 'Mechanic'),
(10048, 'Kritika', 'Chopra', 1048, 'Cabin Crew'),
(10049, 'Liam', 'Smith', 1001, 'Pilot'),
(10050, 'Olivia', 'Johnson', 1002, 'Flight Attendant'),
(10051, 'James', 'Williams', 1003, 'Mechanic'),
(10052, 'Emma', 'Brown', 1004, 'Cabin Crew'),
(10053, 'Noah', 'Jones', 1005, 'Pilot'),
(10054, 'Sophia', 'Miller', 1006, 'Flight Attendant'),
(10055, 'William', 'Davis', 1007, 'Mechanic'),
(10056, 'Isabella', 'Wilson', 1008, 'Cabin Crew'),
(10057, 'Benjamin', 'Moore', 1009, 'Pilot'),
(10058, 'Mia', 'Taylor', 1010, 'Flight Attendant'),
(10059, 'Ethan', 'Anderson', 1011, 'Mechanic'),
(10060, 'Charlotte', 'Thomas', 1012, 'Cabin Crew'),
(10061, 'Aditya', 'Sharma', 1013, 'Pilot'),
(10062, 'Ishaan', 'Patel', 1014, 'Flight Attendant'),
(10063, 'Aarav', 'Singh', 1015, 'Mechanic'),
(10064, 'Avani', 'Reddy', 1016, 'Cabin Crew'),
(10065, 'Sophie', 'Johnson', 1017, 'Pilot'),
(10066, 'Lucas', 'Wilson', 1018, 'Flight Attendant'),
(10067, 'Aiden', 'Anderson', 1019, 'Mechanic'),
(10068, 'Grace', 'Moore',10120, 'Cabin Crew'),
(10069, 'Aarav', 'Khatri', 1020, 'Pilot'),
(10070, 'Kiara', 'Srivastava', 1021, 'Flight Attendant'),
(10071, 'Rohan', 'Malhotra', 1022, 'Mechanic'),
(10072, 'Neha', 'Iyer', 1023, 'Cabin Crew'),
(10073, 'Zachary', 'Chen', 1024, 'Pilot'),
(10074, 'Madison', 'Wong', 1025, 'Flight Attendant'),
(10075, 'Elijah', 'Kim', 1026, 'Mechanic'),
(10076, 'Ava', 'Park', 1027, 'Cabin Crew'),
(10077, 'Mason', 'Nguyen', 1028, 'Pilot'),
(10078, 'Harper', 'Tran', 1029, 'Flight Attendant'),
(10079, 'Logan', 'Le', 1030, 'Mechanic'),
(10080, 'Aria', 'Pham', 1031, 'Cabin Crew'),
(10081, 'Carter', 'Nguyen', 1032, 'Pilot'),
(10082, 'Scarlett', 'Vo', 1033, 'Flight Attendant'),
(10083, 'Jackson', 'Huynh', 1034, 'Mechanic'),
(10084, 'Ella', 'Do', 1035, 'Cabin Crew'),
(10085, 'Sebastian', 'Tran', 1036, 'Pilot'),
(10086, 'Luna', 'Ho', 1037, 'Flight Attendant'),
(10087, 'Gabriel', 'Ngo', 1038, 'Mechanic'),
(10088, 'Chloe', 'Truong', 1039, 'Cabin Crew'),
(10089, 'Jack', 'Le', 1040, 'Pilot'),
(10090, 'Hannah', 'Dinh', 1041, 'Flight Attendant'),
(10091, 'Wyatt', 'Phan', 1042, 'Mechanic'),
(10092, 'Lily', 'Bui', 1043, 'Cabin Crew'),
(10093, 'Owen', 'Vo', 1044, 'Pilot'),
(10094, 'Zoe', 'Luong', 1045, 'Flight Attendant'),
(10095, 'Grayson', 'Nguyen', 1046, 'Mechanic'),
(10096, 'Penelope', 'Tran', 1047, 'Cabin Crew'),
(10097, 'Levi', 'Ngo', 1048, 'Pilot');



#Data Modification Queries:-

#Inserting new flight records into the Flights table-------1
INSERT INTO Flights 
VALUES (1049, 'AN', 'Arun Airlines', 'Bengaluru', 'Delhi', '2024-03-25 08:00:00', '2024-03-25 10:30:00', 2, 'A1', 'Scheduled');

#Updating flight details such as departure time, arrival time, gate, etc.------2
UPDATE Flights
SET Departure_Date_Time = '2024-03-25 08:30:00', Arrival_Date_Time = '2024-03-25 11:00:00', Gate = 'B3'
WHERE Flight_ID = 1001;

#Canceling a scheduled flight by updating its status to "Cancelled"--------3
UPDATE Flights
SET Flight_Status = 'Cancelled'
WHERE Flight_ID = 1023;

#Sorting flights by departure time ---------4
SELECT * FROM Flights ORDER BY Departure_Date_Time DESC;


#Basic Queries:-

# Retrieving all flights departing from Bengaluru.-----5
select * from flights where Origin_Airport = 'bengaluru' and Flight_Status = 'departed';

#Finding all flights arrived in Bengaluru-----------6
select * from flights where Destination_Airport = 'bengaluru' and Flight_Status = 'Arrived';

#Geting the details of a specific flight by its Flight_ID-------7
select * from flights where flight_ID = 1043;

#List all flights operated by a Vistatra airline.--------8
Select * from flights where Airline_Name = 'vistara';


#Aggregated Queries:-

#Calculating the total number of flights departing from Bengaluru each day:-------9
SELECT DATE(Departure_Date_Time) AS Departure_Date, COUNT(*) AS Total_Flights
FROM Flights
WHERE Origin_Airport = 'Bengaluru'
GROUP BY DATE(Departure_Date_Time);

#Finding the busiest time of day for flights at Bengaluru airport:------10
SELECT HOUR(Departure_Date_Time) AS Hour_of_Day, COUNT(*) AS Flights_Count
FROM Flights
WHERE Origin_Airport = 'Bengaluru'
GROUP BY HOUR(Departure_Date_Time)
ORDER BY Flights_Count DESC
LIMIT 1;

#Geting the count of flights for each airline operating at Bengaluru airport from highest to lowest:-----11
SELECT Airline_Name, COUNT(*) AS Flights_Count
FROM Flights
WHERE Origin_Airport = 'Bengaluru'
GROUP BY Airline_Name
order by Flights_Count desc;


#Join Queries:-

#selcting flights table and passengers table using inner join----------12
select F.Airline_Name,F.Flight_status,P.passenger_id,P.first_name,P.Seat_number,P.class 
From Flights F inner join Passengers P on F.Flight_id = P.Flight_id;


#Filtering and Sorting Queries:-

#List passengers traveling in a specific flight (filter by Flight_ID)---------13
select * from Passengers where Flight_ID = 1022;

#Sort passengers alphabetically by their last names.----------------14
select * from Passengers order by Last_name asc;

#Find passengers who booked a seat in a specific class (Economy, Business, First).----15
select * from passengers where class = 'First';


#Basic Queries:-

#Retrieve all passenger details.------------16
select * from Passengers;

#Find passengers with a specific Passenger_ID.----------17
select * from Passengers where passenger_id = 58;

#Get the passenger details associated with a particular Booking_Reference.-------18
select * from Passengers where Booking_Reference = 'BK248';


#Join Queries:-

#Joining the Passengers table with the Flights table to get details about passengers' flights.---19
SELECT Passengers.*, Flights.*
FROM Passengers
inner JOIN Flights ON Passengers.Flight_ID = Flights.Flight_ID;


#Data Modification Queries:-

#Insert new passenger records into the Passengers table.-----------20
INSERT INTO Passengers (Passenger_ID, First_Name, Last_Name, Passport_No, Booking_Reference, Flight_ID, Seat_Number, Class)
VALUES (302, 'John', 'Doe', 'ABC123456', 'ABC123', 1234, 'A12', 'Economy');

#Update passenger details such as seat number or class.-------21
UPDATE Passengers
SET Seat_Number = 'B25', Class = 'Business'
WHERE Passenger_ID = 302;

#Delete passenger records based on specific criteria.-------22
DELETE FROM Passengers
WHERE Flight_ID = 1234 AND Class = 'Business';


#Aggregated Queries:-

#Count the total number of passengers.-------------23
select count(*) as total_passengers from passengers ;

#Calculate the average number of passengers per flight.----------24
SELECT AVG(passenger_count) AS Average_Passengers_Per_Flight 
FROM (SELECT Flight_ID, COUNT(*) AS passenger_count FROM Passengers GROUP BY Flight_ID ) AS passengers_per_flight;

#Determine the number of passengers in each class (Economy, Business, First).-----------25
select class, count(*) from passengers group by class;


#Statistical Queries:-

#Calculate the percentage of passengers traveling in each class.-----------26
SELECT Class, COUNT(*) AS Passenger_Count,(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Passengers)) AS Percentage
FROM Passengers GROUP BY Class;


#Basic Queries:-

#Retrieve all baggage details.--------27
select * from baggage;

#Find baggage associated with a specific Baggage_ID.------------28
select * from baggage where baggage_id = 16;

#Get baggage details associated with a particular Passenger_ID or Flight_ID.-------29
select * from baggage where passenger_id = 3 or Flight_id = 1003;


#Filtering and Sorting Queries:-

#List baggage belonging to a specific passenger (filter by Passenger_ID).---------30
select * from baggage where passenger_id = 5;

#Sort baggage by weight (ascending or descending order).---------31
select * from baggage order by baggage_KG desc;

#Find baggage associated with a particular flight (filter by Flight_ID).-------32
select * from baggage where Flight_id = 1013;


#Join Queries:-

#Join the Baggage table with the Passengers table to get details about baggage owners.------33
select P.Passenger_id,P.First_name,P.Last_name,B.Baggage_id,B.baggage_KG
from Passengers p join Baggage B on P.Passenger_id = B.Passenger_id;

#Join the Baggage table with the Flights table to gather more comprehensive baggage information related to flights.----34
select F.Flight_id,F.Airline_name,F.Origin_airport,F.Destination_airport,F.Departure_date_time,B.Baggage_id,B.baggage_KG 
from Flights F join baggage B on F.flight_id = B.Flight_id; 


#Aggregated Queries:-

#Calculate the total weight of baggage for a specific flight.----------35
select flight_id,sum(baggage_kg) from baggage where flight_id = 1002 group by flight_id ;

#Determine the average weight of baggage per passenger.--------36
SELECT AVG(Weight_Per_Passenger) AS Average_Weight_Per_Passenger
FROM (SELECT Passenger_ID, SUM(Baggage_KG) AS Weight_Per_Passenger FROM Baggage GROUP BY Passenger_ID) AS Baggage_Per_Passenger;

#Count the number of pieces of baggage for each passenger.---------37
SELECT Passenger_ID, COUNT(*) AS Number_of_Baggage_Pieces
FROM Baggage
GROUP BY Passenger_ID;

#Data Modification Queries:-

#Insert new baggage records into the Baggage table.------39
INSERT INTO Baggage (Passenger_ID, Flight_ID, Baggage_KG)
VALUES (49, 1234, 20.5);

#Update baggage details such as weight or association with a passenger or flight.------40
UPDATE Baggage
SET Baggage_KG = 25.3
WHERE Passenger_ID = 49 AND Flight_ID = 1234;

#Delete baggage records based on specific criteria.------41
DELETE FROM Baggage
WHERE Baggage_KG = 25.3 AND Flight_id = 1234;


#Basic Queries:-

#Retrieve all staff details.----------42
select * from Staff;

#Find staff members with a specific StaffID.-----------43
select * from staff where staffid = 10003;

#Get staff details associated with a particular Flight_ID.----------44
select * from staff where Flight_id = 1043;


#Filtering and Sorting Queries:-

#List staff members working on a specific flight (filter by Flight_ID).----------45
select * from Staff where Flight_id = 1033;

#Sort staff members alphabetically by their last names.----------46
select * from staff order by lastname asc;

#Find staff members with a specific designation (e.g., pilot, cabin crew).------47
select * from Staff where designation = 'Pilot';
select * from Staff where designation = 'cabin crew';

#Join Queries:-
#Join the Staff table with the Flights table to get details about staff assignments for each flight.----48
select F.Flight_ID,S.staffID,S.firstName,S.lastname,S.Designation, F.Airline_Name,F.Origin_Airport,F.Destination_Airport 
from Staff S join Flights F on S.Flight_id = F.Flight_id;


#Aggregated Queries:-

#Count the total number of staff members.------49
select count(*) from staff;

#Determine the average number of staff members per flight.--------50
SELECT AVG(Staff_Count) AS Average_Staff_Per_Flight
FROM (SELECT Flight_ID, COUNT(*) AS Staff_Count FROM Staff GROUP BY Flight_ID) AS Staff_Per_Flight;

#Calculate the number of staff members with each designation.-----51
SELECT Designation, COUNT(*) AS Staff_Count
FROM Staff
GROUP BY Designation;


#statistical Queries-

#Calculate the percentage of staff members with specific designations.------52
SELECT Designation,
COUNT(*) AS Staff_Count,(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM Staff)) AS Percentage FROM Staff GROUP BY Designation;

select * from Flights;
Select * from passengers;

SELECT *
FROM Flights
JOIN Passengers ON Flights.Flight_ID = Passengers.Flight_ID;

SELECT *
FROM Flights
INNER JOIN Passengers ON Flights.Flight_ID = Passengers.Flight_ID;

SELECT *
FROM Flights
left JOIN Passengers ON Flights.Flight_ID = Passengers.Flight_ID;

SELECT *
FROM Flights
Right JOIN Passengers ON Flights.Flight_ID = Passengers.Flight_ID;

SELECT *
FROM Flights
full JOIN Passengers ON Flights.Flight_ID = Passengers.Flight_ID;

SELECT *
FROM Flights
cross JOIN Passengers ON Flights.Flight_ID = Passengers.Flight_ID;







