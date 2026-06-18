--PROFITABILITY ANALYSIS

--Total profit
SELECT SUM(profit) AS total_profit
FROM sales;

--profit from Anglophone and Francophone territories
SELECT
    CASE
        WHEN countries IN ('Nigeria', 'Ghana') THEN 'Anglophone'
        WHEN countries IN ('Senegal', 'Togo', 'Benin') THEN 'Francophone'
    END AS territory,
    SUM(profit) AS total_profit
FROM sales
GROUP BY territory
ORDER BY total_profit DESC;

--Country with highest profit in 2019
SELECT countries, SUM(profit) AS total_profit
FROM sales
WHERE years = 2019
GROUP BY countries
ORDER BY total_profit DESC
LIMIT 1;

--Year with highest profit
SELECT years, SUM(profit) AS total_profit
FROM sales
GROUP BY years
ORDER BY total_profit DESC
LIMIT 1;

--Month with least profit in the three years
SELECT months, SUM(profit) AS total_profit
FROM sales
GROUP BY months
ORDER BY total_profit ASC
LIMIT 1;

--Minimum profit in December 2018
SELECT MIN(profit) AS minimum_profit
FROM sales
WHERE months = 'December'
  AND years = 2018;

--Profit for each month in 2019
SELECT months, SUM(profit) AS total_profit
FROM sales
WHERE years = 2019
GROUP BY months
ORDER BY total_profit DESC;

--Brand with highest profit in Senegal
SELECT brands, SUM(profit) AS total_profit
FROM sales
WHERE countries = 'Senegal'
GROUP BY brands
ORDER BY total_profit DESC
LIMIT 1;

--



SELECT countries, SUM(quantity) AS Total_Quantity
FROM sales
GROUP BY countries
ORDER BY Total_Quantity DESC
LIMIT 1;

SELECT sales_rep, SUM(quantity) AS Total_Quantity
FROM sales
WHERE countries = 'Senegal' AND brands = 'Budweiser'
GROUP BY sales_rep
ORDER BY Total_Quantity DESC
LIMIT 1;

SELECT countries, SUM(profit) AS Total_Profit
FROM sales
WHERE years = 2019 AND months IN ('October', 'November', 'December')
GROUP BY countries
ORDER BY Total_Profit DESC
LIMIT 1;

SELECT * FROM sales


