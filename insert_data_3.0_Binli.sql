-- Insert data into CUSTOMERS Table
INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(101, 'Annya', 'Shimi', 'annya.shimi@example.com', '647-456-7890', '123 Main St', 'Toronto', 'ON', 'M5B1E9', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country) 
VALUES 
(102, 'Jerry', 'Kelley', 'jerry.kelley@example.com', '778-654-3210', '456 Oak Ave', 'Vancouver', 'BC', 'V5K0A1', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country) 
VALUES 
(103, 'Angelina', 'Wilcox', 'angelina.wilcox@example.com', '514-555-5555', '789 Pine Rd', 'Montreal', 'QC', 'H3A0G4', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(104, 'Clay', 'Walls', 'clay.walls@example.com', '403-444-4444', '101 Maple St', 'Calgary', 'AB', 'T2P0L4', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(105, 'Charlie', 'Davis', 'charlie.davis@example.com', '416-556-7890', '11 Sun Ave', 'Toronto', 'ON', 'M1R3T9', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(106, 'Maya', 'Nguyen', 'maya.nguyen@example.com', '438-123-4567', '99 Elm St', 'Ottawa', 'ON', 'K1A0B1', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(107, 'Liam', 'Olsen', 'liam.olsen@example.com', '587-321-6543', '555 Birch Rd', 'Edmonton', 'AB', 'T5J3N5', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(108, 'Sophia', 'Chan', 'sophia.chan@example.com', '604-678-1234', '202 Spruce Ave', 'Vancouver', 'BC', 'V6B4N5', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(109, 'Noah', 'Martin', 'noah.martin@example.com', '647-222-7777', '18 Willow Lane', 'Mississauga', 'ON', 'L5B3Y3', 'Canada');

INSERT INTO CUSTOMERS 
(customer_id, customer_first_name, customer_last_name, customer_email, customer_phone, 
customer_street_address, customer_city, customer_province, customer_postal_code, customer_country)
VALUES 
(110, 'Isabella', 'Singh', 'isabella.singh@example.com', '902-987-6543', '45 Cedar Blvd', 'Halifax', 'NS', 'B3H1Y9', 'Canada');

-- Assign membership_id to Toronto customers only
UPDATE CUSTOMERS
SET membership_id = seq_membership_id.NEXTVAL
WHERE customer_city IN ('Toronto', 'Vancouver');

-- Insert data into CATEGORY Table 
INSERT INTO CATEGORY 
(category_id, category_name)
VALUES 
(201, 'Tops');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(202, 'Bottom');

INSERT INTO CATEGORY  
(category_id, category_name) 
VALUES 
(203, 'Jackets');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(204, 'Shoes');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(205, 'Accessories');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(206, 'Dresses');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(207, 'Sweaters');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(208, 'Activewear');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(209, 'Socks');

INSERT INTO CATEGORY 
(category_id, category_name) 
VALUES 
(210, 'Hats');

-- Insert data into PRODUCTS Table 
INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(301, 'T-Shirt', 201, 19.99, 'White', 'M');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(302, 'Jeans', 202, 49.99, 'Blue', '32');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(303, 'Leather Jacket', 203, 129.99, 'Black', 'L');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(304, 'Running Shoes', 204, 79.99, 'Red', '9');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(305, 'Running Shoes', 204, 79.99, 'White', '7');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(306, 'Hiking Socks', 209, 7.99, 'Black', 'L');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(307, 'Sweater', 207, 39.99, 'Grey', 'M');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(308, 'Leggings', 208, 29.99, 'Black', 'S');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(309, 'Leggings', 208, 29.99, 'Grey', 'M');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(310, 'Beanie', 210, 9.99, 'Navy', 'One Size');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(311, 'Beanie', 210, 9.99, 'Black', 'One Size');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(312, 'Dress', 206, 59.99, 'Red', 'M');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(313, 'Dress', 206, 59.99, 'Pink', 'M');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(314, 'Boot Socks', 209, 6.99, 'White', 'One Size');

INSERT INTO PRODUCTS 
(product_id, product_name, category_id, product_price, product_color, product_size)
VALUES 
(315, 'Boot Socks', 209, 6.99, 'Black', 'One Size');


-- Insert data into ORDERS Table 
INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(401, 103, '18-JAN-23', '21-JAN-23', 'Delivered');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(402, 107, '09-FEB-24', '12-FEB-24', 'Shipped');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(403, 102, '19-FEB-24', '26-FEB-24', 'Delivered');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(404, 102, '08-MAR-24', '11-MAR-24', 'Delivered');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(405, 110, '25-MAR-24', '04-APR-24', 'Shipped');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(406, 106, '26-MAR-24', '02-APR-24', 'Shipped');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(407, 104, '26-MAR-24', '03-APR-24', 'Shipped');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(408, 105, '31-MAR-24', '03-APR-24', 'Delivered');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(409, 107, '09-APR-24', '19-APR-25', 'Delivered');

INSERT INTO ORDERS 
(order_id, customer_id, order_date, order_status)
VALUES 
(410, 108, '05-MAY-24', 'Pending'); 

INSERT INTO ORDERS 
(order_id, customer_id, order_date, order_status)
VALUES 
(411, 110, '06-MAY-24', 'Pending'); 

INSERT INTO ORDERS 
(order_id, customer_id, order_date, order_status)
VALUES 
(412, 101, '05-JUN-24', 'Pending'); 

INSERT INTO ORDERS 
(order_id, customer_id, order_date, order_status)
VALUES 
(413, 102, '09-JUN-24', 'Pending'); 

INSERT INTO ORDERS 
(order_id, customer_id, order_date, ship_date, order_status)
VALUES 
(414, 105, '14-JUL-25', '17-JUL-25','Shipped'); 

INSERT INTO ORDERS 
(order_id, customer_id, order_date, order_status)
VALUES 
(415, 103, '07-AUG-25', 'Pending'); 

-- Insert data into ORDERITEMS Table 
INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 401, 304, 5, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 401, 301, 4, 19.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 401, 309, 4, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 402, 301, 1, 19.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 402, 314, 20, 6.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 402, 303, 1, 129.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 402, 308, 4, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 413, 307, 4, 39.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 413, 310, 1, 9.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 413, 309, 4, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 414, 307, 4, 39.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 414, 308, 2, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 414, 315, 10, 6.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 414, 304, 1, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 415, 303, 5, 129.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 415, 304, 5, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 415, 302, 3, 49.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 406, 308, 4, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 406, 310, 1, 9.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 406, 303, 5, 129.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 407, 307, 2, 39.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 407, 309, 2, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 407, 301, 2, 19.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 407, 306, 15, 7.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 407, 313, 1, 59.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 411, 305, 5, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 411, 301, 1, 19.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 411, 304, 2, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 411, 312, 1, 59.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 411, 303, 1, 129.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 403, 303, 5, 129.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 403, 315, 30, 6.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 403, 309, 2, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 405, 302, 1, 49.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 405, 305, 4, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 405, 310, 4, 9.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 408, 310, 3, 9.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 409, 310, 4, 9.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 409, 315, 30, 6.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 409, 303, 3, 129.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 412, 305, 3, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 412, 302, 2, 49.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 412, 306, 50, 7.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 404, 304, 2, 79.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 404, 301, 5, 19.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 404, 302, 5, 49.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 404, 307, 5, 39.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 410, 309, 4, 29.99);

INSERT INTO ORDERITEMS 
(item_id, order_id, product_id, quantity, paid_each) 
VALUES 
(seq_item_id.NEXTVAL, 410, 310, 4, 9.99);

-- Insert data into SHIPPING Table 
INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(601, 401, '789 Pine Rd', 'Montreal', 'QC', 'H3A0G4', 'Canada', 'Delivered'); 

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(602, 402, '555 Birch Rd', 'Edmonton', 'AB', 'T5J3N5', 'Canada', 'Shipped');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(603, 403, '456 Oak Ave', 'Vancouver', 'BC', 'V5K0A1', 'Canada', 'Delivered');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(604, 404, '456 Oak Ave', 'Vancouver', 'BC', 'V5K0A1', 'Canada', 'Delivered');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(605, 406, '99 Elm St', 'Ottawa', 'ON', 'K1A0B1', 'Canada', 'In Transit');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(606, 407, '101 Maple St', 'Calgary', 'AB', 'T2P0L4', 'Canada', 'In Transit');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(607, 408, '11 Sun Ave', 'Toronto', 'ON', 'M1R3T9', 'Canada', 'Delivered');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(608, 405, '45 Cedar Blvd', 'Halifax', 'NS', 'B3H1Y9', 'Canada', 'Shipped');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(609, 409, '555 Birch Rd', 'Edmonton', 'AB', 'T5J3N5', 'Canada', 'Delivered');

INSERT INTO Shipping 
(ship_id, order_id, ship_street_address, ship_city, ship_province, 
ship_postal_code, ship_country, ship_status) 
VALUES 
(610, 414, '11 Sun Ave', 'Toronto', 'ON', 'M1R3T9', 'Canada', 'Shipped');


-- Insert data into LOCATIONS Table 
INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(701, '1000 Bay St', 'M5S2B1', 'Toronto', 'ON', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(702, '200 Burrard St', 'V6C3L6', 'Vancouver', 'BC', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(703, '300 Sainte-Catherine St W', 'H3B1A4', 'Montreal', 'QC', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(704, '400 Jasper Ave', 'T5J3N4', 'Edmonton', 'AB', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(705, '500 Elgin St', 'K2P1L5', 'Ottawa', 'ON', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(706, '600 Portage Ave', 'R3C0G5', 'Winnipeg', 'MB', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(707, '700 Spring Garden Rd', 'B3J1E9', 'Halifax', 'NS', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(708, '800 King St', 'L8P1B7', 'Hamilton', 'ON', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(709, '900 Yonge St', 'M4W2H2', 'Toronto', 'ON', 'Canada');

INSERT INTO LOCATIONS 
(location_id, address, postal_code, city, province, country) 
VALUES 
(710, '100 Dundas St E', 'N6A6K1', 'London', 'ON', 'Canada');

-- Insert data into WAREHOUSES Table
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(801, 701, 'Toronto Central Warehouse');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(802, 702, 'Vancouver Distribution Center');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(803, 703, 'Montreal Logistics Hub');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(804, 704, 'Edmonton Storage Unit');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(805, 705, 'Ottawa Fulfillment Center');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(806, 706, 'Winnipeg Regional Warehouse');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(807, 707, 'Halifax Supply Depot');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(808, 708, 'Hamilton West Warehouse');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(809, 709, 'Yonge Street Storage');
INSERT INTO WAREHOUSES 
(warehouse_id, location_id, warehouse_name) 
VALUES 
(810, 710, 'London East Fulfillment Center');

-- Insert data into INVENTORIES Table

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(901, 301, 804, 0);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(902, 302, 807, 28);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(903, 314, 803, 69);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(904, 304, 808, 0);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(905, 305, 802, 124);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(906, 312, 809, 173);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(907, 307, 805, 213);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(908, 308, 806, 203);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(909, 315, 805, 292);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(910, 310, 810, 281);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(911, 311, 804, 500);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(912, 303, 807, 219);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(913, 306, 803, 50);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(914, 309, 801, 112);

INSERT INTO INVENTORIES 
(inventory_id, product_id, warehouse_id, quantity) 
VALUES 
(915, 313, 808, 88);


COMMIT;