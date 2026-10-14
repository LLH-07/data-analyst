USE restaurant_db;

-- OBJECTIVE 3: ANALYZE CUSTOMER BEHAVIOR
-- 1. Combine the menu_items and order_details tables into a single table
SELECT * FROM menu_items;
SELECT * FROM order_details;

SELECT *
FROM order_details AS o
LEFT JOIN menu_items AS m
	ON o.item_id = m.menu_item_id;

-- 2. What were the least and most ordered items? What categories were they in?
SELECT item_name, category, COUNT(order_details_id) AS num_ordered
FROM order_details AS o
LEFT JOIN menu_items AS m
	ON o.item_id = m.menu_item_id
GROUP BY item_name, category
ORDER BY num_ordered DESC;

-- 3. What were the top 5 orders that spent the most money?
SELECT o.order_id, SUM(m.price) AS total_spent
FROM order_details AS o
LEFT JOIN menu_items AS m
	ON o.item_id = m.menu_item_id
GROUP BY o.order_id
ORDER BY total_spent DESC
LIMIT 5;

-- 4. View the details of the highest spend order. Which specific items were purchased?
SELECT o.order_id, m.item_name, m.category, m.price
FROM order_details AS o
LEFT JOIN menu_items AS m
	ON o.item_id = m.menu_item_id
WHERE o.order_id = 440;

-- 5. View the details of the top 5 highest spend orders
SELECT  o.order_id, m.category, COUNT(*) AS total_items, SUM(m.price) AS total_spent
FROM order_details AS o
LEFT JOIN menu_items AS m
	ON o.item_id = m.menu_item_id
WHERE o.order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY o.order_id, m.category
ORDER BY o.order_id, total_items DESC;

