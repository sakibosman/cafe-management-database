--Top Selling Products:
SELECT p.Name, COUNT(od.ProductID) AS TotalSales
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.ProductID, p.Name
ORDER BY TotalSales DESC;

--Monthly Sales Trend:
SELECT TO_CHAR(o.OrderDate, 'YYYY-MM') AS Month, SUM(o.TotalPrice) AS MonthlySales
FROM Orders o
GROUP BY TO_CHAR(o.OrderDate, 'YYYY-MM')
ORDER BY Month;

--Top Selling Food:
SELECT p.Name, COUNT(od.ProductID) AS TotalSales
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE p.Category = 'Food'
GROUP BY p.ProductID, p.Name
ORDER BY TotalSales DESC;

--Top Selling Beverage:
SELECT p.Name, COUNT(od.ProductID) AS TotalSales
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
WHERE p.Category = 'Beverage'
GROUP BY p.ProductID, p.Name
ORDER BY TotalSales DESC;


--Product Category Sales Distribution:
SELECT p.Category, COUNT(od.ProductID) AS TotalSales
FROM Products p
LEFT JOIN OrderDetails od ON p.ProductID = od.ProductID
GROUP BY p.Category
ORDER BY TotalSales DESC;

--report on the current inventory status
SELECT 
    p.Name AS ProductName,
    i.QuantityInStock,
    s.CompanyName AS Supplier,
    i.LastOrderedDate
FROM 
    Inventory i
    JOIN Products p ON i.ProductID = p.ProductID
    JOIN Suppliers s ON i.SupplierID = s.SupplierID;

--which employees have served which members
SELECT 
    e.FirstName || ' ' || e.LastName AS EmployeeName,
    m.FirstName || ' ' || m.LastName AS MemberName
FROM 
    Orders o
    JOIN Employees e ON o.EmployeeID = e.EmployeeID
    JOIN Members m ON o.MemberID = m.MemberID;

