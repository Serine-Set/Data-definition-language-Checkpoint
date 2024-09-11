--create vehicles table
CREATE TABLE Vehicles (
    VehicleID INT  PRIMARY KEY,
    LicensePlate VARCHAR(20),
    Make VARCHAR(20),
    Model VARCHAR(20),
    Year INT,
    Color VARCHAR(20),
    VIN VARCHAR(20)
    );

-- Insert records into the Vehicles table
INSERT INTO Vehicles (VehicleID, LicensePlate, Make, Model, Year, Color, VIN)
VALUES 
('1','ABC123', 'Toyota', 'Corolla', 2020, 'White', '1HGCM82633A004352'),
('2','XYZ789', 'Ford', 'Fusion', 2018, 'Blue', '2HGCM82633A004353');



--Create drivers table
CREATE TABLE Drivers (
    DriverID INT  PRIMARY KEY,
    FirstName VARCHAR(20) NOT NULL,
    LastName VARCHAR(20) NOT NULL,
    LicenseNumber VARCHAR(20) NOT NULL,
    Phone VARCHAR(20) NOT NULL,
    Address VARCHAR(20) NOT NULL,
    City VARCHAR(20) NOT NULL,
    State VARCHAR(20) NOT NULL,
    ZipCode VARCHAR(20) NOT NULL
    );

-- Insert records into the Drivers table
INSERT INTO Drivers (DriverID, FirstName, LastName, LicenseNumber, Phone, Address, City, State, ZipCode)
VALUES 
('1','Michael', 'Smith', 'D1234567', '1234567890', '123 Main St', 'Anytown', 'CA', '12345'),
('2', 'Sarah', 'Connor', 'D7654321', '0987654321', '456 Elm St', 'Otherville', 'NY', '54321');



-- Create trips table
CREATE TABLE Trips (
    TripID INT  PRIMARY KEY,
    VehicleID INT NOT NULL,
    DriverID INT NOT NULL,
    StartDate DATE NOT NULL,
    EndDate DATE NOT NULL,
    StartLocation VARCHAR(20) NOT NULL,
    EndLocation VARCHAR(20) NOT NULL,
    Distance INT NOT NULL,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID),
    FOREIGN KEY (DriverID) REFERENCES Drivers(DriverID)
    );

-- Insert records into the Trips table
INSERT INTO Trips (TripID, VehicleID, DriverID, StartDate, EndDate, StartLocation, EndLocation, Distance)
VALUES 
('1', 1, 1, '2024-07-01', '2024-07-02', 'Los Angeles', 'San Francisco', 380),
('2', 2, 2, '2024-07-03', '2024-07-04', 'New York', 'Washington D.C.', 225);



--Create maintenance table
CREATE TABLE Maintenance (
    MaintenanceID INT  PRIMARY KEY,
    VehicleID INT NOT NULL,
    MaintenanceDate DATE NOT NULL,
    Description VARCHAR (20) NOT NULL,
    Cost float NOT NULL,
    FOREIGN KEY (VehicleID) REFERENCES Vehicles(VehicleID)
    );

-- Insert records into the Maintenance table
INSERT INTO Maintenance (MaintenanceID, VehicleID, MaintenanceDate, Description, Cost)
VALUES 
('1',1, '2024-06-15', 'Oil change', 50.00),
('2', 2, '2024-06-20', 'Tire replacement', 300.00);


select * from Vehicles
select * from Drivers
select * from Trips
select * from Maintenance


--Update cost in maintenance table
update Maintenance 
set Cost = '350000' 
where cost = '300.000'

select * from Maintenance

-------Delete vehicle 1 from vehicle table------

-- Drop foreign key from Trips table
ALTER TABLE Trips
DROP constraint FK__Trips__VehicleID__7A672E12;

-- Drop foreign key from Maintenance table
ALTER TABLE Maintenance
DROP constraint FK__Maintenan__Vehic__7E37BEF6;

-- Drop primary key from Vehicles table
Alter Table vehicles
Drop constraint PK__Vehicles__476B54B2B5CD56DF

-- Delete vehicle 1 from the table
delete from Vehicles
where LicensePlate = 'ABC123'

select * from Vehicles



--Insert a new row in Trips table
insert into Trips ( TripID, VehicleID, DriverID, StartDate, EndDate, StartLocation, EndLocation, Distance)
VALUES 
('3', '2', '1', '2024-07-05', '2024-07-06', 'Boston', 'Philadelphia', 300);

select * from Trips



--Update Color in Vehicles table
update Vehicles 
set Color = 'red' 
where Color = 'blue';  

select * from Vehicles

-- Add a new row in maintenance table 
insert into Maintenance ( VehicleID,MaintenanceID, MaintenanceDate, Description, Cost)
values ('1','3', '2024-07-10','Brake inspection', '100.000');  

select * from Maintenance

--Update the Phone number in drivers table
update Drivers
set Phone = '2223334444'
where DriverID = 1; 

select * from Drivers

--Delete the trip with TripID = 2 from the Trips table
delete from Trips
where TripID = '2';

select * from Trips


