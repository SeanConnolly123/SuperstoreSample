CREATE TABLE DimProduct (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    Product_Name VARCHAR(255),
    Category VARCHAR(100),
    SubCategory VARCHAR(100)


CREATE TABLE DimRegion (
    RegionID INT IDENTITY(1,1) PRIMARY KEY,
    Region VARCHAR(50)
);


CREATE TABLE FactSales (
    SalesID INT IDENTITY(1,1) PRIMARY KEY,
    OrderID VARCHAR(50),
    ProductID INT,
    RegionID INT,
    Order_Date DATE,
    Ship_Date DATE,
    Sales DECIMAL(18,2),
    Quantity INT,
    Profit DECIMAL(18,2),
    ShippingDuration DECIMAL(10,2),

    FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID),
    FOREIGN KEY (RegionID) REFERENCES DimRegion(RegionID)
);




