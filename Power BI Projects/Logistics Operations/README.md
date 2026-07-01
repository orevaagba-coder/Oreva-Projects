# 🚛 Logistics Operations Analytics Dashboard

> **A Power BI analytics portfolio project** analysing 3 years of trucking & freight operations (2022–2024) across 150 drivers, 200 customers, and $263M in revenue.

## 🌐 Live Interactive Dashboard

👉 **View the Power BI Dashboard here:**  
[View Live Dashboard](https://app.powerbi.com/view?r=eyJrIjoiOTg4YWM3YjgtMjczOS00MjgwLTk1YjgtNDM4NmExN2NjZjRjIiwidCI6IjNiYmQ3N2E0LTJhNjItNDkzNS04MmY1LTEwMjMwOWJmMDY2MCJ9)
> Interactive report with filters, slicers, drill-through, and cross-filtering enabled.

---

## 📋 Table of Contents

- [Project Overview](#project-overview)
- [Tools & Technologies](#tools--technologies)
- [Data Model & Methodology](#data-model--methodology)
- [Dashboard Pages](#dashboard-pages)
- [Key Findings](#key-findings)
- [Recommendations](#recommendations)
- [How to Use](#how-to-use)
- [About the Analyst](#about-the-analyst)

---

## Project Overview

This project delivers a **multi-page interactive Power BI dashboard** for a logistics/trucking company. It covers the full operational lifecycle from driver performance and fleet utilisation, to customer satisfaction, cost management, and seasonal demand patterns.

The goal is to provide executives, operations managers, and fleet supervisors with a single source of truth for data-driven decision-making.

**Analysis Period:** January 2022 – December 2024  
**Scope:** 150 drivers · 200 customers · 85,410 total loads · $263M revenue

---

## Tools & Technologies

| Tool | Purpose |
|------|---------|
| **Power BI Desktop** | Dashboard design, visualisations, and interactivity |
| **Power Query (M)** | Data cleaning, transformation, and shaping |
| **DAX** | KPI calculations, time intelligence, and custom measures |
| **Microsoft Excel / CSV** | Source data storage and pre-processing |
| **Bing Maps (Power BI)** | Geographic visualisation of safety incidents by state |

---

## Data Model & Methodology

### Data Sources

The project uses a star schema model with the following key tables:

```
Fact Tables
├── fact_loads          — Load-level transactions (revenue, miles, delivery times)
├── fact_incidents      — Safety and accident records
└── fact_maintenance    — Vehicle maintenance events and costs

Dimension Tables
├── dim_driver          — Driver profiles, experience, terminal
├── dim_customer        — Customer type, region, contract details
├── dim_vehicle         — Truck make, model, status
├── dim_date            — Full date dimension for time intelligence
└── dim_route           — Origin-destination lane definitions
```

### Methodology

1. **Data Ingestion** — Raw CSV/Excel files loaded into Power Query
2. **Data Cleaning** — Handled nulls, standardised date formats, normalised categorical fields (e.g. customer type, experience group)
3. **Data Modelling** — Built star schema with defined relationships; avoided many-to-many joins
4. **DAX Measures** — Created DAX measures including:
   - `On-Time Rate = DIVIDE([On-Time Loads], [Total Loads])`
   - `Revenue Per Mile = DIVIDE([Total Revenue], [Total Miles])`
   - Rolling averages, quarter-to-date and year-to-date aggregates
5. **Dashboard Design** — Consistent colour palette (slate grey + warm brown), page-level filters, cross-filtering visuals, and drill-through capability

---

## Dashboard Pages

### 1. 📊 Executive Overview
**Audience:** C-Suite, Senior Management  
**Purpose:** One-page snapshot of business health

| Visual | Insight |
|--------|---------|
| Monthly Revenue Trend (2022–2024) | Steady $7M–$8M/month; no significant growth |
| On-Time Rate by Year | Flat at ~44.6% — persistent underperformance |
| Top 10 Customers by Revenue | First Group leads at $9.1M |
| Safety Incident Trend | Concerning uptrend: 54 → 53 → 58 |
| KPI Cards | Revenue, Maintenance, Fuel, Claims, Loads, Utilisation |
<img width="1319" height="739" alt="image" src="https://github.com/user-attachments/assets/1599dda7-1b7b-4e74-bce2-2c2d39fbc0ff" />

---

### 2. 👤 Driver & Experience Analysis
**Audience:** Fleet Operations, HR  
**Purpose:** Identify performance gaps and training needs

| Visual | Insight |
|--------|---------|
| On-Time Rate by Driver (Bottom 10) | Range: 35.10%–39.53% |
| On-Time Rate by Experience Group | 6–10 years leads (45.24%); weak correlation overall |
| Safety Incidents by Experience Level | Highest in 0–2 year and 10+ year groups |
| Revenue per Mile by Driver | Tight cluster: $2.06–$2.11 |
| Trips Completed by Experience Group | Veterans (10+ yrs) dominate at 18,580 trips |

---

### 3. 🚚 Fleet & Route Operations
**Audience:** Operations & Dispatch Teams  
**Purpose:** Maximise fleet productivity and lane profitability

| Visual | Insight |
|--------|---------|
| Monthly Revenue by Truck Make | 6 makes tracked; relatively even contribution |
| Fleet Status Distribution | Active 76.67% · Maintenance 12.5% · Inactive 10.83% |
| Top 10 Revenue Lanes | Philadelphia→Seattle leads at $10.1M |
| Revenue by Load Type | Near-even split: Dry Van 49.73% / Refrigerated 50.27% |
| Average Utilisation Rate | 83.04% — room to improve |

---

### 4. 💰 Cost & Risk Management
**Audience:** Finance, Risk & Compliance  
**Purpose:** Control costs and reduce operational risk

| Visual | Insight |
|--------|---------|
| Monthly Fuel Cost Trend | $91.8M total; declining trend from 2023 peak |
| Maintenance Cost Trend | Peaked mid-2023 near $0.5M/month |
| Maintenance Cost by Type | Engine ($239K) and Preventive ($230K) top categories |
| Safety Incidents by Type | DOT Violations lead at 22.94% |
| Preventable vs Non-Preventable | 38% preventable — direct intervention opportunity |
| Safety Incidents by State (Map) | TX and TN highest fuel costs and incident density |

---

### 5. 📅 Customer & Seasonal Insights
**Audience:** Sales, Account Management, Planning  
**Purpose:** Optimise customer relationships and plan for seasonal demand

| Visual | Insight |
|--------|---------|
| Load Volume Trend (3-year) | Stable 2,200–2,400 loads/month; low seasonality |
| Load Volume by Quarter | Q3 highest (21.48K); Q1 lowest (21.10K) |
| Revenue by Customer Type | Contract 37.5% · Spot 31.5% · Dedicated 31% |
| Monthly Revenue by Quarter | Q2 leads at $65.99M |
| Avg Revenue per Load by Month | Nov/Dec premium peaks above $3,100 |
| Worst Served Customers (On-Time) | All below 55%; Superior Retail lowest at 50.00% |

---

## Key Findings

### 🔴 Critical Issues
- **On-time delivery rate of 55.67%** is well below industry benchmarks (90%+), representing the most significant operational and customer satisfaction risk
- **Safety incidents trending up** (54 → 58 over 3 years), driven primarily by DOT violations (22.94% of all incidents)
- **23.33% of fleet is inactive or in maintenance** — a material drag on capacity and revenue

### 🟡 Areas of Concern
- Revenue growth is flat despite stable volumes — pricing power is not being captured
- Top customer concentration risk: top 3 accounts represent a disproportionate revenue share
- Bottom 10 drivers by on-time rate are below 40%, dragging the company average
- Average truck downtime of 16.55 days exceeds industry norms of 10–12 days

### 🟢 Strengths
- Revenue is consistent and predictable ($263M over 3 years)
- Load type diversification is healthy (near 50/50 Dry Van vs Refrigerated)
- Fleet of 150 experienced drivers with stable revenue-per-mile performance
- Minimal demand seasonality simplifies planning and resource allocation

---

## Recommendations

| Priority | Area | Action |
|----------|------|--------|
| 🔴 High | Operations | Launch on-time delivery improvement programme targeting 65%+ |
| 🔴 High | Compliance | Mandatory DOT compliance training — largest controllable risk |
| 🔴 High | Driver Mgmt | Performance improvement plans for bottom 10 on-time drivers |
| 🟡 Medium | Fleet | Reduce inactive fleet ratio; target 80%+ active utilisation |
| 🟡 Medium | Customer | Service recovery programme for 10 worst-served accounts |
| 🟡 Medium | Maintenance | Predictive maintenance to cut downtime and repair cost spikes |
| 🟡 Medium | Route | Optimise TX/TN fuel efficiency — target 3–5% cost reduction |
| 🟢 Low | Revenue | Dynamic spot pricing to capture Nov/Dec peak demand premium |
| 🟢 Low | Sales | Convert key Spot customers to Contract for revenue stability |
| 🟢 Low | Strategy | Customer diversification to reduce top-3 concentration risk |

---

## How to Use

### Prerequisites
- Power BI Desktop (free download from [Microsoft](https://powerbi.microsoft.com/))
- Windows OS (Power BI Desktop is Windows-only)

### Opening the Dashboard
1. Clone or download this repository
2. Open `Logistics_Operations_Dashboard.pbix` in Power BI Desktop
3. Use the tab navigation at the bottom to switch between dashboard pages
4. Use the **Year** or **Driver Name** slicers on individual pages to filter data
5. The **"All"** dropdown filter in the top-right of each page resets all filters

### Interactivity
- **Click any bar or chart element** to cross-filter all other visuals on the page
- **Hover** over chart elements for detailed tooltips
- **Drill through** from summary visuals to detailed breakdowns (where enabled)

---

## About the Analyst

**Created by:** Orevaoghene Agba

GitHub: https://github.com/orevaagba-coder

This project was developed as part of my data analytics portfolio and demonstrates the use of Power BI for business intelligence and data-driven decision-making.

---

*Created by **Orevaoghene Agba** · Built with Power BI Desktop · Data period: 2022–2024 · Last updated: June 2026*

