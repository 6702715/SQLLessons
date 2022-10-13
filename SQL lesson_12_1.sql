SELECT * FROM [WideWorldImporters].[Sales].[Customers] WHERE CustomerName LIKE 'Wingtip Toys%'

SELECT ol.OrderID, o.OrderDate, c.CustomerName, ol.Quantity*ol.UnitPrice Amount 
FROM Sales.Orders o, Sales.OrderLines ol, Sales.Customers c 
WHERE o.OrderID = ol.OrderID AND o.CustomerID = c.CustomerID
ORDER BY o.OrderID

SELECT ol.OrderID, o.OrderDate, c.CustomerName, ol.Quantity*ol.UnitPrice Amount 
FROM Sales.Orders o, Sales.OrderLines ol, Sales.Customers c 
WHERE o.OrderID = ol.OrderID AND o.CustomerID = c.CustomerID AND o.OrderDate >= '2014-01-01' AND o.OrderDate <= '2014-01-31'
ORDER BY o.OrderID

SELECT TOP(1) ol.OrderID, c.CustomerName, SUM(ol.Quantity*ol.UnitPrice) Amount 
FROM Sales.Orders o, Sales.OrderLines ol, Sales.Customers c 
WHERE o.OrderID = ol.OrderID AND o.CustomerID = c.CustomerID
GROUP BY c.CustomerName, ol.OrderID
ORDER BY Amount DESC

SELECT TOP(20) ol.OrderID, c.CustomerName, SUM(ol.Quantity*ol.UnitPrice) Amount 
FROM Sales.Orders o, Sales.OrderLines ol, Sales.Customers c 
WHERE o.OrderID = ol.OrderID AND o.CustomerID = c.CustomerID
GROUP BY c.CustomerName, ol.OrderID
ORDER BY Amount DESC

SELECT AVG(main.Amount) 
FROM
(SELECT SUM(ol.Quantity*ol.UnitPrice) Amount 
FROM Sales.OrderLines ol
GROUP BY ol.OrderID) main