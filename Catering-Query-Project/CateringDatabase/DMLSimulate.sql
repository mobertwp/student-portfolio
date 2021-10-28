--ISYS6169-Database Systems
--BB01
--Group 14:
--2301874853 Mobert Walton Phen
--2301923275 Elias Fider Maratur Harianja
--2301878473 Muhammad Zhafir Ghiffari
--2301919302 Wahyudi

USE [Catering delVia]

--Insert to [Ms_Vendor]
GO
CREATE PROCEDURE [Sp_NewVendor]
	(@Vendor_Name VARCHAR(255),
	@Vendor_PhoneNum VARCHAR(12),
	@Vendor_Address VARCHAR(255))
AS
BEGIN
	DECLARE @Vendor_ID VARCHAR(5);
	--VendorID terbaru + 1
	SELECT @Vendor_ID = CONCAT(LEFT(MAX(Vd.Vendor_ID), (LEN(MAX(Vd.Vendor_ID))-LEN(CAST(CAST(RIGHT(MAX(Vd.Vendor_ID),3) AS INT)AS VARCHAR(5)))))
						,CAST(CAST(RIGHT(MAX(Vd.Vendor_ID),3) AS INT)+1 AS VARCHAR(5))
						)
	FROM [Ms_Vendor] AS [Vd]
	
	INSERT INTO [Ms_Vendor](Vendor_ID,Vendor_Name,Vendor_PhoneNum,Vendor_Address)
	VALUES (@Vendor_ID,@Vendor_Name,@Vendor_PhoneNum,@Vendor_Address)
END

--Insert to [Ms_Ingredient]
GO
CREATE PROCEDURE [Sp_NewIngredient]
	(@Ingredient_Name VARCHAR(255),
	@Ingredient_Stock INT,
	@Ingredient_Price INT)
AS
BEGIN
	DECLARE @Ingredient_ID VARCHAR(5);
	--IngredientID terbaru + 1
	SELECT @Ingredient_ID = CONCAT(LEFT(MAX(Id.Ingredient_ID), (LEN(MAX(Id.Ingredient_ID))-LEN(CAST(CAST(RIGHT(MAX(Id.Ingredient_ID),3) AS INT)AS VARCHAR(5)))))
							,CAST(CAST(RIGHT(MAX(Id.Ingredient_ID),3) AS INT)+1 AS VARCHAR(5))
							)
	FROM [Ms_Ingredient] AS [Id]

	INSERT INTO [Ms_Ingredient](Ingredient_ID,Ingredient_Name,Ingredient_Stock,Ingredient_Price)
	VALUES (@Ingredient_ID,@Ingredient_Name,@Ingredient_Stock,@Ingredient_Price)
END

--Insert to [Ms_Customer]
GO
CREATE PROCEDURE [Sp_NewCustomer]
	(@Customer_Name VARCHAR(255),
	@Customer_PhoneNum VARCHAR(12),
	@Customer_Address VARCHAR(255),
	@Customer_Gender VARCHAR(10),
	@Customer_Email VARCHAR(255))
AS
BEGIN
	DECLARE @Customer_ID VARCHAR(5);
	--CustomerID terbaru + 1
	SELECT @Customer_ID = CONCAT(LEFT(MAX(Cs.Customer_ID), (LEN(MAX(Cs.Customer_ID))-LEN(CAST(CAST(RIGHT(MAX(Cs.Customer_ID),3) AS INT)AS VARCHAR(5)))))
							,CAST(CAST(RIGHT(MAX(Cs.Customer_ID),3) AS INT)+1 AS VARCHAR(5))
							)
	FROM [Ms_Customer] AS [Cs]

	INSERT INTO [Ms_Customer](Customer_ID, Customer_Name, Customer_PhoneNum, Customer_Address, Customer_Gender, Customer_Email)
	VALUES (@Customer_ID, @Customer_Name, @Customer_PhoneNum, @Customer_Address, @Customer_Gender, @Customer_Email)
END

--Insert to [Tr_PurchaseDetails]
GO
CREATE PROCEDURE [Sp_NewPurchaseDetail]
	(@Purchase_ID VARCHAR(5),
	@Ingredient_ID VARCHAR(5),
	@Ingredient_Quantity INT)
