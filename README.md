# Supply Chain Analytics Project

## 📊 Project Overview

This project analyzes **orders, inventory, suppliers, shipments, and logistics performance** to identify key operational risks and opportunities.

The analysis focuses on **category and regional performance, inventory risks, holding costs, supplier performance, shipment delays, fulfillment, and high-risk products**.

The project was completed using **Excel, SQL, and Power BI**.

---

## 🛠️ Tools Used

* **Excel** – Data cleaning, validation, and initial analysis
* **SQL** – Data analysis, joins, aggregations, filtering, and business questions
* **Power BI** – Interactive dashboard and data visualization

---

## 🎯 Business Questions

1. Which product categories generate the highest total order value?
2. Which regions have the highest order volume and revenue?
3. Which products have high annual demand but relatively low stock on hand?
4. Which products have the highest inventory holding cost?
5. Which warehouses are holding the most inventory value?
6. Which suppliers are failing to meet their OTIF targets?
7. Which suppliers have both poor quality ratings and low OTIF performance?
8. Which carriers have the highest OTIF performance?
9. What percentage of shipments are delayed or delivered on time?
10. Which shipments were partially fulfilled and what quantity was short?
11. Which suppliers are associated with the highest shipment delays?
12. Which products have high demand, low inventory coverage, and long supplier lead times?
13. Which warehouses generate the highest total order value?
14. What are the average quality rating and lead time by supplier?

---

## 📈 Key Insights

### Category & Regional Performance

* **Electronics** generated the highest order value at approximately **₹32.14M**.
* **Home & Kitchen** generated approximately **₹16.96M**.
* **South** had the highest order volume with **643 orders** and approximately **₹23.18M** in order value.

### Inventory

* **Bluetooth Speaker** had approximately **15.1 days** of inventory coverage.
* **Yoga Mat** had approximately **16.1 days** of inventory coverage.
* **Non-stick Pan** had the highest estimated annual holding cost at approximately **₹325.8K**.
* **WH-Chennai** held approximately **₹3.35M** in inventory value.

### Supplier Performance

* All suppliers had actual OTIF below their stated targets.
* **SUP-05** had the largest OTIF gap at **93 percentage points**.
* Five suppliers had quality ratings below **4.0** while also falling below their OTIF targets.
* **SUP-07** had the highest average delivery delay at approximately **9.5 days**.

### Shipment & Carrier Performance

* **DHL** recorded the highest OTIF rate among the analyzed carriers at **20.74%**.
* Only **23.26%** of shipments were delivered on time, while **76.74%** were not.
* Multiple shipments had quantity shortages, with several showing an **8-unit shortfall**.

### High-Risk Products

* **Bluetooth Speaker, Yoga Mat, and Air Fryer** met the selected high-demand, low-inventory, and long-lead-time risk criteria.

---

## 💼 Business Recommendations & Action Plan

### High-Priority Issues Identified

#### **1. Critical: 76.74% of Shipments Are Delayed** 🚨

**The Problem:**

* Only 23.26% of shipments delivered on time
* All suppliers below OTIF targets
* SUP-05 has worst performance: 93% gap between target and actual

**Why It Matters:**

* Delayed orders = customer dissatisfaction
* Risk of customer churn and lost repeat business
* Estimated impact: ₹500K-1M revenue loss annually

**What To Do:**

* **Immediate (Week 1-2):** Audit top 3 underperforming suppliers (SUP-05, SUP-07, SUP-03) to find root causes

  * Is it a capacity problem? Process bottleneck? Quality issues?
* **Short-term (Month 1-2):** Set 90-day OTIF improvement targets for each supplier
* **Medium-term (Month 3):** If suppliers don't improve, consider dual-sourcing or switching carriers
* **Ongoing:** Track OTIF weekly (currently not monitored regularly)

**Success Metric:** Increase on-time delivery from 23.26% → 50%+ within 6 months

---

