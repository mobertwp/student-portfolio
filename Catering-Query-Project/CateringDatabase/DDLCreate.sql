--ISYS6169-Database Systems
--BB01
--Group 14:
--2301874853 Mobert Walton Phen
--2301923275 Elias Fider Maratur Harianja
--2301878473 Muhammad Zhafir Ghiffari
--2301919302 Wahyudi

CREATE DATABASE [Catering delVia]

USE [Catering delVia]

CREATE TABLE [Ms_Position](
	[Position_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Position_Name] VARCHAR(255) NOT NULL,

	CONSTRAINT Format_Position_ID CHECK
		(Position_ID LIKE 'SP[0-9][0-9][0-9]'),
)

CREATE TABLE [Ms_Staff](
	[Staff_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Staff_Name] VARCHAR(255) NOT NULL,
	[Staff_Gender] VARCHAR(10) NOT NULL,
	[Staff_Email] VARCHAR(255) NOT NULL,
	[Staff_PhoneNum] VARCHAR(12) NOT NULL,
	[Staff_Address] VARCHAR(255) NOT NULL,
	[Staff_Salary] INT NOT NULL,
	[Staff_Position_ID] VARCHAR(5) NOT NULL,

	CONSTRAINT FK_Staff_Position_ID FOREIGN KEY(Staff_Position_ID)
		REFERENCES [Ms_Position](Position_ID),

	CONSTRAINT Format_Staff_ID CHECK
		(Staff_ID LIKE 'ST[0-9][0-9][0-9]'),
	CONSTRAINT Format_Staff_Gender CHECK
		(Staff_Gender = 'Male' OR Staff_Gender = 'Female'),
	CONSTRAINT Format_Staff_PhoneNum CHECK
		(ISNUMERIC(Staff_PhoneNum) = 1 AND Staff_PhoneNum LIKE '08%'),
	CONSTRAINT Format_Staff_Email CHECK
		(Staff_Email NOT LIKE '@%' AND (Staff_Email LIKE '%@gmail.com'
										OR Staff_Email LIKE '%@yahoo.com' 
										OR Staff_Email LIKE '%@yahoo.co.id'
										)),
	CONSTRAINT Format_Staff_Salary CHECK
		(Staff_Salary >= 500000 AND Staff_Salary <= 5000000),

)

CREATE TABLE [Ms_Ingredient](
	[Ingredient_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Ingredient_Name] VARCHAR(255) NOT NULL,
	[Ingredient_Stock] INT NOT NULL,
	[Ingredient_Price] INT NOT NULL,

	CONSTRAINT Format_Ingredient_ID CHECK
		(Ingredient_ID LIKE 'ID[0-9][0-9][0-9]'),
)

CREATE TABLE [Ms_Vendor](
	[Vendor_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Vendor_Name] VARCHAR(255),
	[Vendor_PhoneNum] VARCHAR(12),
	[Vendor_Address] VARCHAR(255),

	CONSTRAINT Format_Vendor_ID CHECK
		(Vendor_ID LIKE 'VE[0-9][0-9][0-9]'),
	CONSTRAINT Format_Vendor_Name CHECK
		(Vendor_Name LIKE 'PT. %'),
	CONSTRAINT Format_Vendor_PhoneNum CHECK
		(ISNUMERIC(Vendor_PhoneNum) = 1),
)

CREATE TABLE [Tr_Purchase](
	[Purchase_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Purchase_Staff_ID] VARCHAR(5) NOT NULL,
	[Purchase_Vendor_ID] VARCHAR(5) NOT NULL,
	[Purchase_Date] DATE,

	CONSTRAINT FK_Purchase_Staff_ID FOREIGN KEY(Purchase_Staff_ID)
		REFERENCES[Ms_Staff](Staff_ID),
	CONSTRAINT FK_Purchase_Vendor_ID FOREIGN KEY(Purchase_Vendor_ID)
		REFERENCES[Ms_Vendor](Vendor_ID),

	CONSTRAINT Format_Purchase_ID CHECK
		(Purchase_ID LIKE 'PU[0-9][0-9][0-9]'),
)

