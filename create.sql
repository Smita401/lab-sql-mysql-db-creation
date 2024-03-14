-- Create a MySQL database for this lab using SQL Query Script in MySQL Workbench.

CREATE DATABASE IF NOT EXISTS lab_mysql;

USE lab_mysql;

-- Write SQL queries to create the tables and columns based on your database design.

-- create 'car' table

DROP TABLE IF EXISTS cars;
CREATE TABLE cars (
    id INT AUTO_INCREMENT PRIMARY KEY,
    vin VARCHAR(17) NOT NULL,
    manufacturer VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    car_year INT NOT NULL,
    color VARCHAR(50) NOT NULL
);

-- create 'customers' table

DROP TABLE IF EXISTS customers;
CREATE TABLE CUSTOMERS (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cust_id INT UNSIGNED NOT NULL,
    cust_name VARCHAR(50) NOT NULL,
    cust_phone VARCHAR(20) NOT NULL,
    cust_email VARCHAR(50) NOT NULL,
    cust_address VARCHAR(100) NOT NULL,
    cust_city VARCHAR(50) NOT NULL,
    cust_state VARCHAR(50) NOT NULL,
    cust_country VARCHAR(50) NOT NULL,
    cust_zipcode VARCHAR(20) NOT NULL
);

-- create 'salespersons' table

DROP TABLE IF EXISTS salespersons;
CREATE TABLE Salespersons (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    staff_id VARCHAR(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    store VARCHAR(50) NOT NULL
);


-- create 'invoices' table

DROP TABLE IF EXISTS invoices;
CREATE TABLE Invoices (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    invoice_number VARCHAR(20) NOT NULL,
    date DATE NOT NULL,
    car_id INT NOT NULL,
    customer_id INT NOT NULL,
    salesperson_id INT NOT NULL,
    FOREIGN KEY (car_id) REFERENCES car(id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(id),
    FOREIGN KEY (salesperson_id) REFERENCES Salespersons(id)
);
