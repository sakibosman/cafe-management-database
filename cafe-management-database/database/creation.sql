-- Employees Table
CREATE TABLE Employees (
    EmployeeID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Position VARCHAR2(50),
    HireDate DATE
);

-- Members Table
CREATE TABLE Members (
    MemberID NUMBER PRIMARY KEY,
    FirstName VARCHAR2(50),
    LastName VARCHAR2(50),
    Email VARCHAR2(100),
    PhoneNumber VARCHAR2(15)
);

-- Products Table
CREATE TABLE Products (
    ProductID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Description VARCHAR2(60),
    Price DECIMAL(10, 2),
    Category VARCHAR2(50)  
);

-- Suppliers Table
CREATE TABLE Suppliers (
    SupplierID NUMBER PRIMARY KEY,
    CompanyName VARCHAR2(50),
    ContactName VARCHAR2(60),
    ContactEmail VARCHAR2(50),
    Phone VARCHAR2(15)
);

-- Inventory Table
CREATE TABLE Inventory (
    InventoryID NUMBER PRIMARY KEY,
    ProductID NUMBER,
    SupplierID NUMBER,
    QuantityInStock NUMBER,
    LastOrderedDate DATE,  
    CONSTRAINT fk_Inventory_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    CONSTRAINT fk_Inventory_SupplierID FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID)
);

-- Orders Table
CREATE TABLE Orders (
    OrderID NUMBER PRIMARY KEY,
    MemberID NUMBER,
    EmployeeID NUMBER,
    OrderDate DATE,
    TotalPrice DECIMAL(10, 2),
    CONSTRAINT fk_Orders_MemberID FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    CONSTRAINT fk_Orders_EmployeeID FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID)
);

-- Order Details Table
CREATE TABLE OrderDetails (
    OrderDetailID NUMBER PRIMARY KEY,
    OrderID NUMBER,
    ProductID NUMBER,
    Quantity NUMBER CHECK (Quantity > 0),
    LineTotal DECIMAL(10, 2),
    CONSTRAINT fk_OrderDetails_OrderID FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    CONSTRAINT fk_OrderDetails_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Members Point Table
CREATE TABLE MembersPoint (
    MemberPointID NUMBER PRIMARY KEY,
    MemberID NUMBER,
    PointsEarned NUMBER CHECK (PointsEarned >= 0),
    PointsRedeemed NUMBER CHECK (PointsRedeemed >= 0),
    LastDateEarned DATE,  
    CONSTRAINT fk_MembersPoint_MemberID FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

-- Redeem Points Table
CREATE TABLE RedeemPoints (
    RedeemPointID NUMBER PRIMARY KEY,
    ProductID NUMBER,
    PointsRequired NUMBER CHECK (PointsRequired > 0),
    Limit NUMBER,
    RedeemStartDate DATE, 
    CONSTRAINT fk_RedeemPoints_ProductID FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