CREATE TABLE [Tr_PurchaseDetails](
	[PD_Purchase_ID] VARCHAR(5) NOT NULL,
	[PD_Ingredient_ID] VARCHAR(5) NOT NULL,
	[PD_Ingredient_Quantity] INT NOT NULL,

	CONSTRAINT FK_PD_Purchase_ID FOREIGN KEY(PD_Purchase_ID)
		REFERENCES[Tr_Purchase](Purchase_ID),
	CONSTRAINT FK_PD_Ingredient_ID FOREIGN KEY(PD_Ingredient_ID)
		REFERENCES[Ms_Ingredient](Ingredient_ID),
)

CREATE TABLE [Ms_Customer](
	[Customer_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Customer_Name] VARCHAR(255) NOT NULL,
	[Customer_PhoneNum] VARCHAR(12) NOT NULL,
	[Customer_Address] VARCHAR(255),
	[Customer_Gender] VARCHAR(10) NOT NULL,
	[Customer_Email] VARCHAR(255) NOT NULL,

	CONSTRAINT Format_Customer_ID CHECK
		(Customer_ID LIKE 'CU[0-9][0-9][0-9]'),
	CONSTRAINT Format_Customer_Gender CHECK
		(Customer_Gender = 'Male' OR Customer_Gender = 'Female'),
	CONSTRAINT Format_Customer_PhoneNum CHECK
		(ISNUMERIC(Customer_PhoneNum) = 1 AND Customer_PhoneNum LIKE '08%'),
	CONSTRAINT Format_Customer_Email CHECK
		(Customer_Email NOT LIKE '@%' AND (Customer_Email LIKE '%@gmail.com'
										OR Customer_Email LIKE '%@yahoo.com' 
										OR Customer_Email LIKE '%@yahoo.co.id'
										)),		

)

CREATE TABLE [Ms_Menu](
	[Menu_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Menu_Name] VARCHAR(255) NOT NULL,
	[Menu_Description] VARCHAR(255),
	[Menu_Price] INT NOT NULL,

	CONSTRAINT Format_Menu_ID CHECK
		(Menu_ID LIKE 'ME[0-9][0-9][0-9]'),
	CONSTRAINT Format_Menu_Name CHECK
		(LEN(Menu_Name) > 5),
)

CREATE TABLE [Tr_Service](
	[Service_ID] VARCHAR(5) NOT NULL PRIMARY KEY,
	[Service_Staff_ID] VARCHAR(5) NOT NULL,
	[Service_Customer_ID] VARCHAR(5) NOT NULL,
	[Service_Date] DATE NOT NULL,
	[Service_Type] VARCHAR(32) NOT NULL,
	[Service_Address] VARCHAR(255) NOT NULL,

	CONSTRAINT FK_Service_Staff_ID FOREIGN KEY(Service_Staff_ID)
		REFERENCES[Ms_Staff](Staff_ID),
	CONSTRAINT FK_Service_Customer_ID FOREIGN KEY(Service_Customer_ID)
		REFERENCES[Ms_Customer](Customer_ID),

	CONSTRAINT Format_Service_ID CHECK
		(Service_ID LIKE 'TR[0-9][0-9][0-9]'),
)

CREATE TABLE [Tr_ServiceDetails](
	[SD_Service_ID] VARCHAR(5) NOT NULL,
	[SD_Menu_ID] VARCHAR(5) NOT NULL,
	[SD_Menu_Pax] INT NOT NULL,

	CONSTRAINT FK_SD_Service_ID FOREIGN KEY(SD_Service_ID)
		REFERENCES [Tr_Service](Service_ID),
	CONSTRAINT FK_SD_Menu_ID FOREIGN KEY(SD_Menu_ID)
		REFERENCES [Ms_Menu](Menu_ID),

)