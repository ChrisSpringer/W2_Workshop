DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Owner ( -- created the owner table
    owner_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100)
);
CREATE TABLE Dog ( -- created the dog table
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    dog_name VARCHAR(100) NOT NULL,
    breed VARCHAR(100),
    age INT,
    medical_history TEXT,
    FOREIGN KEY (owner_id) REFERENCES Owner(owner_id)
);

-- 3. Walk Table
CREATE TABLE Walk (
    walk_id INT AUTO_INCREMENT PRIMARY KEY,
    walk_date DATE NOT NULL,
    start_time TIME,
    end_time TIME,
    walk_duration INT,
    notes TEXT
);

-- 4. Walk_Dog Table
CREATE TABLE Walk_Dog (
    walk_id INT NOT NULL,
    dog_id INT NOT NULL,
    pickup_time TIME,
    dropoff_time TIME,
    PRIMARY KEY (walk_id, dog_id),
    FOREIGN KEY (walk_id) REFERENCES Walk(walk_id),
    FOREIGN KEY (dog_id) REFERENCES Dog(dog_id)
);

-- 5. Payment Table
CREATE TABLE Payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    walk_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(20),
    date_charged DATE,
    FOREIGN KEY (owner_id) REFERENCES Owner(owner_id),
    FOREIGN KEY (walk_id) REFERENCES Walk(walk_id)
);

