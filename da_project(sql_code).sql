select * from df_orders;

select distinct ship_mode from df_orders;

-- find top selling product
select product_id, sum(sale_price) as sales
from df_orders
group by product_id
order by sales desc
limit 1
offset 0
;

-- find top 5 highest selling products in each region
with cte as (
select region, product_id, sum(sale_price) as sales
from df_orders
group by region, product_id
)
select * from(
select * 
, row_number() over(partition by region order by sales desc) as rn
from cte) A
where rn<=5;


-- find month over month growth comparison for 2022 and 2023 sales eg : jan 2022 vs jan 2023
with cte as (
select extract(year from order_date) as year, extract(month from order_date) as month,
sum(sale_price) as sales
from df_orders
group by year, month
-- order by  year, month 
)
select month,
sum(case
	when year = 2022 then sales else 0 end) as sales_2022,
sum(case
	when year = 2023 then sales else 0 end) as sales_2023
from cte
group by month
order by month;

-- for each category which month had highest sales
with cte as (
select category, to_char(order_date, 'yyyy, Month') as order_year_month, 
sum(sale_price) as sales
from df_orders
group by category, order_year_month
)
select * from (
select *,
row_number() over(partition by category order by sales desc) as rn
from cte) A
where rn = 1;

-- which sub category had highest growth by profit in 2023 compare to 2022
with cte as (
select sub_category, extract(year from order_date) as year, 
sum(sale_price) as sales
from df_orders
group by sub_category, year
-- order by  year, month 
),
cte2 as (
select sub_category,
sum(case
	when year = 2022 then sales else 0 end) as sales_2022,
sum(case
	when year = 2023 then sales else 0 end) as sales_2023
from cte
group by sub_category
)
select *,
(sales_2023-sales_2022)*100/sales_2022 as sales_growth_percentage
from cte2
order by sales_growth_percentage desc
limit 1;


