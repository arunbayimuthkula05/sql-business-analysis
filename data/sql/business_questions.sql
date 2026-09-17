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
