# International Breweries Analysis

## Project Overview

This project analyses sales, profitability, and brand performance for an international brewery operating across five West African countries: Ghana, Nigeria, Senegal, Togo, and Benin, covering 2017 to 2019.

It began as a SQL assignment, answering 16 core business questions across profitability, brand consumption, and country level analysis using PostgreSQL. I then expanded it into a full personal portfolio piece by adding additional business questions of my own and building an interactive Power BI dashboard to visualize and communicate the combined findings.

The goal was to demonstrate the ability to work across tools, using SQL for direct data querying and business logic, and Power BI for visual storytelling, on the same underlying dataset.

## Business Problem

Brewery management needed a clearer picture of which markets, brands, and sales representatives were driving profit, in order to make informed strategic decisions for the year ahead (including a comparison between Anglophone and Francophone territories to guide investment priorities).

## Tools Used

* PostgreSQL: data cleaning, querying, and business logic (aggregations, CASE WHEN classification, window style ranking)
* Power BI Desktop: interactive dashboard and DAX measures
* Excel: initial raw data inspection

## Repository Structure

```
International Breweries Analysis
    README.md
    01_table_creation_and_cleaning.sql
    02_profitability_analysis.sql
    03_brand_performance.sql
    04_regional_and_sales_insights.sql
    International_Breweries_Analysis.pbix
    dashboard_screenshot.png
	international_breweries.csv
	sql_query_results.pdf
```

## Business Questions Answered

**Profitability Analysis**
* Total profit across the last 3 years (Anglophone and Francophone combined)
* Profit comparison between Anglophone and Francophone territories
* Country with the highest profit in 2019 and in Q4 2019
* Year with the highest overall profit
* Month with the least profit generated, and a full month by month comparison for 2019
* Minimum profit recorded in December 2018
* Profit margin (profit divided by cost) by brand

**Brand Performance and Consumer Preferences**
* Top brands consumed in Francophone countries and in Ghana
* Beer consumption details in Nigeria
* Favourite malt brands in the Anglophone region
* Highest selling brand in Nigeria, 2019
* Budweiser consumption by region in Nigeria
* Ranking of all brands by total quantity sold

**Regional and Sales Insights**
* Country with the highest overall beer consumption
* Quantity sold comparison: Anglophone vs Francophone
* Top performing sales representative overall and by brand and country
* Ranking of all sales reps by total quantity sold

Full SQL for each question is available in the numbered SQL files in this folder.

## Key Insights

**Profitability**
* The brewery generated $105,587,420 in total profit against $241.89M in total cost across 2017 to 2019, an overall profit margin of roughly 30%.
* Francophone countries (Togo, Benin, Senegal) generated $63,198,160 in profit, compared to $42,389,260 from Anglophone countries (Ghana, Nigeria), a gap of roughly $20.8M favouring the Francophone territories.
* 2017 was the most profitable year ($38,503,320), with profit declining year over year through 2019, a trend worth investigating further (rising costs, increased competition, or shifting demand are all possible factors).
* April was the lowest profit month across all three years ($8,573,830 combined), hinting at a possible seasonal dip worth addressing with targeted promotions.
* In 2019 specifically, Ghana generated the highest profit of any country ($7,144,070), and Ghana also led all countries in Q4 2019 profit ($2,045,230). This is notable since Ghana belongs to the lower earning Anglophone territory overall, suggesting it may be an internal model market worth studying.
* The smallest single recorded profit on any order was $38,150, in December 2018 (this is the minimum individual transaction, not the month's total).
* Castle Lite generated the highest brand profit in Senegal ($7,012,980), and brand profit margins overall range from a high of 60% (Castle Lite) down to 25% (Hero and Trophy, tied lowest).

**Brand and Consumer Preferences**
* In Francophone countries (2018 to 2019), the top three brands by volume were Trophy (52,899 units), Hero (50,846), and Eagle Lager (50,630).
* In Ghana, the top two brands were Eagle Lager (25,829 units) and Castle Lite (25,806 units), a near even split between the two.
* In Nigeria (2017 to 2019), beer brand volumes were led by Budweiser (26,153 units, $6,538,250 profit), followed by Eagle Lager, Hero, Trophy, and Castle Lite. Notably, Castle Lite generated nearly as much profit as Budweiser ($6,933,870) despite slightly lower volume, reinforcing its strong margin.
* Favourite malt brands in the Anglophone region (2018 to 2019) were Grand Malt (33,221 units) and Beta Malt (32,118 units), fairly close to each other.
* Hero was the highest selling brand in Nigeria in 2019 (9,622 units).
* In Nigeria's South South region, brand preference order was Eagle Lager, Trophy, Hero, Budweiser, Castle Lite, Beta Malt, and Grand Malt, all within a fairly narrow range (3,914 to 4,551 units).
* Total beer consumption in Nigeria reached 179,307 units, with Budweiser's regional spread led by the West (4,620 units) and lowest in the Southeast (4,113) overall. In 2019 specifically though, the Southeast actually led Budweiser consumption (1,821 units), a reversal worth a closer look.

**Country and Sales Team Performance**
* Senegal recorded the highest overall beer consumption of any country (180,928 units). Combined with Castle Lite's strong profit performance there, Senegal stands out as a flagship market.
* Jones was both the overall top performing sales rep ($18.8M in sales) and the top seller of Budweiser in Senegal specifically (5,917 units), a consistent pattern across multiple breakdowns.

## Recommendations

* Since Francophone markets outperform Anglophone markets in overall profit, but Ghana (Anglophone) leads in single year and Q4 2019 profit, it is worth digging into what is driving Ghana's strong recent performance and whether those factors (pricing, promotions, distribution) can be replicated in Nigeria and across Francophone markets alike.
* The declining profit trend from 2017 to 2019 warrants investigation before setting 2020 targets, to rule out cost increases or competitive pressure as root causes.
* April's recurring dip in profit across all three years suggests a seasonal pattern. A targeted promotional push in that month could help smooth out the yearly trend.
* Senegal's combination of the highest beer consumption and strong Castle Lite profit performance makes it a candidate for continued or increased investment as a flagship Francophone market.
* Castle Lite's high profit margin relative to its volume, compared to Hero and Trophy, which are high volume but low margin, suggests reviewing production costs or pricing on the lower margin brands rather than simply pushing more volume through them.
* Jones's consistent top performance across multiple breakdowns (overall sales and Budweiser sales in Senegal) makes him a good candidate to share best practices with lower performing reps through mentoring.

## Dashboard Preview

<img width="1434" height="808" alt="image" src="https://github.com/user-attachments/assets/5233f9cb-e679-48b1-b938-ba2f6504abe4" />


## How to Explore This Project

1. Review the numbered SQL files in this folder to see the queries and logic behind each business question.
2. Check query_outputs.pdf for screenshots of each query alongside its actual result, useful if you want to see the output without running the queries yourself.
3. Open International_Breweries_Analysis.pbix in Power BI Desktop to interact with the dashboard directly (filter by year, hover for details, and so on).
4. The raw dataset, international_breweries.csv, is included directly in this folder if you would like to reproduce the analysis.