#### **2. High: Inventory Holding Costs Burning Capital** 💰

**The Problem:**

* Non-stick Pan alone costs ₹325.8K annually just to hold in inventory
* WH-Chennai holding ₹3.35M in inventory value
* Capital tied up that could be used for growth/operations

**Why It Matters:**

* Excess inventory = money sitting on shelves, not generating returns
* Opportunity cost: That ₹800K+ could be invested elsewhere
* Risk of obsolescence if products sit too long

**What To Do:**

* **Immediate:** Segment inventory using ABC analysis:

  * **A products** (20% of items, 80% of value): Keep current stock; high priority
  * **B products** (30% of items, 15% of value): Moderate stock levels
  * **C products** (50% of items, 5% of value): Reduce stock by 25-30%
* **Action:** Identify which items are C-category and reduce them
* **Ongoing:** Review inventory levels quarterly to prevent buildup

**Expected Result:** Save ₹200K-300K annually in carrying costs

---

#### **3. High: Three Products at Risk of Stockouts** 🎯

**The Problem:**

* Bluetooth Speaker: Only 15.1 days of inventory
* Yoga Mat: Only 16.1 days of inventory
* Air Fryer: Similar low inventory levels
* All have high annual demand (>3,000 units) but low stock
* Supplier lead times are long (10+ days)

**Why It Matters:**

* If these run out of stock: Lost sales immediately
* These are high-demand products = revenue impact
* Estimated loss per stockout: ₹50K-100K

**What To Do:**

* **Immediate:** Increase safety stock for these 3 items by 15-20%

  * Calculate: If annual demand is 4,000 units and lead time is 10 days, keep at least 120 days worth in stock
* **Short-term:** Create demand forecast for these products (predict future demand)
* **Negotiation:** Talk to suppliers about faster delivery or expedited shipping
* **Monitoring:** Set automated alerts if stock drops below 30-day threshold

**Success Metric:** Zero stockouts on these 3 products in next 12 months

---

#### **4. Medium: Regional Demand Not Aligned With Warehouse Stock** 📍

**The Problem:**

* South region has highest orders (643 orders, ₹23.18M revenue)
* Electronics is top category (₹32.14M revenue)
* But warehouse inventory allocation may not reflect this demand

**Why It Matters:**

* Mismatch = longer fulfillment times
* Longer fulfillment = higher shipping costs + customer delays

**What To Do:**

* **Action:** Shift 15-20% of Electronics inventory to South region warehouses
* **Reason:** South generates most revenue; should have faster access to top products
* **Result:** Reduce fulfillment time by 1-2 days, improve customer satisfaction

---

#### **5. Medium: Supplier Quality + Delivery Issues Together** ⚠️

**The Problem:**

* 5 suppliers have quality rating <4.0 AND are below OTIF targets
* These suppliers pose a "double risk": poor quality + late delivery

**Why It Matters:**

* Products arrive late AND damaged = double customer dissatisfaction
* May need to replace these suppliers if problems continue

**What To Do:**

* **Monthly Review:** Track these 5 suppliers' quality and OTIF together
* **Red Flag:** If either metric gets worse, escalate to management
* **Decision Point:** If both metrics stay poor for 3 months, consider replacing supplier
* **Target:** All suppliers should have QualityRating ≥4.0 AND OTIF ≥80%

---

### Summary: What To Do First (Priority Order)

| Priority            | Action                                  | Timeline | Expected Benefit                   |
| ------------------- | --------------------------------------- | -------- | ---------------------------------- |
| **#1 (Critical)**   | Audit supplier delays                   | Week 1-2 | On-time delivery: 23% → 50%        |
| **#2 (High ROI)**   | ABC inventory analysis                  | Week 2-4 | Save ₹200K-300K/year               |
| **#3 (Risk)**       | Increase safety stock for 3 products    | Week 3-4 | Prevent ₹50K-100K stockout losses  |
| **#4 (Efficiency)** | Realign warehouse stock to South region | Month 2  | Reduce fulfillment time by 2 days  |
| **#5 (Ongoing)**    | Monthly supplier quality review         | Ongoing  | Maintain/improve quality standards |

