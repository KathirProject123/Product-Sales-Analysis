select * from productsalesanalysis;
#Sales and Profitability by Product
/*Use Case: Identify top-performing
and low-performing products based on sales and profit*/
SELECT Product_Name, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM productsalesanalysis
GROUP BY Product_Name
ORDER BY Total_Profit DESC
LIMIT 10;

/*Order Priority vs. Profit
Use Case: Understand how order priority affects profit.*/
SELECT Order_Priority, AVG(Profit) AS Average_Profit
FROM productsalesanalysis
GROUP BY Order_Priority;

/*Profitability by Customer Segment
Use Case: Identify the most and least profitable customer segments.*/
SELECT Customer_Segment, SUM(Sales) AS Total_Sales, 
SUM(Profit) AS Total_Profit
FROM productsalesanalysis
GROUP BY Customer_Segment
ORDER BY Total_Profit DESC;

/*Shipping Mode Impact on Profit
Use Case: Analyze the impact of different shipping modes on profit.*/
SELECT Ship_Mode, AVG(Profit) AS Average_Profit
FROM productsalesanalysis
GROUP BY Ship_Mode;

/*Sales and Profit by Region
Use Case: Determine which regions are most and least profitable.*/
SELECT Region, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM productsalesanalysis
GROUP BY Region
ORDER BY Total_Profit DESC;

/*Product Category Performance
Use Case: Understand which product categories drive the most profit.*/
SELECT Product_Category, SUM(Sales) AS Total_Sales, SUM(Profit) AS Total_Profit
FROM productsalesanalysis
GROUP BY Product_Category
ORDER BY Total_Profit DESC;

/*Customer and Product Cross-Sell Analysis
Use Case: Identify which customer segments frequently purchase certain product categories.*/
SELECT Customer_Segment, Product_Category, SUM(Sales) AS Total_Sales
FROM productsalesanalysis
GROUP BY Customer_Segment, Product_Category
ORDER BY Customer_Segment, Product_Category;






