CREATE DATABASE IF NOT EXISTS `lab_mysql`;
USE lab_mysql;

CREATE TABLE customers (
  `customer_id` int NOT NULL auto_increment,
  `name` varchar(20),
  `phone_number` char(20),
  `email` varchar(255),
  `city` varchar(20),
  `address` varchar(255),
  `country` varchar(255),
  `state` varchar(105),
  `postal_code` varchar (105),
  PRIMARY KEY (`customer_id`)
);


CREATE TABLE salespersons (
  `staff_id` int NOT NULL auto_increment,
  `name` varchar (20),
  `store` char (4),
  PRIMARY KEY (`staff_id`)
);

CREATE TABLE cars (
  `VIN` char(17),
  `manufacter` varchar (30),
  `color` varchar (20),
  `year` smallint (4),
  `model` varchar (20),
  PRIMARY KEY (`VIN`)
);

CREATE TABLE invoices (
  `inv_number` int,
   `vin` char(17),
  `cust_id` int,
  `sales_id` int,
  `date` datetime,
  PRIMARY KEY (`inv_number`),
  CONSTRAINT `vin_ref` FOREIGN KEY (`vin`) REFERENCES `cars` (`VIN`),
  CONSTRAINT `cust_ref` FOREIGN KEY (`cust_id`) REFERENCES `customers` (`customer_id`),
  CONSTRAINT `sales_ref` FOREIGN KEY (`sales_id`) REFERENCES `salespersons` (`staff_id`)
);

select * from customers;
select * from cars;
select * from customers;
select * from salespersons;

drop table invoices;
drop table cars;
drop table customers;
drop table salespersons;
