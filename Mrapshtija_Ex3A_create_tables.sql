	DROP SCHEMA IF EXISTS lana_dog_walking;
    CREATE SCHEMA lana_dog_walking;
    USE lana_dog_walking; 
    
    CREATE TABLE Owner (
    owner_id INT NOT NULL auto_increment,
    owner_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR (100) UNIQUE,
    PRIMARY KEY (owner_id)
    );
    
    CREATE TABLE Dog (
    dog_id INT NOT NULL AUTO_INCREMENT,
    owner_id INT NOT NULL,
    dog_name VARCHAR (30) NOT NULL,
    breed VARCHAR (20),
    age INT,
    PRIMARY KEY (dog_id),
    FOREIGN KEY (owner_id) REFERENCES Owner (owner_id) 
    );
    
    CREATE TABLE Walk (
    walk_id INT NOT NULL AUTO_INCREMENT,
    dog_id INT NOT NULL ,
    walk_date DATETIME NOT NULL,
    walk_duration TIME,
    notes MEDIUMTEXT,
    PRIMARY KEY (walk_id),
    FOREIGN KEY (dog_id) REFERENCES Dog (dog_id) 
    );
    
    CREATE TABLE Payment (
    payment_id INT NOT NULL auto_increment,
    owner_id INT NOT NULL, 
    amount DECIMAL(10,2) NOT NULL, 
    payment_method VARCHAR(20), 
    date_serviced DATE, 
    PRIMARY KEY (payment_id),
    FOREIGN KEY (owner_id) REFERENCES Owner (owner_id) 
    );
    
    USE lana_dog_walking;
    SHOW TABLES;
    
