# Superstore Sales Dashboard (Power BI)

An interactive Power BI dashboard that analyses retail sales for a Superstore business. It tracks overall performance (sales, orders, customers, products), monthly trends, top states, category split and best-selling products, with filters for year, region, category and sub-category.

## Dashboard Preview

![Superstore Sales Overview Dashboard](screenshots/sales_overview_dashboard.png)

## Objective

Help business users answer questions such as:

- How much are we selling, and how does it change month to month?
- Which states and product categories drive the most sales?
- Which individual products are the top performers?
- How big is our customer and product base?

## KPIs

| KPI | Value |
|-----|-------|
| Total Sales | 2.26M |
| Total Orders | ~5K |
| Average Order Value | 459.48 |
| Total Products | ~2K |
| Total Customers | 793 |

Each KPI card includes a small trend line.

## Visuals

| Visual | What it shows |
|--------|---------------|
| Sales by Month | Monthly sales (columns) with order count (line) |
| Top 8 States by Sales | Horizontal bar chart of the highest-selling states |
| Sales by Category | Donut chart of the category split |
| Top 10 Products by Sales | Table with category, product name and total sales |
| Slicers | Year, Region, Category, Sub-Category |

## Key Insights

1. **Technology is the top category** with about 827K in sales (36.6%), followed by Furniture (729K, 32.2%) and Office Supplies (705K, 31.2%). The three categories are fairly balanced.
2. **California and New York lead by a wide margin.** California is at about 0.45M and New York about 0.31M. Texas is third at about 0.17M, then Washington and Pennsylvania.
3. **Sales are strongly seasonal.** November (about 0.35M), December (about 0.32M) and September (about 0.30M) are the peak months. February is the lowest (about 0.06M).
4. **The best-selling product is the Canon imageCLASS 2200 Advanced Copier**, at about 61.6K in sales, well ahead of the next product. The top 10 products are dominated by Technology and binding machines in Office Supplies.
5. **The business serves 793 customers with an average order value of 459.48.**

## Tools & Skills

- Power BI Desktop
- Data modelling and cleaning (Power Query)
- DAX measures (Total Sales, Total Orders, Average Order Value, etc.)
- Interactive dashboard design with slicers and KPI cards

## Repository Structure

```
superstore-sales-powerbi-dashboard/
├── README.md
├── Superstore_Sales_Dashboard.pbix
├── data/
│   └── superstore_sales.csv
└── screenshots/
    └── sales_overview_dashboard.png
```

## How to Use

1. Download `Superstore_Sales_Dashboard.pbix`.
2. Open it in **Power BI Desktop** (free to download from Microsoft).
3. If the data does not refresh, go to **Home → Transform data → Data source settings** and point the source to `data/superstore_sales.csv` on your computer.
4. Use the slicers at the top to filter by year, region, category and sub-category.

## Author

**<Your Name>**
GitHub: [@<your-username>](https://github.com/<your-username>)
