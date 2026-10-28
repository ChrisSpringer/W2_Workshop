USE lana_dog_walking;

INSERT INTO Owner (owner_name, phone_number, email)
VALUES
('Joe Blue', '(929)123-4567', 'Jblue@gmail.com'),
('Marcus Brown', '(929)555-0101', 'marcus@example.com'),
('Jasmine Davis', '(718)555-0102', 'jasmine@example.com'),
('Tyler Wilson', '(917)555-0103', 'tyler@example.com'),
('Ashley Thomas', '(646)555-0104', 'ashley@example.com'),
('Brandon Lee', '(347)555-0105', 'brandon@example.com'),
('Nicole Harris', '(718)555-0106', 'nicole@example.com'),
('Kevin Martin', '(917)555-0107', 'kevin@example.com'),
('Brianna Clark', '(646)555-0108', 'brianna@example.com'),
('Daniel Lewis', '(347)555-0109', 'daniel@example.com'),
('Samantha Walker', '(929)555-0110', 'samantha@example.com');

SELECT * FROM Owner;

-- Table 2: Dog
INSERT INTO Dog (owner_id, dog_name, breed, age, medical_history)
VALUES
(1, 'Max', 'Poodle', 2, 'None'),
(2, 'Bella', 'Golden Retriever', 4, 'None'),
(3, 'Charlie', 'Beagle', 3, 'Food allergies'),
(4, 'Luna', 'French Bulldog', 2, 'None'),
(5, 'Rocky', 'German Shepherd', 5, 'Hip dysplasia'),
(6, 'Daisy', 'Labrador Retriever', 1, 'None'),
(7, 'Cooper', 'Boxer', 4, 'None'),
(8, 'Milo', 'Shih Tzu', 3, 'Skin allergies'),
(9, 'Bailey', 'Pomeranian', 2, 'None'),
(10, 'Sadie', 'Husky', 6, 'Arthritis'),
(11, 'Teddy', 'Yorkshire Terrier', 1, 'None');

SELECT * FROM Dog;

-- Table 3: Walk
INSERT INTO Walk
(walk_date, start_time, end_time, walk_duration, notes)
VALUES
('2026-10-27', '08:00:00', '08:30:00', 30, 'walk went well'),
('2026-10-27', '09:00:00', '09:45:00', 45, 'Dog enjoyed the park'),
('2026-10-27', '10:00:00', '10:30:00', 30, 'Walk completed successfully'),
('2026-10-27', '11:00:00', '12:00:00', 60, 'Long neighborhood walk'),
('2026-10-27', '13:00:00', '13:30:00', 30, 'Dog was energetic'),
('2026-10-28', '08:00:00', '08:45:00', 45, 'Morning park walk'),
('2026-10-28', '09:30:00', '10:00:00', 30, 'Dog was calm'),
('2026-10-28', '11:00:00', '12:00:00', 60, 'Group walk went well'),
('2026-10-28', '13:00:00', '13:30:00', 30, 'Dog enjoyed fresh air'),
('2026-10-29', '08:00:00', '08:30:00', 30, 'Short morning walk'),
('2026-10-29', '10:00:00', '10:45:00', 45, 'Walk completed without issues');

SELECT * FROM Walk;


-- Table 4: Walk_Dog
INSERT INTO Walk_Dog
(walk_id, dog_id, pickup_time, dropoff_time)
VALUES
(1, 1, '07:55:00', '08:35:00'),
(2, 2, '08:55:00', '09:50:00'),
(3, 3, '09:55:00', '10:35:00'),
(4, 4, '10:55:00', '12:05:00'),
(5, 5, '12:55:00', '13:35:00'),
(6, 6, '07:55:00', '08:50:00'),
(7, 7, '09:25:00', '10:05:00'),
(8, 8, '10:55:00', '12:05:00'),
(8, 9, '10:55:00', '12:05:00'),
(9, 10, '12:55:00', '13:35:00'),
(10, 11, '07:55:00', '08:35:00');

SELECT * FROM Walk_Dog;

-- Table 5: Payment
INSERT INTO Payment
(owner_id, walk_id, amount, payment_method, date_charged)
VALUES
(1, 1, 30.00, 'Credit', '2026-10-27'),
(2, 2, 45.00, 'Debit', '2026-10-27'),
(3, 3, 30.00, 'Cash', '2026-10-27'),
(4, 4, 60.00, 'Credit', '2026-10-27'),
(5, 5, 30.00, 'Debit', '2026-10-27'),
(6, 6, 45.00, 'Cash', '2026-10-28'),
(7, 7, 30.00, 'Credit', '2026-10-28'),
(8, 8, 60.00, 'Debit', '2026-10-28'),
(9, 8, 60.00, 'Credit', '2026-10-28'),
(10, 9, 30.00, 'Cash', '2026-10-28'),
(11, 10, 30.00, 'Debit', '2026-10-29');

SELECT * FROM Payment;

