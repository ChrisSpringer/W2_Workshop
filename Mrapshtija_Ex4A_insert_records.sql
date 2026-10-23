USE lana_dog_walking; -- instead of typing USE, you can double cick on the schema on the navigation panel 

INSERT INTO Owner (owner_id, owner_name, phone_number, email)
VALUES
    (1, 'Maria Santos', '555-123-4567', 'maria.santos@example.com'),
    (2, 'James Okafor', '555-234-5678', 'james.okafor@example.com'),
    (3, 'Priya Patel', '555-345-6789', 'priya.patel@example.com'),
    (4, 'Daniel Kim', '555-456-7890', 'daniel.kim@example.com'),
    (5, 'Emily Johnson', '555-567-8901', 'emily.johnson@example.com'),
    (6, 'Carlos Ramirez', '555-678-9012', 'carlos.ramirez@example.com'),
    (7, 'Aisha Rahman', '555-789-0123', 'aisha.rahman@example.com'),
    (8, 'Thomas Becker', '555-890-1234', 'thomas.becker@example.com'),
    (9, 'Sofia Rossi', '555-901-2345', 'sofia.rossi@example.com'),
    (10, 'Michael O''Brien', '555-012-3456', 'michael.obrien@example.com'),
    (11, 'Hannah Lee', '555-123-9876', 'hannah.lee@example.com');
    
    INSERT INTO Dog (dog_id, owner_id, dog_name, breed, age)
VALUES
    (1, 1, 'Biscuit', 'Golden Retriever', 4),
    (2, 2, 'Luna', 'Labrador Retriever', 3),
    (3, 3, 'Max', 'German Shepherd', 5),
    (4, 4, 'Bella', 'Beagle', 2),
    (5, 5, 'Charlie', 'French Bulldog', 6),
    (6, 6, 'Daisy', 'Poodle', 7),
    (7, 7, 'Rocky', 'Boxer', 4),
    (8, 8, 'Cooper', 'Border Collie', 1),
    (9, 9, 'Milo', 'Dachshund', 8),
    (10, 10, 'Teddy', 'Siberian Husky', 3),
    (11, 11, 'Zoe', 'Corgi', 5);
    
    INSERT INTO Payment (payment_id, owner_id, amount, payment_method, date_serviced)
VALUES
    (1001, 1, 25.00, 'Credit Card', '2026-10-20'),
    (1002, 2, 20.00, 'Credit Card', '2026-10-12'),
    (1003, 3, 40.00, 'Cash', '2026-10-12'),
    (1004, 4, 20.00, 'Venmo', '2026-10-13'),
    (1005, 5, 15.00, 'Debit Card', '2026-10-13'),
    (1006, 6, 30.00, 'PayPal', '2026-10-14'),
    (1007, 7, 40.00, 'Credit Card', '2026-10-14'),
    (1008, 8, 30.00, 'Zelle', '2026-10-15'),
    (1009, 9, 20.00, 'Cash', '2026-10-15'),
    (1010, 10, 50.00, 'Venmo', '2026-10-16'),
    (1011, 11, 25.00, 'Debit Card', '2026-10-16');

INSERT INTO Walk (walk_id, dog_id, walk_date, walk_duration, notes)
VALUES
    (101, 1, '2026-10-20 09:30:00', '00:45:00', 'Very energetic. Walked around the park and met two other dogs.'),
    (102, 2, '2026-10-12 08:00:00', '00:30:00', 'Luna pulled on the leash at first but calmed down.'),
    (103, 3, '2026-10-12 10:15:00', '01:00:00', 'Long walk through the neighborhood. Max was well behaved.'),
    (104, 4, '2026-10-13 09:00:00', '00:30:00', 'Bella followed scents the whole walk.'),
    (105, 5, '2026-10-13 12:30:00', '00:20:00', 'Short walk due to warm weather. Gave water afterward.'),
    (106, 6, '2026-10-14 08:45:00', '00:45:00', 'Daisy enjoyed meeting other dogs at the park.'),
    (107, 7, '2026-10-14 16:00:00', '01:00:00', 'Rocky had lots of energy. Played fetch at the end.'),
    (108, 8, '2026-10-15 07:30:00', '00:45:00', 'Cooper did great with commands at the dog park.'),
    (109, 9, '2026-10-15 11:00:00', '00:25:00', 'Milo stopped often to sniff. No issues.'),
    (110, 10, '2026-10-16 17:30:00', '01:15:00', 'Teddy ran the trail loop and was tired afterward.'),
    (111, 11, '2026-10-16 13:00:00', '00:35:00', 'Zoe was friendly with everyone we passed.');
    
    SELECT * FROM owner;
    SELECT COUNT(*) FROM Owner;
    SELECT * FROM Owner WHERE owner_id = 11;
    