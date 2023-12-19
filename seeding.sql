INSERT INTO cars (VIN, manufacter, model, year, color)
VALUES ('K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019','Blue');


INSERT INTO cars (VIN, manufacter, model, year, color)
VALUES ('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019','Red'),
	('RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
    ('HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver');

INSERT INTO customers (name, phone_number, address, city, state, country, postal_code)
VALUES ('Pablo Picasso','+34 636 17 63 82','Paseo de la Chopera, 14','Madrid','Madrid','Spain','28045');


INSERT INTO salespersons (name, store)
VALUES ('Petey Cruiser', 'Madr'),
       ('Anna Sthesia','Barc');

INSERT INTO invoices (date, vin,cust_id,sales_id)
VALUES ('2018-08-11','ZM8G7BEUQZ97IH46V','1','2'); -- Peugeot car, Anna salesperson