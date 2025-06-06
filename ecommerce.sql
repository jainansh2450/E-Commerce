create database Ecommerce;
use ecommerce;
show tables;

select * from customer_support_data;
select * from customer_support_data where category = "product queries";
SELECT Agent_name, channel_name, category, "CSAT Score"
FROM Customer_support_data;

CREATE VIEW Customer_Support_Analysis AS
SELECT 
    Agent_name,
    channel_name,
    category,
    "CSAT Score"
FROM 
    Customer_support_data;

SELECT Agent_name, channel_name, category, "CSAT Score"
FROM Customer_support_data
ORDER BY "CSAT Score" DESC;

SELECT AVG("CSAT Score") AS average_csat
FROM Customer_support_data;

SELECT SUM(Item_price) AS total_revenue
FROM Customer_support_data;

SELECT Agent_name, "CSAT Score"
FROM Customer_support_data
WHERE "CSAT Score" = (
    SELECT MAX("CSAT Score")
    FROM Customer_support_data
);

CREATE VIEW Customer_Support_Analysis AS
SELECT 
    Agent_name,
    channel_name,
    category,
    "CSAT Score"
FROM 
    Customer_support_data;
