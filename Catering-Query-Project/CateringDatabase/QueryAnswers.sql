--ISYS6169-Database Systems
--BB01
--Group 14:
--2301874853 Mobert Walton Phen
--2301923275 Elias Fider Maratur Harianja
--2301878473 Muhammad Zhafir Ghiffari
--2301919302 Wahyudi

USE [Catering delVia]

--1
SELECT St.Staff_Name AS [StaffName], 
		Pt.Position_Name AS [StaffPositionName], 
		TotalActivity AS [Total Activity]
FROM [Ms_Staff] AS [St]
INNER JOIN [Ms_Position] AS [Pt] ON Pt.Position_ID = St.Staff_Position_ID
INNER JOIN(
	SELECT Staff_ID,
	(SELECT COUNT(Purchase_ID) FROM [Tr_Purchase] WHERE Purchase_Staff_ID = Staff_ID)
	+
	(SELECT COUNT(Service_ID) FROM [Tr_Service] WHERE Service_Staff_ID = Staff_ID)
	AS [TotalActivity]
	FROM [Ms_Staff]
) AS [ActivityTable] ON St.Staff_ID = ActivityTable.Staff_ID
WHERE TotalActivity > 2 AND St.Staff_Salary >= 1000000 AND St.Staff_Salary <= 4000000
ORDER BY St.Staff_Name

--2
SELECT Cs.Customer_ID AS [CustomerID], 
		Cs.Customer_Name AS [CustomerName], 
		SUM(ScD.SD_Menu_Pax) AS [Pax Bought]
FROM [Ms_Customer] AS [Cs]
INNER JOIN [Tr_Service] AS [Sc] ON Sc.Service_Customer_ID = Cs.Customer_ID
INNER JOIN [Tr_ServiceDetails] AS [ScD] ON Scd.SD_Service_ID = Sc.Service_ID
WHERE Cs.Customer_Gender = 'Male' AND DATEPART(mm, Sc.Service_Date) <= 6
GROUP BY Cs.Customer_ID, Cs.Customer_Name

--3
SELECT Id.Ingredient_Name AS [IngredientName], 
		SUM(PcD.PD_Ingredient_Quantity) AS [Ingredient Bought],
		COUNT(Pc.Purchase_ID) AS [Purchase Count],
		SUM(PcD.PD_Ingredient_Quantity)*Id.Ingredient_Price AS [Total Expenses]
FROM [Ms_Ingredient] AS [Id]
INNER JOIN [Tr_PurchaseDetails] AS [PcD] ON PcD.PD_Ingredient_ID = Id.Ingredient_ID
INNER JOIN [Tr_Purchase] AS [Pc] ON Pc.Purchase_ID = PcD.PD_Purchase_ID
WHERE DATEPART(mm, Pc.Purchase_Date)%2 = 0 AND DATEPART(dd, Pc.Purchase_Date) BETWEEN 2 AND 5
GROUP BY Id.Ingredient_Name, Id.Ingredient_Price

--4
SELECT CASE WHEN CHARINDEX(' ',St.Staff_Name) != 0 THEN 
				SUBSTRING(St.Staff_Name, 1, CHARINDEX(' ',St.Staff_Name)-1)
			ELSE St.Staff_Name END
			AS [Staff First Name],
		COUNT(Sc.Service_ID) AS [Transaction Count],
		SUM(ScD.SD_Menu_Pax) AS [Pax Sold]
FROM [Ms_Staff] AS [St]
INNER JOIN [Tr_Service] AS [Sc] ON Sc.Service_Staff_ID = St.Staff_ID
INNER JOIN [Tr_ServiceDetails] AS [ScD] ON ScD.SD_Service_ID = Sc.Service_ID
WHERE CAST(RIGHT(St.Staff_ID,3) AS INT)%2 != 0 AND CAST(RIGHT(Sc.Service_Customer_ID,3) AS INT)%2 = 0
GROUP BY St.Staff_ID, St.Staff_Name

--5
SELECT RIGHT(Vd.Vendor_Name, LEN(Vd.Vendor_Name)-4) AS [Vendor Name],
		Id.Ingredient_Name AS [IngredientName], 
		'Rp. '+CAST(Id.Ingredient_Price AS VARCHAR(10)) AS [IngredientPrice]
FROM [Ms_Vendor] AS [Vd]
INNER JOIN [Tr_Purchase] AS [Pc] ON Pc.Purchase_Vendor_ID = Vd.Vendor_ID
INNER JOIN [Tr_PurchaseDetails] AS [PcD] ON PcD.PD_Purchase_ID = Pc.Purchase_ID
INNER JOIN [Ms_Ingredient] AS [Id] ON Id.Ingredient_ID = PcD.PD_Ingredient_ID
WHERE Id.Ingredient_Price >= (SELECT AVG(Ingredient_Price) FROM [Ms_Ingredient])
	AND Id.Ingredient_Stock < 250
ORDER BY Id.Ingredient_Price

--6
SELECT Cs.Customer_Name AS [CustomerName],
		CONVERT(varchar, Sc.Service_Date, 107) AS [TransactionDate],
		Mn.Menu_Name AS [MenuName],
		Mn.Menu_Price AS [MenuPrice],
		CASE WHEN CHARINDEX(' ',Mn.Menu_Description) != 0 THEN
			SUBSTRING(Mn.Menu_Description, 1, CHARINDEX(' ',Mn.Menu_Description, CHARINDEX(' ',Mn.Menu_Description)+1))
		ELSE Mn.Menu_Description END
		AS[Brief Description],
		ScD.SD_Menu_Pax AS [Pax],
		Mn.Menu_Price*ScD.SD_Menu_Pax AS [Total Price]
