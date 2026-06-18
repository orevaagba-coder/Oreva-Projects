--Ranking of all brands by total quantity sold company-wide
SELECT brands, SUM(quantity) AS total_quantity
FROM sales
GROUP BY brands
ORDER BY total_quantity DESC;

--top three brands consumed in the Francophone countries
SELECT brands, SUM(quantity) AS total_qty_consumed
FROM sales
WHERE years IN (2018, 2019)
AND countries IN ('Benin', 'Senegal', 'Togo')
GROUP BY brands
ORDER BY total_qty_consumed DESC
LIMIT 3

--top 2 choice of consumer brands in Ghana
SELECT brands, SUM(quantity) AS total_qty
FROM sales
WHERE countries = 'Ghana'
GROUP BY brands
ORDER BY total_qty DESC
LIMIT 2;

---3.	Find out the details of beers consumed in the past three (3) years in the most oil reached country in West Africa
SELECT brands, SUM(quantity) total_qty, SUM(profit) AS total_profit
FROM sales
WHERE brands IN ('Castle Lite', 'Eagle Lager', 'Hero', 'Trophy', 'Budweiser')
AND countries = 'Nigeria' AND years IN (2017,2018,2019)
GROUP BY brands
ORDER BY total_qty DESC;

--Favourites malt brands in Anglophone region between 2018 and 2019
SELECT brands, SUM(quantity) total_qty
FROM sales
WHERE countries IN ('Ghana', 'Nigeria')
AND years BETWEEN 2018 AND 2019
AND brands LIKE '%Malt%'
GROUP BY brands
ORDER BY total_qty DESC;

--Which brands sold the highest in 2019 in Nigeria?
SELECT brands, SUM(quantity) AS total_quantity
FROM sales
WHERE countries = 'Nigeria' AND years = 2019
GROUP BY brands
ORDER BY Total_Quantity DESC
LIMIT 1;

--Favourite brands in South_South region in Nigeria
SELECT brands, SUM(quantity) AS Total_Quantity
FROM sales
WHERE countries = 'Nigeria' AND region = 'Southsouth'
GROUP BY brands
ORDER BY Total_Quantity DESC;

--Level of Beer consumption in Nigeria
SELECT SUM(quantity) AS total_consumption
FROM sales
WHERE countries = 'Nigeria';

--Level of consumption of Budweiser in the regions in Nigeria
SELECT region, SUM(quantity) AS Total_Quantity
FROM sales
WHERE countries = 'Nigeria' AND brands = 'Budweiser'
GROUP BY region
ORDER BY Total_Quantity DESC;

--Level of consumption of Budweiser in the regions in Nigeria in 2019
SELECT region, SUM(quantity) AS Total_Quantity
FROM sales
WHERE countries = 'Nigeria' AND brands = 'Budweiser' AND years = 2019
GROUP BY region
ORDER BY Total_Quantity DESC;