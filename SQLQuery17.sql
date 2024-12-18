
select * from Customers.

select * from Employees

select * from Orders

select count(CompanyName) from Customers

select count(OrderID) from Orders

select CompanyName, city from Customers where city='London'

select CompanyName, city, ContactName from Customers where CompanyName LIKE 'A%' and city = 'London'

select COUNT(Customers.City) as Total from Customers WHERE City = 'London'

select City, count(City) as Total_Clientes_X_Ciudad from Customers group by City order by Total_Clientes_X_Ciudad Desc

-----------------------------------------------------
select * from Employees

select FirstName, LastName, BirthDate from Employees where BirthDate > '01-06-1965'

select Count(BirthDate)as resultado from Employees where BirthDate > '01-06-1965'

select CONCAT(FirstName, ' ', LastName) AS El_Empleado, BirthDate as Nacio_El from Employees 

select CONCAT(FirstName, ' ', LastName) AS El_Empleado, CONVERT(date, BirthDate)as Nacio_El from Employees 

select	CONCAT(FirstName, ' ', LastName) AS El_Empleado, 
		CONVERT(VARCHAR(10), BirthDate, 105)as Nacio_El,
		EmployeeID
		from Employees 
		where EmployeeID = '8' or EmployeeID ='7' or EmployeeID ='3' or EmployeeID = '10'


select * from Customers

select City, count(City) as Total_Clientes_X_Ciudad from Customers group by City order by Total_Clientes_X_Ciudad Desc

select  Country,count(CustomerID)AS Total_x_Pais
		from Customers 
		group by Country 
		having COUNT(CustomerID) > '5' 
		order by Total_x_Pais desc
		
select  Country,count(CustomerID)AS Total_x_Pais
		from Customers 
		group by Country 
		having COUNT(CustomerID) < '5' 
		order by Total_x_Pais desc
		
		
-------------------------------------
 select * from Orders
 select * from Customers
 
 select Customers.CompanyName, Orders.OrderID, ShipCountry, Orders.CustomerID
		from Customers
		inner join Orders
		on Orders.OrderID = '10360'

select CustomerID from Orders where OrderID = '10360'


 select Customers.CompanyName, Orders.OrderID
		from Customers
		inner join Orders
		on Orders.OrderID = '10360' or Orders.OrderID = '10253' or Orders.OrderID = '10440'
		 


 select Customers.City,Orders.OrderID
		from Customers
		inner join Orders
		on Customers.CustomerID = Orders.CustomerID

		

select COUNT(Customers.City),Orders.OrderID
		from Customers
		inner join Orders
		on Customers.CustomerID = Orders.CustomerID
		having COUNT(Customers.City) > '7'


