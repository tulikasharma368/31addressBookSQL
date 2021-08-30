CREATE DATABASE addresses;


use addresses;


#UC1
Create table address_book(
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	address VARCHAR(150) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	zip INT(6) NOT NULL,
	phone_number VARCHAR(20) NOT NULL,
	email_address VARCHAR(150) NOT NULL
	);


#UC2
INSERT INTO address_book(first_name, last_name, address, city, state, zip, phone_number, email_address) VALUES
('Tulika', 'Sharma', '1523', 'Noida', 'U.P.', '110096', '9999999999', 'tk@gmail.com'),
('Riya', 'Chaudhary', '2073', 'Gurugram', 'Harayana', '110038', '9555899999', 'riya@gmail.com'),
('Shanaya', 'Oberoi', '3009', 'Mumbai', 'Maharashtra', '230532', '9990000000', 'shanaya@gmail.com');


#UC3
Select * from address_book;


#UC4
UPDATE address_book set email_address = "tulika@gmail.com"
	where first_name = "Tulika";
Select * from address_book;


#UC5
Delete from address_book a 
	where a.first_name = "Riya" and a.last_name = "Chaudhary";
select * from address_book; 


#UC6
select * from address_book
	where city = "Noida" or state = "Noida"; 
select * from address_book; 


#UC7
INSERT INTO address_book(first_name, last_name, address, city, state, zip, phone_number, email_address) VALUES
('Pankhudi', 'Malik', '0788', 'Noida', 'U.P.', '110096', '99990099999', 'pankh@gmail.com');


#UC8
select * from address_book
	order by first_name;


#UC9
ALTER TABLE address_book ADD type varchar(20) AFTER last_name;
UPDATE address_book SET type = 'Family' where first_name = 'Shanaya' or first_name = 'Tulika';
UPDATE address_book SET type = 'Friend' where first_name = 'Pankhudi';


#UC10
SELECT type, count(*) FROM address_book GROUP BY type;


#UC11
INSERT INTO address_book(first_name, last_name,type, address, city, state, zip, phone_number, email_address) VALUES
('Pankhudi', 'Malik', 'Family', '0788', 'Noida', 'U.P.', '110096', '99990099999', 'pankh@gmail.com');
SELECT * FROM address_book;
