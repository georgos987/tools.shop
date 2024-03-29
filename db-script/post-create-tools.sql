-- -----------------------------------------------------
-- Schema tools_shop
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS tools_shop;

CREATE SCHEMA tools_shop;

-- --------------------u---------------------------------
-- Table `tools_shop`.`tool_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tools_shop.tool_category (
  id serial PRIMARY KEY,
  category_name VARCHAR(255) NULL DEFAULT NULL
)

-- -----------------------------------------------------
-- Table `tools-shop`.`tool`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tools_shop.tool (
  id serial PRIMARY KEY,
  name VARCHAR(255) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  unit_price DECIMAL(13,2) DEFAULT NULL,
  image_url VARCHAR(255) DEFAULT NULL,
  active boolean DEFAULT true,
  units_in_stock INT  DEFAULT NULL,
  date_created date DEFAULT NULL,
  last_updated date DEFAULT NULL,
  category_id INT REFERENCES tool_category (id)
)

-- --------------------u---------------------------------
-- Table `tools-shop`.`customer_address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tools_shop.customer_address (
  id serial PRIMARY KEY,
  country VARCHAR(255) NULL DEFAULT NULL,
  city VARCHAR(255) NULL DEFAULT NULL,
  street VARCHAR(255) NULL DEFAULT NULL,
  zip_code VARCHAR(255) NULL DEFAULT NULL
)

-- -----------------------------------------------------
-- Table `tools_shop`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tools_shop.customer (
  id serial PRIMARY KEY,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255)  Not NULL,
  email VARCHAR(255) NOT NULL UNIQUE,
  address_id INT REFERENCES customer_address(id) 
)





-- -----------------------------------------------------
-- Table structure for table `role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS tools_shop.roles;
CREATE TABLE roles (
  id serial PRIMARY KEY,
  name varchar(255) NOT NULL
)

-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
INSERT INTO roles(NAME) 
VALUES ('ADMIN'),
 ('USER');


INSERT INTO customer_address(COUNTRY, CITY, STREET, ZIP_CODE) 
VALUES ('Germany','Erlangen','Hauptmann str.10','91055');

INSERT INTO customer(FIRST_NAME, LAST_NAME, EMAIL, ADDRESS_ID) 
VALUES ('admin','Makhool','fadi@gamil.com',1);








INSERT INTO tool_category(CATEGORY_NAME) VALUES ('Standard');



INSERT INTO tool (NAME, DESCRIPTION, IMAGE_URL, ACTIVE, UNITS_IN_STOCK, UNIT_PRICE, CATEGORY_ID,DATE_CREATED) 
VALUES ('لاصق عريض ورقي', 'لاصق عريض ورقي 24مم*30م', 'assets/bilder/50245.jpg', true, 100, 0.45, 1, NOW()),
 ('طقم مفك كهرباء', 'طقم مفك كهرباء عازل  6 قطع', 'assets/bilder/38013.jpg', true, 6, 6, 1, NOW()),
 ('طقم مفتاح نجمة', 'طقم مفتاح نجمة 9 قطع حجم صغير', 'assets/bilder/20056.jpg', true, 100, 2.69, 1, NOW()),
 ('طقم مفك مصالب وشق', 'طقم مفك مصالب وشق 4 قطع', 'assets/bilder/20015.jpg', true, 100, 3.32, 1, NOW()),

 ('مجموعة مفتاح طرف', 'مجموعة مفتاح طرف 8-10-12-14-15-17-19', 'assets/bilder/15159.jpg', true, 100, 10.93, 1, NOW()),

 ('طقم فنجان', 'طقم فنجان 12 قطعة صناعي 1/2 انش', 'assets/bilder/15152.jpg', true, 100, 15.06 , 1, NOW()),

 ('مجموعة مفتاح شق', 'مجموعة مفتاح شق 6*7---20*22', 'assets/bilder/15076.jpg', true, 100, 11.02, 1, NOW()),

 ('مجموعة مفتاح طرف', 'مجموعة مفتاح طرف6-7-8-9-10-11-12-13-14-17-19- 22', 'assets/bilder/15075.jpg', true, 100, 16.78, 1, NOW()),

 ('قطاعة عادية 7 انش', 'قطاعة عادية 7 انش', 'assets/bilder/10004.jpg', true, 100, 2.52, 1, NOW()),

 ('قطاعة عادية 6 انش', 'قطاعة عادية 6 انش', 'assets/bilder/10003.jpg', true, 100, 2.04, 1, NOW()),

 ('بانسة عادية 8 انش', 'بانسة عادية 8 انش', 'assets/bilder/10002.jpg', true, 100, 2.34, 1, NOW()),

 ('بانسة عادية 7 انش', 'بانسة عادية 7 انش', 'assets/bilder/10001.jpg', true, 100, 2.16, 1, NOW()),

 ('مفتاح انكليزي 12 انش', 'مفتاح انكليزي 12 انش', 'assets/bilder/15004.jpg', true, 100, 5.78, 1, NOW());

