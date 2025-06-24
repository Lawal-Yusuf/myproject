use northwind;
select customerid,contactname
from customers;
select * from employees
where hiredate>1997;
select * from orders
where year(orderdate)<1997;
select * from customers
where city = 'london';
select productname,unitsinstock
from products
where unitsinstock < 10;
select distinct country
from customers;
select * from suppliers
where country = 'usa';
select * from products
order by productname
limit 10;
select * from products
where unitprice between 20 and 50;
select concat(firstname,' ',lastname) as fullname
from employees;
select c.categoryid, c.categoryname
from categories c
join products p on p.categoryid = c.categoryid;
select  shippedDate,freight
from orders;
select city,count(customerid)
from customers
group by city;

select * from products
where discontinued =1;
select customerid,count(*) as totalorders
from orders
group by customerid;
select c.categoryname,count(p.productname) as number_of_product
from categories c
join products p on c.categoryid = p.categoryid
group by c.categoryname;
select *
from customers
where customerid not in (select customerid from orders);
select *
from customers c on o.customerid = c.customerid
where o.orderid not in (c.customerid);
select customerid,sum(freight)as total_freight
from orders
group by customerid
order by customerid;

select e.employeeid,e.firstname,e.lastname,count(orderid)
from employees e
right join orders o on e.employeeid =o.employeeid
group by e.employeeid,e.firstname,e.lastname;

select productid,productname,unitprice
from products
order by unitprice desc
limit 5;

select o.orderid,p.productname,od.quantity
from orders o
join 'order details'od on o.orderid= od.orderid
join products p on od.productid = p.productid
order by o.orderid;
select p.productname,sum(oi.quantity) as total_quantity_order
from products
join orderdetails oi on p.product =oi.productid
group by p.productname;
select orderid
from 'order details'
group by orderid
having count(*) >3

select p.product from product
where p.productid not in(select productid from orderdetails);