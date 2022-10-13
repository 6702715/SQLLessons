Use WideWorldImporters;
SELECT * FROM Sales.OrderLines WHERE UnitPrice > 100;
SELECT TOP(100) OrderID, StockItemID, [Description], Quantity, UnitPrice FROM Sales.OrderLines;
SELECT TOP(100) OrderID, StockItemID, [Description], Quantity, UnitPrice, (Quantity*UnitPrice) AS SUMM FROM Sales.OrderLines;
SELECT TOP(100) SO.OrderID, WS.StockItemName, SO.[Description], SO.Quantity, SO.UnitPrice FROM Sales.OrderLines AS SO, Warehouse.StockItems AS WS WHERE SO.StockItemID = WS.StockItemID;
SELECT COUNT(*) AS COUNT_ROW FROM Sales.OrderLines;