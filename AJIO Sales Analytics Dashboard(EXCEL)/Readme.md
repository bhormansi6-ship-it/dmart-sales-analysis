# AJIO Sales Analytics Dashboard

An Excel-based sales analytics project built on 500 AJIO orders from calendar year 2023. The workbook cleans the raw order data, summarises it with pivot tables, and presents the results in an interactive KPI dashboard with slicers.

> **Note:** This is a sample dataset created for learning and portfolio purposes.

## Dashboard Preview

![Sales Insights Dashboard](screenshots/dashboard.png)
![KPI Dashboard](screenshots/kpi_dashboard.png)
![Pivot Charts](screenshots/pivot_charts.png)

## Objective

Analyse a year of e-commerce orders to understand:

- Which categories, brands, regions and channels drive revenue and profit
- How sales change month by month
- How discounts, returns and customer ratings affect performance

## Dataset

**500 orders** (1 Jan 2023 to 31 Dec 2023) with 21 columns:

| Group | Columns |
|-------|---------|
| Order | Order ID, Order Date, Order Month, Project Name (sale campaign) |
| Product | Category, Brand |
| Customer / Channel | Region, Channel, Payment Mode, Gender |
| Sales | Units Sold, Unit Price, Revenue, Discount %, Discount Amount, Net Revenue |
| Profit | Cost, Gross Profit |
| Returns & Feedback | Returns (units), Return Amount, Customer Rating |

- **7 categories:** Kids, Home & Living, Footwear, Beauty, Accessories, Sports, Clothing
- **5 regions:** North, South, East, West, Central
- **3 channels:** App, Mobile Web, Website
- **5 payment modes:** UPI, Wallet, COD, Debit Card, Credit Card

## Workbook Structure

| Sheet | Purpose |
|-------|---------|
| Raw Data | Original order data with calculated columns |
| Sheet1 | Cleaned data used for analysis |
| PIVOT TABLE | Pivot tables and pivot charts by month, category, region, brand and payment mode |
| KPI Dashboard | KPI cards plus monthly, category, region, channel and payment summaries |
| DASHBOARD | Interactive dashboard with charts and slicers |

## Key KPIs

| Metric | Value |
|--------|-------|
| Total Revenue | ₹1,06,41,857 (~₹1.06 Cr) |
| Net Revenue (after discounts) | ₹84,54,342 |
| Gross Profit | ₹35,99,485 |
| Total Orders | 500 |
| Units Sold | 3,897 |
| Average Order Value | ₹21,284 (Revenue ÷ Orders) |
| Gross Profit Margin | 33.8% |
| Total Discount Given | ₹21,87,515 |
| Average Customer Rating | 3.72 / 5 |

## Key Insights

1. **Kids is the top category by revenue** (₹17.1 L), followed closely by Home & Living and Footwear. Clothing is the lowest (₹11.5 L).
2. **Home & Living and Footwear earn the most profit** (about ₹5.8 L each), while Clothing earns the least despite a healthy margin.
3. **Revenue is spread evenly across regions.** South leads (₹22.5 L) and East trails (₹18.3 L), about 18% below the top.
4. **Mobile Web is the strongest channel**, bringing in about 42% of revenue (₹44.2 L), ahead of App and Website.
5. **December is the peak month** (₹12.3 L), followed by May and July. January and June are the weakest months.
6. **Adidas and Levis are the top brands** by revenue (about ₹12.6 L and ₹12.3 L).
7. **Digital payments lead:** Wallet and UPI together contribute about half of total revenue, while COD is still about 18%.
8. **Top campaigns:** AJIO Fashion Fiesta and AJIO Back to Campus generated the most revenue.

## Tools & Skills Used

- Microsoft Excel
- Formulas (`COUNTIF`, `SUMIF`, `TEXT`, etc.)
- Pivot Tables and Pivot Charts
- Slicers for interactive filtering
- KPI dashboard design
- Data cleaning and business analysis

## How to Use

1. Download `AJIO_Sales_Analytics.xlsx`
2. Open it in Microsoft Excel (slicers need Excel 2013 or later)
3. Go to the **DASHBOARD** sheet and use the slicers to filter the data

## Author
Mansi Bhor