AS
BEGIN
	INSERT INTO [Tr_PurchaseDetails](PD_Purchase_ID,PD_Ingredient_ID,PD_Ingredient_Quantity)
	VALUES (@Purchase_ID, @Ingredient_ID, @Ingredient_Quantity)
END

--Insert to [Tr_ServiceDetails]
GO
CREATE PROCEDURE [Sp_NewServiceDetail]
	(@Service_ID VARCHAR(5),
	@Menu_ID VARCHAR(5),
	@Menu_Pax INT)
AS
BEGIN
	INSERT INTO [Tr_ServiceDetails](SD_Service_ID,SD_Menu_ID,SD_Menu_Pax)
	VALUES (@Service_ID, @Menu_ID, @Menu_Pax)
END

------------------------------------------------------------------------------------
--Simulasi transaksi purchase 1 ingredient lama (restock) dan 1 ingredient baru (new product) dari vendor yang belum dikenal
GO
CREATE PROCEDURE Sp_NewPurchase2
	(
	@Staff_ID VARCHAR(5),
	@Vendor_Name VARCHAR(255),
	@Vendor_PhoneNum VARCHAR(12),
	@Vendor_Address VARCHAR(255),
	@Ingredient_ID_Lama VARCHAR(5),
	@Ingredient_Quantity_Lama INT,
	@Ingredient_Name_Baru VARCHAR(255),
	@Ingredient_Stock_Baru INT,
	@Ingredient_Price_Baru INT,
	@Ingredient_Quantity_Baru INT
	)
AS
BEGIN
	DECLARE @Purchase_ID VARCHAR(5);
	SET @Purchase_ID = '0'
	--Karena dilakukan transaski Purchase baru
	--maka Purchase_ID paling baru sebelumnya + 1
	SELECT @Purchase_ID = CONCAT(LEFT(MAX(Pc.Purchase_ID), (LEN(MAX(Pc.Purchase_ID))-LEN(CAST(CAST(RIGHT(MAX(Pc.Purchase_ID),3) AS INT)AS VARCHAR(5)))))
							,CAST(CAST(RIGHT(MAX(Pc.Purchase_ID),3) AS INT)+1 AS VARCHAR(5))
							)
	FROM [Tr_Purchase] AS [Pc]

	--Purchase_Date diambil dari tanggal transaksi dilakukan
	DECLARE @Purchase_Date DATE = GETDATE();

	--Karena vendor belum dikenal
	--maka dimasukkan data vendor baru
	EXEC Sp_NewVendor @Vendor_Name, @Vendor_PhoneNum, @Vendor_Address
	--Vendor_ID terbaru
	DECLARE @Vendor_ID VARCHAR(5);
	SELECT @Vendor_ID = MAX(Vd.Vendor_ID)
	FROM [Ms_Vendor] AS [Vd]

	--Karena terdapat satu ingredient baru
	--maka dimasukkan data ingredient baru
	EXEC Sp_NewIngredient @Ingredient_Name_Baru, @Ingredient_Stock_Baru, @Ingredient_Price_Baru
	--Ingredient_ID terbaru
	DECLARE @Ingredient_ID_Baru VARCHAR(5);
	SELECT @Ingredient_ID_Baru = MAX(Id.Ingredient_ID)
	FROM [Ms_Ingredient] AS [Id]

	--Dimasukkan data purchase terbaru pada tabel [Tr_Purchase] 
	INSERT INTO [Tr_Purchase](Purchase_ID,Purchase_Staff_ID,Purchase_Vendor_ID,Purchase_Date)
	VALUES (@Purchase_ID,@Staff_ID,@Vendor_ID,@Purchase_Date)

	--Karena transaksi purchase ini meliputi pembelian dua ingredient, maka dibentuk dua data baru pada [Tr_PurchaseDetails]
	--Purchase detail 1 (Ingredient lama)
	EXEC Sp_NewPurchaseDetail @Purchase_ID, @Ingredient_ID_Lama, @Ingredient_Quantity_Lama
	--Purchase detail 2 (Ingredient baru)
	EXEC Sp_NewPurchaseDetail @Purchase_ID, @Ingredient_ID_Baru, @Ingredient_Quantity_Baru

END

