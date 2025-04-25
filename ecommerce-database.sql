Create database ecommerce_platform;
USE ecommerce_platform;
attribute_category-- 1. Create the 'brand' table
CREATE TABLE brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    brand_name VARCHAR(100)
);

-- 2. Create the 'product_category' table
CREATE TABLE product_category (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- 3. Create the 'color' table
CREATE TABLE color (
    color_id INT AUTO_INCREMENT PRIMARY KEY,
    color_name VARCHAR(50)
);

-- 4. Create the 'size_category' table
CREATE TABLE size_category (
    size_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- 5. Create the 'size_option' table
CREATE TABLE size_option (
    size_option_id INT AUTO_INCREMENT PRIMARY KEY,
    size_category_id INT,
    size_name VARCHAR(50),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id)
);

-- 6. Create the 'product' table
CREATE TABLE product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    brand_id INT,
    category_id INT,
    base_price DECIMAL(10, 2),
    FOREIGN KEY (brand_id) REFERENCES brand(brand_id),
    FOREIGN KEY (category_id) REFERENCES product_category(category_id)
);

-- 7. Create the 'product_image' table
CREATE TABLE product_image (
    image_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    image_url VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 8. Create the 'product_item' table
CREATE TABLE product_item (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    color_id INT,
    size_option_id INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id),
    FOREIGN KEY (size_option_id) REFERENCES size_option(size_option_id)
);

-- 9. Create the 'product_variation' table
CREATE TABLE product_variation (
    variation_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    size_category_id INT,
    color_id INT,
    FOREIGN KEY (product_id) REFERENCES product(product_id),
    FOREIGN KEY (size_category_id) REFERENCES size_category(size_category_id),
    FOREIGN KEY (color_id) REFERENCES color(color_id)
);

-- 10. Create the 'product_attribute' table
CREATE TABLE product_attribute (
    attribute_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    attribute_name VARCHAR(100),
    attribute_value VARCHAR(255),
    FOREIGN KEY (product_id) REFERENCES product(product_id)
);

-- 11. Create the 'attribute_category' table
CREATE TABLE attribute_category (
    attribute_category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100)
);

-- 12. Create the 'attribute_type' table
CREATE TABLE attribute_type (
    attribute_type_id INT AUTO_INCREMENT PRIMARY KEY,
    type_name VARCHAR(50)
);

USE ecommerce_platform;
-- Insert data into 'brand' table
INSERT INTO brand (brand_name) VALUES ('Nike'), ('Adidas'), ('Apple'), ('Samsung');

-- Insert data into 'product_category' table
INSERT INTO product_category (category_name) VALUES ('Clothing'), ('Electronics'), ('Footwear');

-- Insert data into 'color' table
INSERT INTO color (color_name) VALUES ('Red'), ('Blue'), ('Black'), ('White');

-- Insert data into 'size_category' table
INSERT INTO size_category (category_name) VALUES ('Clothing Sizes'), ('Shoe Sizes');

-- Insert data into 'size_option' table
INSERT INTO size_option (size_category_id, size_name) VALUES (1, 'S'), (1, 'M'), (1, 'L'), (2, '42'), (2, '43');

-- Insert data into 'product' table
INSERT INTO product (product_name, brand_id, category_id, base_price) 
VALUES ('Running Shoes', 1, 3, 50.00), ('Smartphone', 4, 2, 699.99), ('T-Shirt', 2, 1, 25.00);

-- Insert data into 'product_image' table
INSERT INTO product_image (product_id, image_url) 
VALUES (1, 'https://example.com/running_shoes.jpg'), (2, 'https://example.com/smartphone.jpg');

-- Insert data into 'product_item' table
INSERT INTO product_item (product_id, color_id, size_option_id, price) 
VALUES (1, 1, 4, 55.00), (1, 2, 4, 55.00), (2, 3, NULL, 699.99), (3, 1, 1, 25.00);

-- Insert data into 'product_variation' table
INSERT INTO product_variation (product_id, size_category_id, color_id) 
VALUES (1, 1, 1), (2, 2, 3), (3, 1, 2);

-- Insert data into 'product_attribute' table
INSERT INTO product_attribute (product_id, attribute_name, attribute_value) 
VALUES (1, 'Material', 'Leather'), (2, 'Operating System', 'iOS'), (3, 'Material', 'Cotton');

-- Insert data into 'attribute_category' table
INSERT INTO attribute_category (category_name) 
VALUES ('Physical'), ('Technical');

-- Insert data into 'attribute_type' table
INSERT INTO attribute_type (type_name) 
VALUES ('Text'), ('Number');

-- View all products
SELECT * FROM product;

-- View product images
SELECT * FROM product_image;

-- View product items with details
SELECT * FROM product_item;

-- View product variations
SELECT * FROM product_variation;
