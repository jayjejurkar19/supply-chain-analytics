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

## 💡 Business Recommendations

Based on the analysis:

1. Review **high inventory holding costs** to reduce unnecessary capital tied up in stock.
2. Strengthen **supplier performance monitoring** using OTIF and quality KPIs.
3. Investigate the causes of **shipment delays and partial fulfillment**.
4. Align **warehouse inventory with regional demand**.
5. Closely monitor products exposed to **high-demand and long-lead-time risk**.

---

## 📊 Dashboard

### Power BI Dashboard

The Power BI dashboard provides an interactive view of key supply-chain metrics, KPIs, and trends.

### Key Performance Indicators (KPIs)

* **Total Orders:** 2K
* **Total Order Value:** ₹88.08M
* **Total Shipments:** 2K
* **OTIF:** 475

### Dashboard Visuals

* Total Orders by Delivery Status
* Total Stock by Category
* Total Quantity Ordered vs Total Quantity Shipped by Category
* Total Order Value by Category
* Total Order Value by Warehouse
* Total Orders by Region
* Total Order Value by Region
* Total Shipments by Carrier
* Average Quality Rating and Average Lead Time by Supplier

### Filters / Slicers

* Region and State
* Warehouse
* Carrier
* Category
* Supplier Name
* Delivery Status

---

## 📁 Project Structure

```text
supply-chain-analytics/
│
├── README.md
├── raw_orders.csv
├── raw_inventory.csv
├── raw_suppliers.csv
├── raw_shipment.csv
├── supply_chain_eda.sql
├── supply_chain_dashboard.pbix
└── dashboard.png
```
