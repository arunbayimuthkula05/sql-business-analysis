-- Business Question 1:
-- How many orders are in the dataset?

SELECT COUNT(*) AS total_orders
FROM sales;
-- Business Question 2:
-- Which products generated the most revenue?

SELECT
    Product,
    SUM(Quantity * Unit_Price) AS total_revenue
FROM sales
GROUP BY Product
ORDER BY total_revenue DESC;
-- Business Question 3:
-- Which customers spent the most?

SELECT
    Customer,
    SUM(Quantity * Unit_Price) AS total_spent
FROM sales
GROUP BY Customer
ORDER BY total_spent DESC;
-- Business Question 4:
-- Which category generated the most revenue?

SELECT
    Category,
    SUM(Quantity * Unit_Price) AS total_revenue
FROM sales
GROUP BY Category
ORDER BY total_revenue DESC;
-- Business Question 5:
-- Which category sold the highest quantity?

SELECT
    Category,
    SUM(Quantity) AS total_quantity
FROM sales
GROUP BY Category
ORDER BY total_quantity DESC;
