create table Customers( 
			 CustomerID int primary key not null, 
			 FirstName varchar(20) not null,
			 LastName varchar(20) not null, 
			 Email varchar(20) not  null, 
			 Phone varchar(20) not null, 
			 Adress varchar(20) not null, 
			 City varchar(20) not null,
			 State varchar(20) not null,
			 ZipCode varchar(20) not null
			 );

create table Categories(
			 CategoryID int primary key not null, 
			 CategoryName varchar(20) not null, 
			 Descriptions Text not null
			 );

create table Products(
			 ProductID int primary key not null,
			 ProductName varchar(20) not null, 
			 DescriptionText varchar(20) not null,
			 Price decimal(10, 2) not null,
			 Stockquantatity int not null, 
			 CategoryID int not null,
			 foreign key (CategoryID) references Categories(CategoryID)
			 );

create table Orders( 
			 OrderID int primary key not null, 
			 CustomerID int not null, 
			 OrderDate Date not null, 
			 TotalAmount decimal (10,2) not null, 
			 foreign key (CustomerID) references Customers(CustomerID)
			 );

create table OrderDetails(
			 OrderDetailsID int primary key not null, 
			 OrderID int not null, 
			 ProductID int not null,
			 Quantity int not null, 
			 UnitPrice decimal (10, 2) not null,
			 foreign key (OrderID) references Orders(OrderID),
		     foreign key (ProductID) references Products(ProductID)
			 );