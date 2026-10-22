USE lana_dog_walking;

-- ============================================
-- Dog Walking Business Sample Data
-- Exercise / 3A
-- ============================================

-- Optional: Clear existing data
SET SQL_SAFE_UPDATES = 0;

DELETE FROM Walk;
DELETE FROM Payment;
DELETE FROM Dog;
DELETE FROM Owner;

SET SQL_SAFE_UPDATES = 1;

-- ============================================
-- OWNER
-- ============================================

INSERT INTO Owner (owner_id, owner_name, phone_number, email)
VALUES
(1002, 'Sarah Johnson', '555-1112', 'sarah.johnson@email.com'),
(1003, 'Michael Davis', '555-1113', 'michael.davis@email.com'),
(1004, 'Emily Wilson', '555-1114', 'emily.wilson@email.com'),
(1005, 'David Brown', '555-1115', 'david.brown@email.com'),
(1006, 'Jessica Taylor', '555-1116', 'jessica.taylor@email.com'),
(1007, 'Ryan Martinez', '555-1117', 'ryan.martinez@email.com'),
(1008, 'Ashley Anderson', '555-1118', 'ashley.anderson@email.com'),
(1009, 'Matthew Thomas', '555-1119', 'matthew.thomas@email.com'),
(1010, 'Olivia Harris', '555-1120', 'olivia.harris@email.com'),
(1011, 'Daniel White', '555-1121', 'daniel.white@email.com');

-- ============================================
-- DOG
-- ============================================

INSERT INTO Dog (dog_id, owner_id, dog_name, breed, age)
VALUES
(1002, 1002, 'Bella', 'Labrador Retriever', 3),
(1003, 1003, 'Charlie', 'Beagle', 5),
(1004, 1004, 'Luna', 'German Shepherd', 2),
(1005, 1005, 'Max', 'Poodle', 7),
(1006, 1006, 'Daisy', 'Bulldog', 4),
(1007, 1007, 'Cooper', 'Boxer', 6),
(1008, 1008, 'Molly', 'Dachshund', 3),
(1009, 1009, 'Rocky', 'Siberian Husky', 5),
(1010, 1010, 'Lucy', 'Cocker Spaniel', 2),
(1011, 1011, 'Bailey', 'Border Collie', 1);

-- ============================================
-- WALK
-- ============================================

INSERT INTO Walk (walk_id, dog_id, walk_date, walk_duration, notes)
VALUES
(1002, 1002, '2026-01-02', 45, 'Enjoyed a walk through the neighborhood'),
(1003, 1003, '2026-01-03', 30, 'Very energetic during the walk'),
(1004, 1004, '2026-01-04', 60, 'Visited the local dog park'),
(1005, 1005, '2026-01-05', 35, 'Calm and well-behaved'),
(1006, 1006, '2026-01-06', 40, 'Played fetch midway through walk'),
(1007, 1007, '2026-01-07', 50, 'High energy and friendly'),
(1008, 1008, '2026-01-08', 25, 'Short walk due to weather'),
(1009, 1009, '2026-01-09', 65, 'Very active and alert'),
(1010, 1010, '2026-01-10', 45, 'Walked along the river trail'),
(1011, 1011, '2026-01-11', 30 , 'First walk completed successfully');

-- ============================================
-- PAYMENT
-- ============================================

INSERT INTO Payment (payment_id, owner_id, amount, payment_method, date_serviced)
VALUES
(1002, 1002, 30.00, 'Credit', '2026-01-02'),
(1003, 1003, 25.00, 'Debit', '2026-01-03'),
(1004, 1004, 35.00, 'Cash', '2026-01-04'),
(1005, 1005, 25.00, 'Credit', '2026-01-05'),
(1006, 1006, 30.00, 'Debit', '2026-01-06'),
(1007, 1007, 40.00, 'Credit', '2026-01-07'),
(1008, 1008, 20.00, 'Cash', '2026-01-08'),
(1009, 1009, 35.00, 'Debit', '2026-01-09'),
(1010, 1010, 30.00, 'Credit', '2026-01-10'),
(1011, 1011, 25.00, 'Cash', '2026-01-11');

-- ============================================
-- Verification Queries
-- ============================================

SELECT * FROM Owner;
SELECT * FROM Dog;
SELECT * FROM Walk;
SELECT * FROM Payment;
