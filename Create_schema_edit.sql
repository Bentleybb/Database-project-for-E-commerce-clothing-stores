-- CREATE TABLE --

-- Create CUSTOMERS Table
CREATE TABLE CUSTOMERS (
    customer_id NUMBER(10),
    customer_first_name VARCHAR2(50) NOT NULL,
    customer_last_name VARCHAR2(50) NOT NULL,
    customer_email VARCHAR2(100) NOT NULL,
    customer_phone VARCHAR2(15),
    customer_street_address VARCHAR2(100) NOT NULL,
    customer_city VARCHAR2(50) NOT NULL,
    customer_province CHAR(2) NOT NULL,
    customer_postal_code CHAR(6) NOT NULL,
    customer_country VARCHAR2(50) NOT NULL,
    subscription CHAR(6) DEFAULT 'No' NOT NULL,
    membership_id NUMBER(10),
    CONSTRAINT customers_customer_id_pk PRIMARY KEY (customer_id),
    CONSTRAINT customers_customer_email_uk UNIQUE (customer_email),
    CONSTRAINT customers_customer_email_ck CHECK (customer_email LIKE '%@%'),
    CONSTRAINT customers_subscription_ck CHECK (subscription IN ('Yes', 'No'))
);
   
-- Create CATEGORY Table
CREATE TABLE CATEGORY (
    category_id NUMBER(10),
    category_name VARCHAR2(100) NOT NULL,
    CONSTRAINT category_category_id_pk PRIMARY KEY (category_id),
    CONSTRAINT category_category_name_uk UNIQUE (category_name)
);

 -- Create PRODUCTS Table
CREATE TABLE PRODUCTS (
    product_id NUMBER(10),
    product_name VARCHAR2(100) NOT NULL,
    category_id NUMBER(10) NOT NULL,
    product_price NUMBER(10,2) NOT NULL,
    product_color VARCHAR2(50) NOT NULL,
    product_size VARCHAR2(10) NOT NULL,
    CONSTRAINT products_product_id_pk PRIMARY KEY (product_id),
    CONSTRAINT products_category_id_fk FOREIGN KEY (category_id) 
        REFERENCES CATEGORY(category_id),
    CONSTRAINT products_product_price_ck CHECK (product_price > 0)
);

-- Create ORDERS Table
CREATE TABLE ORDERS (
    order_id NUMBER(10),
    customer_id NUMBER(10) NOT NULL,
    order_date DATE NOT NULL,
    ship_date DATE,
    order_status VARCHAR2(20) DEFAULT 'Pending' NOT NULL,
    CONSTRAINT orders_order_id_pk PRIMARY KEY (order_id),
    CONSTRAINT orders_customer_id_fk FOREIGN KEY (customer_id) 
        REFERENCES CUSTOMERS (customer_id)
        ON DELETE CASCADE,
    CONSTRAINT orders_dates_ck CHECK (ship_date IS NULL OR order_date <= ship_date)
);

-- Create ORDERITEMS Table
CREATE TABLE ORDERITEMS (
    item_id NUMBER(10),
    order_id NUMBER(10) NOT NULL,
    product_id NUMBER(10) NOT NULL,
    quantity NUMBER(10) NOT NULL,
    paid_each NUMBER(10,2) NOT NULL,
    CONSTRAINT items_item_id_pk PRIMARY KEY (item_id),
    CONSTRAINT items_order_id_fk FOREIGN KEY (order_id) 
        REFERENCES ORDERS(order_id)
        ON DELETE CASCADE,
    CONSTRAINT items_product_id_fk FOREIGN KEY (product_id) 
        REFERENCES PRODUCTS(product_id),
    CONSTRAINT items_quantity_ck CHECK (quantity > 0),
    CONSTRAINT items_price_ck CHECK (paid_each > 0)
);

-- Create SHIPPING Table
CREATE TABLE SHIPPING (
    ship_id NUMBER(10),
    order_id NUMBER(10) NOT NULL,
    ship_street_address VARCHAR2(100) NOT NULL,
    ship_city VARCHAR2(50) NOT NULL,
    ship_province CHAR(2) NOT NULL,
    ship_postal_code CHAR(6) NOT NULL,
    ship_country VARCHAR2(50) NOT NULL,
    ship_status VARCHAR2(20) NOT NULL,
    CONSTRAINT shipping_ship_id_pk PRIMARY KEY (ship_id),
    CONSTRAINT shipping_order_id_fk FOREIGN KEY (order_id) 
        REFERENCES ORDERS(order_id)
        ON DELETE CASCADE
);

-- Create LOCATIONS Table
CREATE TABLE LOCATIONS (
    location_id NUMBER(10),
    address VARCHAR2(200) NOT NULL,
    postal_code VARCHAR2(10),
    city VARCHAR2(50) NOT NULL,
    province CHAR(2) NOT NULL,
    country VARCHAR2(50) NOT NULL,
    CONSTRAINT locations_location_id_pk PRIMARY KEY (location_id)
);

-- Create WAREHOUSE Table
CREATE TABLE WAREHOUSES (
    warehouse_id NUMBER(10),
    location_id NUMBER(10) NOT NULL,
    warehouse_name VARCHAR2(100) NOT NULL,
    CONSTRAINT warehouses_warehouse_id_pk PRIMARY KEY (warehouse_id),
    CONSTRAINT warehouses_location_id_fk FOREIGN KEY (location_id) 
        REFERENCES LOCATIONS(location_id)
);

-- Create INVENTORIES Table
CREATE TABLE INVENTORIES (
    inventory_id NUMBER(10),
    product_id NUMBER(10) NOT NULL,
    warehouse_id NUMBER(10) NOT NULL,
    quantity NUMBER(10) DEFAULT 0 NOT NULL,
    CONSTRAINT inventories_inventory_id_pk PRIMARY KEY (inventory_id),
    CONSTRAINT inventories_product_id_fk FOREIGN KEY (product_id) 
        REFERENCES PRODUCTS(product_id),
    CONSTRAINT inventories_warehouse_id_fk FOREIGN KEY (warehouse_id) 
        REFERENCES WAREHOUSES(warehouse_id),
    CONSTRAINT chk_quantity_non_negative CHECK (quantity >= 0)
);

-- CREATE SEQUENCE -- 

-- Create SEQUENCE for item_id (ORDERITEMS)
CREATE SEQUENCE seq_item_id
  START WITH 501
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- Create sequence for assigning membership_id
CREATE SEQUENCE seq_membership_id
  START WITH 9901
  INCREMENT BY 1
  NOCACHE
  NOCYCLE;

-- CREATE INDEXES FOR FREQUENT SEARCH

-- Index to speed up product name searches
CREATE INDEX idx_products_name ON PRODUCTS(product_name);

-- Index for city-based filtering
CREATE INDEX idx_customers_city ON CUSTOMERS(customer_city);

-- Index for filtering by order date
CREATE INDEX idx_orders_date ON ORDERS(order_date);