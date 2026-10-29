🛒 DMart Sales Analysis Dashboard (Excel)

An end-to-end sales analysis project built in Microsoft Excel using DMart-style retail data. It covers data cleaning, calculated columns, KPIs, Pivot Tables, charts, slicers, a timeline filter, and an interactive dashboard.

📌 Project Overview

The goal of this project is to analyze retail sales across regions, product categories and months and present the key business metrics in a single interactive dashboard.

Records: ~15,345 orders
Period: 01 Jan 2023 – 31 Dec 2024
Tool: Microsoft Excel (Tables, Formulas, Pivot Tables, Pivot Charts, Slicers, Timeline)
📂 Dataset Description
Column	Description
order_id	Unique order identifier (e.g., ORD100000)
region	Sales region (North, South, East, West)
category	Product category
sales	Sales amount
discount	Discount percentage given
discount-value	Discount amount (sales × discount)
quantity	Units sold
ORDER MONTH	Month name extracted from the order date
order_date	Date the order was placed
delivery_date	Date the order was delivered
customer_type	Type of customer (e.g., Member)
payment_mode	Payment method (e.g., UPI)
profit	Profit on the order
city	City of the order
Net Revenue	Sales after discount (sales − discount-value)
🧮 Calculated Columns
excel
Discount Value = sales * discount
Net Revenue    = sales - discount-value
ORDER MONTH    = TEXT(order_date, "MMMM")
📊 Workbook Structure
Sheet	Purpose
Sheet1	Raw/cleaned order data stored as an Excel Table
KPI	Headline KPIs: Total Sales, Total Profit, Net Revenue
Sheet4	Supporting data for pivot analysis
PIVOT TABLE	Pivot tables by Region, Category and Month
DASHBOARD	Final interactive dashboard with charts, slicers and timeline
🎯 Key KPIs
KPI	Value
Total Sales	₹3.93 Cr (₹39,262,878)
Total Profit	₹68.7 L (₹6,872,140)
Net Revenue	₹2.94 Cr (₹29,388,623)
🔍 Key Insights
🏆 North is the top-performing region (~₹1.01 Cr), followed by South, West and East.
📦 Electronics is the highest-selling category (~₹80.2 L); Clothing is the lowest (~₹76.8 L). All five categories are very close to each other.
📅 January has the highest sales (~₹34.7 L); April has the lowest (~₹31.2 L).
💸 Discounts reduced sales by roughly ₹98.7 L, bringing Net Revenue down to ~₹2.94 Cr.
Overall profit margin is about 17.5% of total sales.
📈 Dashboard Features
KPI cards (Total Sales, Total Profit, Net Revenue)
Bar chart – Total sales by region
Line chart – Total sales by month
Category-wise sales analysis
Slicers for interactive filtering
Timeline filter for date-based analysis

📷 Add a screenshot of your dashboard here: ![Dashboard](images/dashboard.png)

🛠️ Excel Skills Used
Excel Tables & structured references
Formulas (SUM, TEXT, calculated columns)
Pivot Tables & Pivot Charts
Slicers & Timeline
Dashboard design & data visualization
▶️ How to Use
Download DMART Project.xlsx from this repository.
Open it in Microsoft Excel (2016 or later recommended – slicers & timelines required).
Go to the DASHBOARD sheet and use the slicers/timeline to filter the data.

⚠️ The file is large (~40 MB). If it exceeds GitHub's 100 MB limit in future, use Git LFS.

🚀 Future Improvements
Add city-wise and customer-type analysis
Add payment-mode analysis (UPI, Card, Cash, etc.)
Delivery-time analysis (delivery_date − order_date)
Year-over-year comparison (2023 vs 2024)
Build the same dashboard in Power BI / Tableau
👤 Author
Mansi Bhor
