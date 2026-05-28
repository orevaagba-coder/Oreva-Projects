# SafePulse — Incidence Analysis Dashboard

> **Report. Illuminate. Act.**  
> A community safety intelligence platform for tracking, analyzing, and responding to incidents of violence, abuse, and harassment across Nigeria.

---

## About SafePulse

SafePulse is a community safety reporting and analytics platform designed to help NGOs, humanitarian organizations, and community safety stakeholders make faster, more informed intervention decisions.

The platform enables individuals to report incidents of domestic violence, sexual assault, harassment, and child abuse through multiple channels — including a mobile app, web dashboard, community centers, and hotlines. Reported data is aggregated and visualized in an analytics dashboard that surfaces hotspot locations, demographic vulnerability patterns, severity distributions, and perpetrator relationship insights.

> ⚠️ **Note:** This project was developed as part of a hackathon. The dataset used in this analysis is **entirely synthetic** and was designed to simulate realistic reporting patterns across Nigerian regions for analytical and demonstration purposes. It does not represent official crime statistics or real incident records.

---

## Problem Statement

Violence, abuse, and community distress incidents are significantly underreported across many Nigerian communities due to fear, stigma, and limited access to safe reporting mechanisms. Even where reports exist, data is often siloed, unanalyzed, or unavailable to the organizations that need it most.

SafePulse aims to bridge this gap by providing:
- Accessible, multi-channel reporting for vulnerable individuals
- A centralized analytics layer for safety stakeholders
- Actionable insights to guide resource allocation and early intervention

---

## Key Features

- **Incident Reporting** — Multi-channel intake via mobile app, web dashboard, hotline, and community centers
- **Hotspot Analysis** — Geographic visualization of high-concentration incident locations
- **Severity Monitoring** — Risk classification across Critical, High, Medium, and Low categories
- **Demographic Insights** — Breakdown by gender, age group, and victim profile
- **Perpetrator Relationship Analysis** — Patterns in how perpetrators relate to victims
- **Trend Tracking** — Month-over-month incident trends from January 2025 to April 2026

---

## Dashboard & Analysis

This repository includes a Power BI dashboard (`SAFE_PULSE_POWER_BI_ANALYSIS.pbix`) and an accompanying analysis report (`SafePulse_Incidence_Analysis_Report.pdf`) covering **1,120 simulated incidents** across selected Nigerian states.

## Dashboard Preview

<img width="1320" height="742" alt="image" src="https://github.com/user-attachments/assets/5cfd0063-2de0-4896-8123-af7b0a43519c" />
> *Full dashboard includes detailed severity, demographic, and hotspot analysis pages.*

### Key Findings

- **Most reported incident type:** Domestic Violence, followed by Sexual Assault and Harassment
- **Top hotspot locations:** Kaduna, Lagos, Uyo, Ibadan, and Port Harcourt
- **Gender distribution:** ~80% of reported victims were female
- **Highest severity concentration:** Children and teenagers, relative to their reporting volume
- **Most used reporting channel:** Mobile App, followed by the web Dashboard
- **Perpetrator patterns:** Many incidents involved perpetrators known to the victim — relatives, neighbors, intimate partners, employers, and colleagues

---

## Repository Structure

```
safepulse/
├── SAFE_PULSE_POWER_BI_ANALYSIS.pbix   # Power BI dashboard file
├── SafePulse_Incidence_Analysis_Report.pdf  # Full analysis report
└── README.md
```

---

## How to View the Dashboard

1. Download and install [Microsoft Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free)
2. Clone or download this repository
3. Open `SAFE_PULSE_POWER_BI_ANALYSIS.pbix` in Power BI Desktop

---

## Data Disclaimer

The dataset used in this project is **synthetic** and was generated solely for:
- Hackathon demonstration and experimentation
- Dashboard design and analytics prototyping
- AI/ML simulation and exploratory analysis

It does not reflect real incidents, real individuals, or official statistics from any Nigerian government body or law enforcement agency.

---

## Recommendations from the Analysis

Based on findings from the dataset, the dashboard surfaces the following intervention priorities:

1. **Strengthen early intervention systems** for children, teenagers, and domestic violence victims
2. **Expand low-barrier reporting channels** — mobile and hotline access especially
3. **Run public awareness campaigns** to reduce fear-related underreporting
4. **Prioritize high-risk locations** for NGO monitoring and emergency response
5. **Improve data collection standards** for long-term forecasting

---

## Author
**orevaagba-coder** — Data Analysis, Dashboard Design & Report Writing
---

## License

This project is submitted as a hackathon entry. Dataset and materials are for demonstration purposes only.

