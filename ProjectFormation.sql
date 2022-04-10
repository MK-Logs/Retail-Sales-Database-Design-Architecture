CREATE DATABASE retailSalesDB;
SET GLOBAL local_infile = true;
USE retailSalesDB;

CREATE TABLE sales(
product_id VARCHAR(255),
store_id VARCHAR(255),
date Date,
sales float,
revenue float,
stock float,
price float, 
promo_type_1 VARCHAR(255),
sales_id VARCHAR(255),
primary key(sales_id)
);

LOAD DATA LOCAL INFILE '' #File Path  
INTO TABLE sales FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(
product_id,
store_id,
date,
sales,
revenue,
stock,
price,
promo_type_1,
sales_id
);

CREATE TABLE productDetails(
product_id VARCHAR(255),
product_length float,
product_depth float,
product_width float,
cluster_id VARCHAR(255),
hierarchy5_id VARCHAR(255),
PRIMARY KEY (product_id)
);

LOAD DATA LOCAL INFILE '' #File Path  
INTO TABLE productDetails FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(
product_id,
product_length,
product_depth,
product_width,
cluster_id,
hierarchy5_id
);

CREATE TABLE productHierarchy(
hierarchy1_id VARCHAR(255),
hierarchy2_id VARCHAR(255),
hierarchy3_id VARCHAR(255),
hierarchy4_id VARCHAR(255),
hierarchy5_id VARCHAR(255),
PRIMARY KEY (hierarchy5_id)
);

LOAD DATA LOCAL INFILE '' #File Path  
INTO TABLE productHierarchy FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(
hierarchy1_id,
hierarchy2_id,
hierarchy3_id,
hierarchy4_id,
hierarchy5_id
);

CREATE TABLE storeDetails(
store_id VARCHAR(255),
storetype_id VARCHAR(255),
store_size int,
city_id VARCHAR(255),
PRIMARY KEY (store_id)
);

LOAD DATA LOCAL INFILE '' #File Path  
INTO TABLE storeDetails FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(
store_id,
storetype_id,
store_size,
city_id
);

CREATE TABLE promotion(
promo_type_1 VARCHAR(255),
promo_bin_1 VARCHAR(255),
promo_type_2 VARCHAR(255),
promo_bin_2 VARCHAR(255),
PRIMARY KEY (promo_type_1)
);

LOAD DATA LOCAL INFILE '' #File Path  
INTO TABLE promotion FIELDS TERMINATED BY ',' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS 
(
promo_type_1,
promo_bin_1,
promo_type_2,
promo_bin_2
);