---

### Expected Business Impact (6-Month Horizon)

* **On-Time Delivery:** 23.26% → 50%+ (huge improvement in customer satisfaction)
* **Inventory Costs:** ₹800K+ → ₹500K (₹300K annual savings)
* **Stockout Risk:** 2-3 incidents/year → 0 (revenue protection: ₹50K-100K)
* **Fulfillment Speed:** South region 1-2 days faster
* **Supplier Quality:** 5 underperforming suppliers on improvement plan

---

## 📊 Dashboard

The Power BI dashboard provides an interactive view of supply-chain performance across **orders, inventory, shipments, suppliers, categories, warehouses, and regions**.

### Key Performance Indicators (KPIs)

* **Total Orders:** 2K
* **Total Order Value:** ₹88.08M
* **Total Shipments:** 2K
* **OTIF Yes Count:** 475

### DAX Measures

The following DAX measures were created in Power BI:

```dax
Total Stock = 
SUM(raw_inventory[stockonhand])

Total Order Value = 
SUM(raw_orders[order_value])

Total Orders = 
DISTINCTCOUNT(raw_orders[orderid])

Total Quantity Ordered = 
SUM(raw_orders[qty_ordered])

Total Quantity Shipped = 
SUM(raw_shipment[qtyshipped])

Total Shipments = 
DISTINCTCOUNT(raw_shipment[shipmentid])

OTIF Yes Count = 
CALCULATE(
    COUNTROWS(raw_shipment),
    raw_shipment[OTIF] = "Yes"
)
```

### Dashboard Visuals

* **Total Orders by Delivery Status** — Donut Chart
* **Total Shipments by Carrier** — Donut Chart
* **Total Order Value by Category** — Clustered Bar Chart
* **Total Stock by Category** — Column Chart
* **Total Quantity Ordered vs Total Quantity Shipped by Category** — Column Chart
* **Average Quality Rating and Average Lead Time by Supplier** — Column Chart
* **Total Order Value by Warehouse** — Column Chart
* **Total Orders by Region** — Column Chart
* **Total Order Value by Region** — Column Chart

### Filters / Slicers

* Region and State
* Category
* Delivery Status
* Supplier Name
* Carrier
* Warehouse
* Clear All Slicers

---

## 📗 Excel

Excel was used for **data cleaning, formatting, and initial data analysis** before importing the data into Power BI.

### Data Cleaning & Preparation

The following cleaning and preparation steps were performed:

* **Removed duplicate records** to avoid duplicate entries in the analysis.
* **Analysed the data using Excel Filters** to review and examine individual product categories and identify category-level patterns.
* **Standardized date formatting** by changing dates from Long Date format to **Short Date format (`DD-MM-YYYY`)**.
* **Formatted currency values** and added the **₹ (Indian Rupee)** currency format to relevant monetary fields.
* **Reviewed the dataset for consistency** before using it for SQL analysis and Power BI visualization.

---

## 📁 Project Structure

```text
supply-chain-analytics/
│
├── README.md
│
├── Supply Chain Data.xlsx
│   └── Cleaned and formatted Excel dataset
│
├── raw_inventory.csv
├── raw_orders.csv
├── raw_shipment.csv
├── raw_suppliers.csv
│
├── supply_chain_eda_project.sql
│   └── SQL queries for supply-chain analysis
│
├── SUPPLY CHAIN DASHBOARD.pbix
│   └── Power BI dashboard file
│
├── Supply Chain DashBoard ScreenShot1.png
│   └── Power BI dashboard screenshot – Page 1
│
└── Supply Chain DashBoard ScreenShot2.png
    └── Power BI dashboard screenshot – Page 2
```