--Simulasi exec
EXEC Sp_NewPurchase2 
		@Staff_ID = 'ST005',						--staff yang mengadministrasi transaksi dengan vendor
		@Vendor_Name = 'PT. VendorZ',				--data vendor baru
		@Vendor_PhoneNum = '081000000011',			--
		@Vendor_Address = 'KantorVendorZ',			--
		@Ingredient_ID_Lama = 'ID002',				--id ingredient lama yang di-purchase
		@Ingredient_Quantity_Lama = '10',			--jumlah ingredient lama yang di-purchase
		@Ingredient_Name_Baru = 'Zpel',				--data ingredient baru
		@Ingredient_Stock_Baru = '0',				--
		@Ingredient_Price_Baru = '120000',			--
		@Ingredient_Quantity_Baru = '20'			--jumlah ingredient baru yang di-purchase
GO

------------------------------------------------------------------------------------------------------
--Simulasi transaksi service 2 menu lama dari customer yang belum dikenal
GO
CREATE PROCEDURE Sp_NewService2
	(
	@Staff_ID VARCHAR(5),
	@Customer_Name VARCHAR(255),
	@Customer_PhoneNum VARCHAR(12),
	@Customer_Address VARCHAR(255),
	@Customer_Gender VARCHAR(10),
	@Customer_Email VARCHAR(255),
	@Service_Type VARCHAR(32),
	@Service_Address VARCHAR(255),
	@Menu_ID_1 VARCHAR(5),
	@Menu_Pax_1 INT,
	@Menu_ID_2 VARCHAR(5),
	@Menu_Pax_2 INT
	)
AS
BEGIN
	DECLARE @Service_ID VARCHAR(5);
	SET @Service_ID = '0'
	--Karena dilakukan transaksi Service baru
	--maka Service_ID paling baru sebelumnya + 1
	SELECT @Service_ID = CONCAT(LEFT(MAX(Sc.Service_ID), (LEN(MAX(Sc.Service_ID))-LEN(CAST(CAST(RIGHT(MAX(Sc.Service_ID),3) AS INT)AS VARCHAR(5)))))
							,CAST(CAST(RIGHT(MAX(Sc.Service_ID),3) AS INT)+1 AS VARCHAR(5))
							)
	FROM [Tr_Service] AS [Sc]

	--Service date diambil dari tanggal service dipesan
	DECLARE @Service_Date DATE = GETDATE();

	--Karena Customer yang melakukan pesanan service adalah customer baru
	--maka dimasukkan data customer baru
	EXEC Sp_NewCustomer @Customer_Name, @Customer_PhoneNum, @Customer_Address, @Customer_Gender, @Customer_Email
	--CustomerID terbaru
	DECLARE @Customer_ID VARCHAR(5);
	SELECT @Customer_ID = MAX(Cs.Customer_ID)
	FROM [Ms_Customer] AS [Cs]

	--Dimasukkan data service terbaru pada tabel [Tr_Service]
	INSERT INTO [Tr_Service](Service_ID,Service_Staff_ID,Service_Customer_ID,Service_Date,Service_Type,Service_Address)
	VALUES (@Service_ID,@Staff_ID,@Customer_ID,@Service_Date,@Service_Type,@Service_Address)

	--Karena transaksi service ini meliputi pemesanan dua menu, maka dibentuk dua data baru pada [Tr_ServiceDetails]
	--Service detail 1
	EXEC Sp_NewServiceDetail @Service_ID, @Menu_ID_1, @Menu_Pax_1
	--Service detail 2
	EXEC Sp_NewServiceDetail @Service_ID, @Menu_ID_2, @Menu_Pax_2

END

--Simulasi exec 
EXEC Sp_NewService2
		@Staff_ID = 'ST001',						--staff yang mengadministrasi pemesanan service dengan customer
		@Customer_Name = 'CustomerZ',				--data customer baru
		@Customer_PhoneNum = '082000000011',		--
		@Customer_Address = 'RumahCustomerZ',		--
		@Customer_Gender = 'Male',					--
		@Customer_Email = 'CustomerZ@yahoo.com',	--
		@Service_Type = 'TypeA',					--
		@Service_Address = 'KantorCustomerZ',		--
		@Menu_ID_1 = 'ME002',						--id menu 1 yang dipesan
		@Menu_Pax_1 = 1,							--jumlah menu 1 yang dipesan
		@Menu_ID_2 = 'ME005',						--id menu 2 yang dipesan
		@Menu_Pax_2 = 4								--jumlah menu 2 yang dipesan
GO