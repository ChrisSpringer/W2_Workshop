DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Owner (
    owner_id INT PRIMARY KEY,
    owner_name VARCHAR(100) NOT NULL,
    pet_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(255)
);

CREATE TABLE Dog (
    dog_id INT PRIMARY KEY,
    owner_id INT NOT NULL,
    dog_name VARCHAR(100) NOT NULL,
    breed VARCHAR(50),
    age INT,
    FOREIGN KEY (owner_id) REFERENCES Owner(owner_id)
);

CREATE TABLE Walk (
    walk_id INT PRIMARY KEY,
    dog_id INT NOT NULL,
    walk_date DATE NOT NULL,
    walk_duration INT,
    notes VARCHAR(255),
    FOREIGN KEY (dog_id) REFERENCES Dog(dog_id)
);

CREATE TABLE Payment (
    payment_id INT PRIMARY KEY,
    owner_id INT NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    payment_method VARCHAR(50),
    date_serviced DATE,
    FOREIGN KEY (owner_id) REFERENCES Owner(owner_id)
);