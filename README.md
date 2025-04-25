# E-commerce Database Design

This project is a collaborative effort to design and implement a relational MySQL database for an e-commerce platform. It includes multiple tables to manage product details, variations, images, sizes, attributes, and more.

## Objectives

- Create an Entity-Relationship Diagram (ERD)
- Define and implement database tables and relationships
- Ensure data flow is logical and efficient
- Use GitHub for collaboration and version control

## ERD

The ERD outlines how all tables relate to one another. You can view the diagram in the `/assets` folder or at [insert your ERD link here].

## Tables

### Core Tables

- `brand`: Stores brand details
- `product_category`: Classifies products (e.g., electronics, clothing)
- `product`: Contains main product information
- `product_image`: Stores product image URLs
- `product_item`: Represents actual items with variations (SKU-level)
- `product_variation`: Links items to variations in size and color

### Supporting Tables

- `color`: Stores available color options
- `size_category`: Groups related sizes
- `size_option`: Lists specific size values
- `attribute_category`: Groups product attributes
- `attribute_type`: Defines attribute data types
- `product_attribute`: Assigns attributes to products (e.g., material, weight)

## Data Flow

Products are assigned brands and categories. Each product may have multiple variations (sizes/colors), which are stored in `product_item` and `product_variation`. Images, attributes, and other characteristics are also linked to products to provide detailed information.

## How to Use

1. Clone this repository.
2. Create a database in MySQL:
   ```sql
   CREATE DATABASE ecommerce_db;# E-commerce Database Design

This project is a collaborative effort to design and implement a relational MySQL database for an e-commerce platform. It includes multiple tables to manage product details, variations, images, sizes, attributes, and more.

## Objectives

- Create an Entity-Relationship Diagram (ERD)
- Define and implement database tables and relationships
- Ensure data flow is logical and efficient
- Use GitHub for collaboration and version control

## ERD

The ERD outlines how all tables relate to one another. You can view the diagram in the `/assets` folder or at [insert your ERD link here].

## Tables

### Core Tables

- `brand`: Stores brand details
- `product_category`: Classifies products (e.g., electronics, clothing)
- `product`: Contains main product information
- `product_image`: Stores product image URLs
- `product_item`: Represents actual items with variations (SKU-level)
- `product_variation`: Links items to variations in size and color

### Supporting Tables

- `color`: Stores available color options
- `size_category`: Groups related sizes
- `size_option`: Lists specific size values
- `attribute_category`: Groups product attributes
- `attribute_type`: Defines attribute data types
- `product_attribute`: Assigns attributes to products (e.g., material, weight)

## Data Flow

Products are assigned brands and categories. Each product may have multiple variations (sizes/colors), which are stored in `product_item` and `product_variation`. Images, attributes, and other characteristics are also linked to products to provide detailed information.

## How to Use

1. Clone this repository.
2. Create a database in MySQL:
   ```sql
   CREATE DATABASE ecommerce_db;
