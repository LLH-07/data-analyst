# Restaurant Orders Analysis (MySQL)

**Project type:** Maven Analytics Guided Project  
**Tools:** MySQL, MySQL Workbench  
**Portfolio update:** October 2026  
**Status:** Objectives 1 and 2 documented; cross-table analysis not yet included.

## Overview

This project explores a restaurant's menu and order records using SQL. Its current goal is to understand menu composition, pricing, order activity, and the size of individual orders.

It is a **guided learning project**, not an independently commissioned analysis of a real restaurant. The source database and task structure are provided materials.

[Guided project page](https://app.mavenanalytics.io/guided-projects/d7167b45-6317-49c9-b2bb-42e2a9e9c0bc)

## Database

The setup script creates two MySQL tables:

- `menu_items`: menu item ID, item name, category, and price (USD).
- `order_details`: order-line ID, order ID, date, time, and referenced menu item ID.

See `data/restaurant_db_data_dictionary.csv` for definitions.

## Work Completed

### Objective 1 â€” Menu exploration

In `sql/01_menu_exploration.sql` I wrote queries to:

- View menu items and count the menu records.
- Find the least and most expensive items.
- Count Italian dishes and examine their price extremes.
- Count dishes by category.
- Calculate average price by category.

**SQL skills:** `SELECT`, `COUNT`, `WHERE`, `ORDER BY`, `LIMIT`, `GROUP BY`, `AVG`, `ROUND`.

### Objective 2 â€” Order exploration

In `sql/02_orders_exploration.sql` I wrote queries to:

- Inspect order details and the earliest/latest order dates.
- Count distinct order IDs.
- Count order-detail rows and identify records with missing menu item IDs.
- Count line items per order and rank orders by item count.
- Count orders having more than 12 non-null item records.

**SQL skills:** `MIN`, `MAX`, `COUNT(DISTINCT ...)`, aggregation, `HAVING`, and a subquery.

## Current Limitations and Corrections

1. **Incomplete scope.** The uploaded source contains only Objectives 1 and 2. It does not yet include joins between the two tables, revenue by menu category, order-level spend, or higher-spending orders. These should not be claimed as completed analyses.
2. **Item counting corrected.** Objective 2, question 4 now reports total order-detail rows using COUNT(*), rows with known item IDs using COUNT(item_id), and rows with missing item IDs. The provided dataset contains 12,234 rows, including 137 rows with missing item IDs.
3. **Handling NULL values.** `COUNT(item_id)` excludes records with a missing `item_id`; this matters when interpreting items per order.
4. **Price ties.** `ORDER BY price ... LIMIT 1` returns one extreme-priced dish, not necessarily all dishes sharing the same price.
5. **Data validation and business interpretation.** The current scripts do not provide a structured data-quality audit, documented query outputs, or a consolidated insights summary.

## How to Reproduce

1. Open **MySQL Workbench** and connect to a MySQL instance.
2. Run `sql/create_restaurant_db.sql` to create and populate the schema.
3. Run `sql/01_menu_exploration.sql` and `sql/02_orders_exploration.sql`.

**Warning:** The setup script begins with `DROP SCHEMA IF EXISTS restaurant_db;`. It deletes an existing database with that name. Only run it in a safe, disposable environment or after reviewing the script.

## Next Steps

Complete the remaining joined-table analysis, correct metric labels, add data-quality checks, save verified query results, and summarize insights in business language.

## Project Structure

```text
07-restaurant-orders-mysql/
â”œâ”€â”€ README.md
â”œâ”€â”€ sql/
â”‚   â”œâ”€â”€ create_restaurant_db.sql
â”‚   â”œâ”€â”€ 01_menu_exploration.sql
â”‚   â””â”€â”€ 02_orders_exploration.sql
â””â”€â”€ data/
    â””â”€â”€ restaurant_db_data_dictionary.csv
```

The original project scope is preserved. Objective 2, question 4 was corrected, and the remaining limitations are documented above.

