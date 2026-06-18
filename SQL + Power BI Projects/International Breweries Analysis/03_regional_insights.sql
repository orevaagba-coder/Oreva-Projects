--Total quantity sold: Anglophone vs Francophone
SELECT 
    CASE 
        WHEN countries IN ('Ghana','Nigeria') THEN 'Anglophone'
        WHEN countries IN ('Togo','Benin','Senegal') THEN 'Francophone'
    END AS territory,
    SUM(quantity) AS total_quantity
FROM sales
GROUP BY territory;

--Nigerian region generating the highest revenue
SELECT region, SUM(cost) AS total_revenue
FROM sales
WHERE countries = 'Nigeria'
GROUP BY region
ORDER BY total_revenue DESC
LIMIT 1;

--Country with the highest consumption of Beer
SELECT countries, SUM(quantity) AS Total_Quantity
FROM sales
GROUP BY countries
ORDER BY Total_Quantity DESC
LIMIT 1;

--Country with the highest profit of the fourth quarter in 2019
SELECT countries, SUM(profit) AS Total_Profit
FROM sales
WHERE years = 2019 AND months IN ('October', 'November', 'December')
GROUP BY countries
ORDER BY Total_Profit DESC
LIMIT 1;
