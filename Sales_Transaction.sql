select* from cv_project..Sales_Transaction

select distinct CustomerNo 
from cv_project..Sales_Transaction
order by CustomerNo asc

select count(Quantity) as Total_product_sell
from cv_project..Sales_Transaction

select CustomerNo,count(Quantity) as Total_order
from cv_project..Sales_Transaction
group by CustomerNo
order by CustomerNo asc

select sum(Price) as Total_Price
from cv_project..Sales_Transaction

select Country,count(Quantity) as C_Quantity,sum(Price) as c_price 
from cv_project..Sales_Transaction
group by Country
order by c_price desc

select Country,count(Quantity) as C_Quantity,sum(Price) as c_price 
from cv_project..Sales_Transaction
group by Country
order by c_price desc

select ProductName,count(ProductName) as number_of_Product
from cv_project..Sales_Transaction
group by ProductName
order by number_of_Product desc

select CustomerNo,country,Quantity,Price
from cv_project..Sales_Transaction
where Quantity>=100 and Price>=20 and Country='United kingdom'
order by Quantity desc

select Country,Sum(Price) as price,count(Quantity) as Quantity
from cv_project..Sales_Transaction
group by Country
order by price desc

update cv_project..Sales_Transaction
set price=Price+3
where ProductNo=22422

select ProductNo,sum(Price) as price,count(Quantity) as quantity
from cv_project..Sales_Transaction
where ProductNo=22425
group by ProductNo

