# 📊 Sales Revenue Dashboard – The Purple Store

## Project Overview

This project is an interactive Excel Sales Revenue Dashboard developed to analyze sales performance, product trends, regional revenue distribution, and customer purchasing patterns for The Purple Store.

The dashboard provides decision-makers with a clear view of key business metrics through interactive visualizations, KPI cards, slicers, and business insights.

> **Note:** This is one of my earlier Excel dashboard projects and is included in my portfolio to showcase my progression in Excel analytics, dashboard design, and business intelligence reporting.

---

## Objectives

The dashboard was designed to answer the following business questions:

* Which product categories generate the highest revenue?
* Which products contribute most to total sales?
* How do sales trends change throughout the year?
* Which regions contribute the largest share of revenue?
* Are sales concentrated among a few products or distributed across many?
* How do different product categories perform across regions?

---

## Dataset Information

The dataset contains sales transaction records with the following fields:

* Order ID
* Order Date
* Customer ID
* Product ID
* Segment
* Region
* Category
* Quantity Sold

Additional lookup tables were used to enrich the dataset with product and customer information.

---

## Data Preparation & Transformation

### Data Cleaning

* Cleaned and structured the dataset for analysis.
* Organized data into separate worksheets for easier management and reporting.

### Lookup Functions

Used **XLOOKUP** to retrieve and populate product-related information from the **Product Lookup** sheet into the **Cleaned Sales Data** sheet.

Imported fields include:

* Product Name
* Category
* Product Cost

---

## Calculated Fields & Financial Metrics

Several analytical and financial columns were created to support reporting and dashboard development.

### Financial Calculations

* Product Cost
* Sales Revenue
* Discount Amount
* Total Sales
* Average Order Value
* Number of Orders
* Median Quantity Sold

### Order Classification Fields

* Order Status (Standard Order / Large Order)
* Order Type (High Value / High Quantity)
* Order Classification (Weekday Order / Weekend Order)

### Date Intelligence Fields

* Year
* Month
* Day

---

## Data Validation

Data validation was implemented to improve data quality and reduce user input errors.

### Region Selection

Created dropdown lists to ensure valid region selection.

### Target Sales Input

Restricted user input to whole numbers within a predefined range for consistency.

---

## Conditional Formatting

Applied conditional formatting techniques to improve data interpretation and visual analysis.

* Highlighted high-performing sales values.
* Highlighted low-performing sales values.
* Added data bars to Quantity Sold to visually compare order sizes.
* Improved readability and identification of key trends.

---

## Dashboard Features

### KPI Cards

* Total Sales
* Total Orders
* Average Order Value
* Category Sales Metrics

### Interactive Filters

* Product Category Slicer
* Region Slicer

### Visualizations

* Revenue by Product Category
* Top 5 Products by Revenue
* Monthly Sales Trend
* Revenue Distribution by Region

---

## Chart Selection Justification

| Chart Type   | Purpose                                     |
| ------------ | ------------------------------------------- |
| Column Chart | Compare revenue across product categories   |
| Bar Chart    | Rank top-performing products                |
| Line Chart   | Display monthly sales trends over time      |
| Pie Chart    | Show regional contribution to total revenue |

---

## Dashboard Interactivity

Interactive slicers were incorporated to allow users to dynamically filter and analyze sales data by:

* Product Category
* Region

This improves user experience and enables focused business analysis.

---

## Key Insights

* Office Supplies generated the highest revenue among product categories.
* Air Fryer was the highest-performing product by revenue.
* Sales increased toward the end of the year, indicating possible seasonal demand.
* Revenue contribution across regions was relatively balanced.
* Electronics generated the lowest revenue among product categories.

---

## Recommendations

* Expand inventory and marketing efforts for Office Supplies.
* Increase promotion of top-performing products such as Air Fryers and Coffee Makers.
* Review pricing and marketing strategies for Electronics products.
* Prepare inventory and sales campaigns for year-end demand spikes.

---

## Tools & Techniques Used

* Microsoft Excel
* XLOOKUP
* Pivot Tables
* Pivot Charts
* Slicers
* Conditional Formatting
* Data Validation
* Dashboard Design
* Business Analysis
* Data Visualization

---

## Dashboard Preview

<img width="1278" height="682" alt="image" src="https://github.com/user-attachments/assets/6c50e7de-a1ac-4c76-9817-9975d5325178" />

---

## Author

**Orevaoghene Agba**

This project demonstrates foundational Excel analytics skills, including data preparation, business analysis, dashboard design, and interactive reporting.

