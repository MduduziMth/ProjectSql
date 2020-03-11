
--1
select * from customers

--2
select firstname from customers

--3
select * from customers
where CustomerId = 1

--4
Update customers
set firstname = 'lerato',
    lastname = 'mabitso'
Where customerID = 1

--5
delete from customers
where customerID = 2

--6
select distinct on (status) status
from orders

--7
select Max(Amount)
from payments

--8
select *
from customers
order by country

--9
select *
from products
where Buyprice > 100
and Buyprice < 600

--10
select *
from Customers
where Country = 'Germany'
and City = 'Berlin'

--11
select * 
from customers
where City = 'Durban'
or City = 'Cape Town'

--12
select * 
from products
where buyprice > 500

--13
select sum(amount)
from payments

--14
select count(status)
from orders
where status ='Shipped'

--15
select 
 to_char(avg(Buyprice), 'FM999999999.00') as Average_in_rands,
 to_char(avg((Buyprice)/12), 'FM999999999.00') as Average_in_dollars
from products


--16
select payments.customerid, paymentid, paymentdate, amount, firstname, lastname
from payments
inner join customers 
on payments.customerid = customers.customerid

--17
select *
from products
where description Like '%Turnable front wheels%'

