# Amazon Sales Analysis

An end-to-end data analytics project analyzing Amazon sales data using Python, SQL Server, and Power BI to uncover sales trends, product performance, customer behavior, payment patterns, and business insights.

## Project Overview

This project analyzes 250 Amazon sales transactions to understand overall sales performance and identify important business trends.

The project covers the complete data analytics workflow:

Raw Sales Data
      |
      v
Python Data Cleaning
      |
      v
Exploratory Data Analysis
      |
      v
SQL Analysis
      |
      v
Power BI Dashboard
      |
      v
Business Insights

## Tools & Technologies

- Python
  - Pandas
  - NumPy
  - Matplotlib
- SQL Server
- Power BI
- Jupyter Notebook
- GitHub

## Dataset

The dataset contains 250 Amazon-style sales transactions with information about:

- Order ID
- Date
- Product
- Category
- Price
- Quantity
- Total Sales
- Customer Name
- Customer Location
- Payment Method
- Order Status
- Year
- Month
- Month Name
- Day

## Python Analysis

Python was used for:

- Data loading and inspection
- Data cleaning
- Date conversion
- Missing-value checking
- Duplicate checking
- Exploratory Data Analysis
- KPI calculation
- Product analysis
- Category analysis
- Customer analysis
- Location analysis
- Payment method analysis
- Order status analysis
- Data visualization

Libraries used:

- Pandas
- NumPy
- Matplotlib

## SQL Analysis

SQL Server was used to perform business-oriented analysis.

Key SQL analyses include:

- Total revenue
- Total quantity sold
- Total orders
- Unique products
- Revenue by product
- Revenue by category
- Monthly revenue
- Revenue by customer
- Revenue by customer location
- Payment method performance
- Order status analysis
- Cancellation rate
- Average order value
- Top 5 products
- Top 5 customers
- Payment method AOV

## Power BI Dashboard

An interactive Power BI dashboard was created to provide a visual overview of sales performance.

### Dashboard KPIs

| KPI | Value |
|---|---:|
| Total Sales | ₹243,845 |
| Total Orders | 250 |
| Total Quantity | 714 |
| Average Order Value | ₹975.38 |
| Products | 10 |
| Categories | 5 |
| Cancellation Rate | 30.80% |

### Dashboard Visualizations

- Monthly Revenue Trend
- Revenue by Product Category
- Revenue by Customer Location
- Revenue by Product
- Sales by Order Status
- Revenue by Payment Method
- Category slicer
- Customer Location slicer
- Product slicer
- Status slicer

## Key Business Insights

- Electronics generated the highest revenue at ₹129,950.
- Home Appliances generated ₹105,000 in revenue.
- Refrigerator was the highest-revenue product with ₹78,000.
- Smartwatch had the highest quantity sold with 105 units.
- PayPal generated the highest revenue among payment methods at ₹69,645.
- PayPal had the highest average order value at ₹1,160.75.
- Olivia Wilson generated the highest customer revenue at ₹36,170.
- Miami generated the highest location revenue at ₹31,700.
- There were 77 cancelled orders.
- The overall cancellation rate was 30.80%.
- February generated ₹122,695 in revenue.
- March generated ₹117,730 in revenue.
- April contains only a small partial period, so its lower revenue should not be interpreted as a full-month decline.

## Project Files

```text
Amazon-Sales-Analysis/
│
├── README.md
│
├── Data/
│   └── Amazon_Sales_Data_2025_Cleaned.csv
│
├── Python/
│   └── Amazon_Sales_Data_Exploration.ipynb
│
├── SQL/
│   └── Amazon_Sales_Data_2025.sql
│
├── PowerBI/
│   └── Amazon_Sales_Analysis.pbix
│
└── Screenshots/
    └── Amazon_Sales_Dashboard.png
