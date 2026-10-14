USE restaurant_db;

-- OBJECTIVE 1: Explore the items table
-- 1. View the menu_items table
SELECT * FROM menu_items;

-- 2. Find the number of items on the menu
SELECT COUNT(*) FROM menu_items;

-- 3. What are the least and most expensive items on the menu?
-- Least expensive item
SELECT *
FROM menu_items
ORDER BY price ASC
LIMIT 1;

-- Most expensive item
SELECT *
FROM menu_items
ORDER BY price DESC
LIMIT 1;

-- 4. How many Italian dishes are on the menu?
SELECT COUNT(*)
FROM menu_items
WHERE category = 'Italian';

-- 5. What are the least and most expensive Italian dishes on the mennu?
-- Least expensive Italian item
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price ASC
LIMIT 1;

-- Most expensive Italian item
SELECT *
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC
LIMIT 1;

-- 6. How many dishes are in each category?
SELECT category, COUNT(*) AS total_dishes
FROM menu_items
GROUP BY category;

-- 7. What is the average dish price within each category?
SELECT category, ROUND(AVG(price), 2) as avg_price
FROM menu_items
GROUP BY category;