FROM [Ms_Customer] AS [Cs]
INNER JOIN [Tr_Service] AS [Sc] ON Sc.Service_Customer_ID = Cs.Customer_ID
INNER JOIN [Tr_ServiceDetails] AS [ScD] ON ScD.SD_Service_ID = Sc.Service_ID
INNER JOIN [Ms_Menu] AS [Mn] ON Mn.Menu_ID = ScD.SD_Menu_ID
WHERE Mn.Menu_Price > (SELECT AVG(Menu_Price) FROM [Ms_Menu])
		AND ScD.SD_Menu_Pax > 100
ORDER BY Mn.Menu_Price

--7
SELECT UPPER(St.Staff_Name) AS [Staff Name],
		CONVERT(varchar, Pc.Purchase_Date, 107) AS [Purchase Date],
		CAST(SUM(PcD.PD_Ingredient_Quantity) AS VARCHAR(10))+' pcs' AS [Quantity Bought]
FROM [Ms_Staff] AS [St]
INNER JOIN [Tr_Purchase] AS [Pc] ON Pc.Purchase_Staff_ID = St.Staff_ID
INNER JOIN [Tr_PurchaseDetails] AS [PcD] ON PcD.PD_Purchase_ID = Pc.Purchase_ID
INNER JOIN [Ms_Ingredient] AS [Id] ON Id.Ingredient_ID = PcD.PD_Ingredient_ID
WHERE DATEPART(mm, Pc.Purchase_Date)%2 = 0 
		AND Id.Ingredient_Price < (SELECT MAX(Ingredient_Price) FROM [Ms_Ingredient])
GROUP BY St.Staff_Name, Pc.Purchase_Date
ORDER BY Pc.Purchase_Date

--8
SELECT Cs.Customer_Name AS [CustomerName], 
		SUBSTRING(Cs.Customer_Email, 1, CHARINDEX('@', Cs.Customer_Email)-1) AS [Email],
		(SELECT LOWER(Menu_Name) FROM [Ms_Menu] WHERE Menu_ID = ScD.SD_Menu_ID) AS [Menu Name],
		SUM(ScD.SD_Menu_Pax) AS [Pax Bought]
FROM [Ms_Customer] AS [Cs]
INNER JOIN [Tr_Service] AS [Sc] ON Sc.Service_Customer_ID = Cs.Customer_ID
INNER JOIN [Tr_ServiceDetails] AS [ScD] ON ScD.SD_Service_ID = Sc.Service_ID
WHERE Cs.Customer_Gender = 'Male' 
GROUP BY Cs.Customer_Name, Cs.Customer_Email, ScD.SD_Menu_ID
HAVING SUM(ScD.SD_Menu_Pax) >= 
	(SELECT AVG(SumTable.TotalPax)
			FROM (
				SELECT SUM(ScD.SD_Menu_Pax) AS [TotalPax]
				FROM [Ms_Customer] AS [Cs]
				INNER JOIN [Tr_Service] AS [Sc] ON Sc.Service_Customer_ID = Cs.Customer_ID
				INNER JOIN [Tr_ServiceDetails] AS [ScD] ON ScD.SD_Service_ID = Sc.Service_ID
				GROUP BY Cs.Customer_Name, Cs.Customer_Email, ScD.SD_Menu_ID
			) AS [SumTable]
	)
ORDER BY SUM(ScD.SD_Menu_Pax) DESC


--9
CREATE VIEW [LoyalCustomerView] AS
SELECT Cs.Customer_Name AS [CustomerName], 
		COUNT(Sc.Service_Customer_ID) AS [Total Transaction],
		SUM(ScD.SD_Menu_Pax) AS [Total Pax Purchased],
		SUM(ScD.SD_Menu_Pax*Mn.Menu_Price) AS [Total Price] 
FROM [Ms_Customer] AS [Cs]
INNER JOIN [Tr_Service] AS [Sc] ON Sc.Service_Customer_ID = Cs.Customer_ID
INNER JOIN [Tr_ServiceDetails] AS [ScD] ON ScD.SD_Service_ID = Sc.Service_ID
INNER JOIN [Ms_Menu] AS [Mn] ON Mn.Menu_ID = ScD.SD_Menu_ID
WHERE Cs.Customer_Gender = 'Female'
GROUP BY Cs.Customer_ID, Cs.Customer_Name
HAVING COUNT(Sc.Service_Customer_ID) > 2;

--10
CREATE VIEW [VendorRecapView] AS
SELECT Vd.Vendor_Name AS [VendorName],
		COUNT(Pc.Purchase_Vendor_ID) AS [Puchases Made],
		SUM(PcD.PD_Ingredient_Quantity) AS [Ingredients Purchased]
FROM [Ms_Vendor] AS [Vd]
INNER JOIN [Tr_Purchase] AS [Pc] ON Pc.Purchase_Vendor_ID = Vd.Vendor_ID
INNER JOIN [Tr_PurchaseDetails] AS [PcD] ON PcD.PD_Purchase_ID = Pc.Purchase_ID
INNER JOIN [Ms_Ingredient] AS [Id] ON Id.Ingredient_ID = PcD.PD_Ingredient_ID
WHERE Id.Ingredient_Stock > 150
GROUP BY Vd.Vendor_ID, Vd.Vendor_Name
HAVING COUNT(Pc.Purchase_Vendor_ID) > 1;
