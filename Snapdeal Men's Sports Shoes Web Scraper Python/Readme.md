# Snapdeal Men's Sports Shoes Web Scraper

A Python web scraping capstone project that collects men's sports shoes listings from [Snapdeal](https://www.snapdeal.com/products/mens-footwear-sports-shoes), cleans the data, saves it to CSV, and analyses brand and pricing trends.

> **Disclaimer:** This project was built for educational purposes only. The data was collected from publicly visible product listings with a small delay between requests. Please check a website's terms of service and `robots.txt` before scraping it.

## What the Project Does

1. **Scrapes** the first 3 listing pages of men's sports shoes on Snapdeal
2. **Extracts** product name, brand, original price, discounted price, discount percentage, rating and review count
3. **Cleans** the data (price parsing with regex, duplicate removal, missing value handling)
4. **Saves** the result to `snapdeal_mens_sports_shoes.csv`
5. **Analyses** the data and plots charts with pandas and matplotlib

## Tech Stack

| Tool | Purpose |
|------|---------|
| Python | Core language |
| requests | Fetching web pages |
| BeautifulSoup4 | Parsing HTML |
| re (regex) | Extracting numbers from price and rating text |
| pandas | Data cleaning and analysis |
| matplotlib | Charts |
| Jupyter Notebook | Development environment |

## Repository Structure

```
snapdeal-sports-shoes-scraper/
├── README.md
├── requirements.txt
├── snapdeal_scraper.ipynb
└── data/
    └── snapdeal_mens_sports_shoes.csv
```

## Dataset Columns

| Column | Description |
|--------|-------------|
| Product Name | Full product title |
| Brand | Estimated from the first word of the product name |
| Original Price | MRP in ₹ |
| Discounted Price | Selling price in ₹ |
| Discount Percentage | Discount shown on the listing (calculated if missing) |
| Rating | Product rating |
| Number of Reviews | Count of ratings or reviews |

## Key Findings

From the run of this notebook (3 pages, 60 listings, **37 unique products** after removing duplicates):

- **Campus and ASIAN are the most listed brands**, with 12 products each, followed by DUCKINS (5) and Clymb (3). Together these four brands account for 32 of the 37 products.
- **Average discounted price is about ₹701**, so this category is strongly budget-focused.
- **Average discount is about 61%** off the listed original price.

Charts included in the notebook:

- Top brands by product count (bar chart)
- Distribution of discounted prices (histogram)

## How to Run

```bash
git clone https://github.com/<your-username>/snapdeal-sports-shoes-scraper.git
cd snapdeal-sports-shoes-scraper
pip install -r requirements.txt
jupyter notebook
```

Open `snapdeal_scraper.ipynb` and run the cells from top to bottom. The scraper creates a fresh CSV file each time.

## Limitations

- The scraper depends on Snapdeal's current HTML class names. If the website changes its layout, the selectors in the notebook will need updating.
- Only the first 3 listing pages are scraped.
- Brand is guessed from the first word of the product name, so a few brands may be incomplete.
- Prices and discounts change frequently, so results will differ on every run.

## Future Improvements

- Scrape more pages and more categories
- Extract the exact brand from the product detail page
- Add price vs discount analysis and brand-wise average price charts
- Schedule the scraper to track price changes over time

## Author
Mansi Bhor
