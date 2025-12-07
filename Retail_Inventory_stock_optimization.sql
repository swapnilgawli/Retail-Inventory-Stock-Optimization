CREATE DATABASE retail_inventory_stock_optimization;
DESCRIBE retail_inventory_stock_optimization;
SELECT * FROM retail_inventory_stock_optimization;
SELECT COUNT(*) AS total_rows
FROM retail_inventory_stock_optimization;
SELECT Product,
	SUM(Weekly_Sales) AS Total_sales
FROM retail_inventory_stock_optimization
GROUP BY Product
ORDER BY Total_sales DESC;
SELECT Product,
       inventory_level,
       Weekly_Sales
FROM retail_inventory_stock_optimization
WHERE inventory_level < 5
ORDER BY inventory_level ASC;
SHOW COLUMNS FROM `retail_inventory_stock_optimization`;
SELECT Product
FROM retail_inventory_stock_optimization LIMIT 10;
SELECT 
	Product
    `inventory level`
FROM retail_inventory_stock_optimization LIMIT 10;
SELECT 
	Product,
    Weekly_sales
FROM retail_inventory_stock_optimization 
ORDER BY Weekly_sales DESC LIMIT 10;
SELECT
    Product,
    `demand forecast`,
    `inventory level`,
    CASE 
        WHEN `demand forecast` > `inventory level` 
        THEN 'Shortage Risk'
        ELSE 'OK'
    END AS Stock_Status
FROM retail_inventory_stock_optimization;
SELECT
    Product,
    `demand forecast`,
    `inventory level`,
    CASE 
        WHEN `demand forecast` > `inventory level` 
            THEN 'Shortage Risk'
        ELSE 'OK'
    END AS Stock_Status
FROM retail_inventory_stock_optimization
LIMIT 20;
SELECT COUNT(*) AS shortage_count
FROM retail_inventory_stock_optimization
WHERE `demand forecast` > `inventory level`;
SELECT COUNT(*) AS shortage_count
FROM retail_inventory_stock_optimization
WHERE `demand forecast` > `inventory level`;
SELECT COUNT(*) AS ok_count
FROM retail_inventory_stock_optimization
WHERE `demand forecast` <= `inventory level`;
SELECT COUNT(DISTINCT Product) AS total_product
FROM retail_inventory_stock_optimization;
SELECT SUM(Weekly_Sales) AS total_weekly_sales
FROM retail_inventory_stock_optimization;
SELECT
	Product,
	AVG(Weekly_Sales) AS avg_weekly_sales
FROM retail_inventory_stock_optimization
GROUP BY Product
ORDER BY avg_weekly_sales DESC LIMIT 10;
