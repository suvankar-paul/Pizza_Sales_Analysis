select * from pizza_sales

select sum(total_price) as total_reveneue from pizza_sales
select sum(total_price)/ count(distinct order_id) as Avg_oder_price from pizza_sales
select sum(quantity) as total_pizza_sold from pizza_sales
select count(distinct order_id) as total_oders from pizza_sales
select cast(cast(sum(quantity) as decimal(10,2)) / cast(count( distinct order_id) as decimal(10,2)) as decimal(10,2)) as Average_pizza_per_oder from pizza_sales

select datename(DW, order_date) as order_day, count(distinct order_id) as total_orders from pizza_sales group by datename(DW, order_date)
select datename(month, order_date) as month_name, count(distinct order_id) as total_orders from pizza_sales group by datename(month,order_date) order by total_orders desc 
select pizza_category, sum(total_price)*100 / (select sum(total_price) from pizza_sales) as percentage_sales from pizza_sales group by pizza_category
select pizza_size, sum(total_price)*100 / (select sum(total_price) from pizza_sales) as percentage_sales from pizza_sales group by pizza_size order by percentage_sales desc 
select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales group by pizza_name order by total_revenue desc 
select top 5 pizza_name, sum(total_price) as total_revenue from pizza_sales group by pizza_name order by total_revenue asc
select top 5 pizza_name, sum(quantity) as total_quantity from pizza_sales group by pizza_name order by total_quantity desc
select top 5 pizza_name, count(distinct order_id) as total_orders from pizza_sales group by pizza_name order by total_orders desc
select top 5 pizza_name, count(distinct order_id) as total_orders from pizza_sales group by pizza_name order by total_orders 

