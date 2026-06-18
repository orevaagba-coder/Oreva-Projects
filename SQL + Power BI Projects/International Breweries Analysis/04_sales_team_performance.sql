--Highest sales personnel of Budweiser in Senegal
SELECT sales_rep, SUM(quantity) AS Total_Quantity
FROM sales
WHERE countries = 'Senegal' AND brands = 'Budweiser'
GROUP BY sales_rep
ORDER BY Total_Quantity DESC
LIMIT 1;