# E-Commerce Sales Funnel Analysis

## 📊 Project Overview
This project analyzes an e-commerce sales funnel using SQL in Google BigQuery. The analysis examines user behavior from initial page view through purchase completion, identifying conversion rates, drop-off points, and revenue metrics.

## 🎯 Business Questions Answered

1. **How many users reach each stage of the funnel?**
2. **What are the conversion rates between each stage?**
3. **Which traffic sources drive the most conversions?**
4. **How long does it take users to convert?**
5. **What is the revenue performance across the funnel?**

## 📁 Project Structure

sales-funnel-analysis/ ├── 01_basic_funnel.sql # Count of users at each funnel stage ├── 02_conversion_rates.sql # Conversion percentages between stages ├── 03_funnel_by_source.sql # Performance by traffic source ├── 04_time_to_conversion.sql # Average time between funnel stages ├── 05_revenue_analysis.sql # Revenue metrics and averages ├── 01_basic_funnel_results.png # Results screenshot ├── 02_conversion_rates_results.png ├── 03_funnel_by_source_results.png ├── 04_time_to_conversion_results.png ├── 05_revenue_analysis_results.png └── README.md # This file

## 🔍 Key Findings

### Funnel Overview
- **Total Visitors:** 5,000 users viewed pages
- **Add to Cart:** 1,553 users (31% conversion from views)
- **Checkout Started:** 1,103 users (71% conversion from cart)
- **Payment Info:** 899 users (82% conversion from checkout)
- **Completed Purchase:** 826 users (92% conversion from payment)
- **Overall Conversion:** 17% (view to purchase)

### Conversion Rates Between Stages
- **View → Cart:** 31% (biggest drop-off - 69% abandon)
- **Cart → Checkout:** 71%
- **Checkout → Payment:** 82%
- **Payment → Purchase:** 92%

### Revenue Metrics
- **Total Revenue:** $87,975
- **Total Buyers:** 826 customers
- **Average Order Value:** $107
- **Revenue per Visitor:** $18

### Time to Purchase
- **Average view to cart:** 11.16 minutes
- **Average cart to purchase:** 13.47 minutes
- **Average total journey:** 24.63 minutes (about 25 minutes from first view to purchase)

### Best Traffic Sources (by purchase conversion)
1. **Organic:** 343 purchases from 2,038 views (17% conversion) - BEST
2. **Email:** 177 purchases from 522 views (34% conversion) - HIGHEST conversion rate!
3. **Paid Ads:** 204 purchases from 968 views (21% conversion)
4. **Social:** 102 purchases from 1,472 views (7% conversion) - WORST

### Biggest Drop-Off Point
The largest drop-off occurs between **page view and add to cart** (69% drop). This suggests:
- Product pages may need better imagery or descriptions
- Pricing may not be competitive
- Product recommendations could be improved

## 💡 Recommendations

1. **Optimize Product Pages** - Focus on the view-to-cart conversion (biggest drop-off)
2. **A/B Test Checkout Flow** - 29% cart abandonment suggests friction
3. **Invest in Best Traffic Sources** - Analyze which sources have highest conversion rates
4. **Reduce Time to Purchase** - Send abandoned cart emails if conversion takes >2 hours
5. **Increase AOV** - Test product bundles and upsells to raise the $107 average

## 🛠️ Technologies Used

- **Google BigQuery** - Data warehouse and SQL queries
- **SQL** - Data analysis (CTEs, CASE statements, aggregations, window functions)
- **Dataset** - E-commerce user events (9,381 records from Dec 2025 - Feb 2026)

## 📈 SQL Techniques Demonstrated

- Common Table Expressions (CTEs)
- CASE WHEN statements for conditional aggregation
- DISTINCT counts for unique user tracking
- ROUND functions for clean percentage formatting
- TIMESTAMP_DIFF for time-based analysis
- GROUP BY for segmentation
- Funnel analysis methodology

## 🚀 How to Run These Queries

1. Access Google BigQuery
2. Load the dataset: `applied-dialect-493808-h0.Sql_practice.user_event`
3. Copy any `.sql` file from this repo
4. Paste into BigQuery editor
5. Click **Run**
6. View results!

## 📧 Contact

Munna Naharki
- LinkedIn: [https://www.linkedin.com/in/munna-naharki-6760883b9/]
- Email: munnanaharki123@gmail.com
- Portfolio: [https://github.com/munluns451]

---

*This analysis was completed as part of my data analytics portfolio to demonstrate SQL proficiency and business analysis skills.*