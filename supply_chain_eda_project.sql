-- question 1: which product categories generate the highest total order value?

select category, sum(order_value) as total_order_value
from raw_orders
group by category
order by total_order_value desc;


-- question 2: which regions have the highest order volume and revenue?

select region, count(*) as total_orders, sum(order_value) as total_revenue
from raw_orders
group by region
order by total_revenue desc;


-- question 3: which products have high annual demand but relatively low stock on hand?

select i.sku, i.productname, i.stockonhand, i.annual_demand, round(i.stockonhand * 365.0 / i.annual_demand, 1) as days_of_inventory
from raw_inventory i
where i.annual_demand > 3000
and i.stockonhand * 365.0 / i.annual_demand < 60
order by days_of_inventory;


-- question 4: which products have the highest inventory holding cost based on current stock?

select sku, productname, warehouse, stockonhand, unitcost, holdingcostpct, round(stockonhand * unitcost * holdingcostpct, 2) as annual_holding_cost
from raw_inventory
order by annual_holding_cost desc
limit 10;


-- question 5: which warehouses are holding the most inventory value?

select warehouse, sum(stockonhand * unitcost) as inventory_value, sum(stockonhand) as total_units
from raw_inventory
group by warehouse
order by inventory_value desc;


-- question 6: which suppliers are failing to meet their otif targets?

select supplierid, suppliername, country, otif_target, actual_otif, round((otif_target - actual_otif) * 100, 2) as otif_gap_percentage
from raw_suppliers
where actual_otif < otif_target
order by otif_gap_percentage desc;


-- question 7: which suppliers have both poor quality ratings and low otif performance?

select supplierid, suppliername, qualityrating, actual_otif, otif_target
from raw_suppliers
where qualityrating < 4.0
and actual_otif < otif_target
order by actual_otif;


-- question 8: which carriers have the highest otif performance?

select carrier, count(*) as total_shipments, sum(otif_flag) as otif_shipments, round(sum(otif_flag) * 100.0 / count(*), 2) as otif_rate
from raw_shipment
group by carrier
order by otif_rate desc;


-- question 9: what percentage of shipments are delayed or delivered on time?

select on_time, count(*) as shipment_count, round(count(*) * 100.0 / (select count(*) from raw_shipment), 2) as shipment_percentage
from raw_shipment
group by on_time;


-- question 10: which shipments were partially fulfilled and what quantity was short?

select shipmentid, orderid, supplierid, quantity_ordered, qtyshipped, quantity_ordered - qtyshipped as quantity_short
from raw_shipment
where qtyshipped < quantity_ordered
order by quantity_short desc;


-- question 11: which suppliers are associated with the highest shipment delay based on promised versus actual delivery dates?

select s.supplierid, sp.suppliername, round(avg(datediff(s.actualdeliverydate, s.promiseddate)), 2) as avg_delivery_delay_days
from raw_shipment s
join raw_suppliers sp
on s.supplierid = sp.supplierid
group by s.supplierid, sp.suppliername
order by avg_delivery_delay_days desc;


-- question 12: which products have high demand, low inventory coverage, and long supplier lead times?

select i.sku, i.productname, i.warehouse, i.annual_demand, i.stockonhand, i.leadtimedays, round(i.stockonhand * 365.0 / i.annual_demand, 1) as days_of_inventory, sp.suppliername, sp.avgleadtimedays
from raw_inventory i
join raw_suppliers sp
on i.category = sp.category
where i.annual_demand > 3000
and i.stockonhand * 365.0 / i.annual_demand < 60
and i.leadtimedays >= 10
order by days_of_inventory;

-- question 13: which warehouses generate the highest inventory value?

select warehouse, sum(stockonhand * unitcost) as total_inventory_value
from raw_inventory
group by warehouse
order by total_inventory_value desc;


-- question 14: what are the average quality rating and lead time by supplier?

select suppliername, avg(qualityrating) as average_quality_rating, avg(avgleadtimedays) as average_lead_time_days
from raw_suppliers
group by suppliername
order by average_quality_rating desc;