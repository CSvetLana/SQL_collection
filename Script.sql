SELECT cust_country, COUNT(*) from Customers c
WHERE cust_country is not NULL 
GROUP BY cust_country 

SELECT *FROM learnsql.Vendors v 
WHERE NOT vend_id in (SELECT vend_id from learnsql.Products p)

select 
c.cust_name,
c.cust_email,
sum(oi.quantity*oi.item_price) ordersum
from
learnsql.Customers c ,learnsql.Orders o ,learnsql.OrderItems oi 
WHERE 
oi.order_num = o.order_num AND o.cust_id  = c.cust_id 
AND MONTH (o.order_date) = 2 AND YEAR (o.order_date)=2020
GROUP BY o.order_num  
order by ordersum DESC 
limit 1
