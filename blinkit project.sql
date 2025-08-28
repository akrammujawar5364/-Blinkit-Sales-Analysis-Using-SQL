SELECT 
    *
FROM
    blinkit.blinkit;

SELECT DISTINCT
    item_fat_content
FROM
    blinkit;

/*data cleaning item_fat_content 'LF' ,'low fat' to 'Low Fat' and 'reg' to 'Regular' */
UPDATE blinkit 
SET 
    item_fat_content = CASE
        WHEN item_fat_content IN ('LF' , 'low fat') THEN 'Low Fat'
        WHEN item_fat_content = 'reg' THEN 'Regular'
        ELSE item_fat_content
    END;

SELECT DISTINCT
    item_fat_content
FROM
    blinkit;

/*Total Sales: The overall revenue generated from all items sold*/
SELECT 
    ROUND(SUM(total_sales) / 1000000, 2) AS total_sales_million
FROM
    blinkit;

/* Average Sales: The average revenue per sale. */
SELECT 
    ROUND(AVG(total_sales), 0) AS avg_sales
FROM
    blinkit;

/* Number of Items: The total count of different items sold. */
SELECT 
    COUNT(*) AS no_of_orders
FROM
    blinkit;

SELECT 
    item_fat_content, ROUND(SUM(total_sales), 2) AS total_sales
FROM
    blinkit
GROUP BY item_fat_content;

/* fat content type total sales */
SELECT 
    item_type, ROUND(SUM(total_sales), 2) AS item_wise_sales
FROM
    blinkit
GROUP BY item_type
ORDER BY item_wise_sales DESC;

/*top 5 item_type by sales_amount */
SELECT 
    item_type, ROUND(SUM(total_sales), 2) AS item_wise_sales
FROM
    blinkit
GROUP BY item_type
ORDER BY item_wise_sales DESC
LIMIT 5;

SELECT 
    Outlet_Location_Type,
    ROUND(SUM(CASE
                WHEN Item_Fat_Content = 'Low Fat' THEN Total_Sales
                ELSE 0
            END),
            2) AS Low_Fat,
    ROUND(SUM(CASE
                WHEN Item_Fat_Content = 'Regular' THEN Total_Sales
                ELSE 0
            END),
            2) AS Regular
FROM
    blinkit
GROUP BY Outlet_Location_Type
ORDER BY Outlet_Location_Type;

/* Total Sales by Outlet Establishment: */
SELECT 
    Outlet_Establishment_Year,
    ROUND(SUM(total_sales), 2) AS total_sales
FROM
    blinkit
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC;

/* Percentage of Sales by Outlet Size */
SELECT 
    Outlet_Size,
    ROUND(SUM(Total_Sales), 2) AS total_sales,
    ROUND((SUM(Total_Sales) * 100) / (SELECT 
                    SUM(Total_Sales)
                FROM
                    blinkit),
            2) AS sales_percentage
FROM
    blinkit
GROUP BY Outlet_Size
ORDER BY sales_percentage DESC;


/* Sales by Outlet Location */
SELECT 
    Outlet_Location_Type,
    ROUND(SUM(total_sales), 2) AS total_sales,
    ROUND(SUM(total_sales) * 100 / (SELECT 
                    SUM(total_sales)
                FROM
                    blinkit),
            2) AS percantge_sales
FROM
    blinkit
GROUP BY Outlet_Location_Type
ORDER BY total_sales;

/* all Metrics by Outlet Type */
SELECT 
    Outlet_Type,
    ROUND(SUM(total_sales), 2) AS total_sales,
    ROUND(SUM(total_sales) * 100 / (SELECT 
                    SUM(total_sales)
                FROM
                    blinkit),
            2) AS percantge_sales
FROM
    blinkit
GROUP BY Outlet_Type
ORDER BY total_sales;


