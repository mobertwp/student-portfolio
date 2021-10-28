--ISYS6169-Database Systems
--BB01
--Group 14:
--2301874853 Mobert Walton Phen
--2301923275 Elias Fider Maratur Harianja
--2301878473 Muhammad Zhafir Ghiffari
--2301919302 Wahyudi

USE [Catering delVia]

--Master Tables (10 data)
INSERT INTO [Ms_Position]
VALUES ('SP001','Cashier'),
		('SP002','Supervisor'),
		('SP003','Chef'),
		('SP004','Head Chef'),
		('SP005','Inventory Manager'),
		('SP006','Marketing'),
		('SP007','Promotion'),
		('SP008','Treasurer'),
		('SP009','Secretary'),
		('SP010','CEO');

INSERT INTO [Ms_Staff]
VALUES ('ST001','StaffA','Male','StaffA@gmail.com','080000000001','RumahStaffA',500000,'SP001'),
		('ST002','StaffB','Female','StaffB@yahoo.com','080000000002','RumahStaffB',1000000,'SP002'),
		('ST003','StaffC','Male','StaffC@yahoo.co.id','080000000003','RumahStaffC',1500000,'SP003'),
		('ST004','StaffD','Female','StaffD@gmail.com','080000000004','RumahStaffD',2000000,'SP004'),
		('ST005','StaffE','Male','StaffE@yahoo.com','080000000005','RumahStaffE',2500000,'SP005'),
		('ST006','StaffF','Female','StaffF@yahoo.co.id','080000000006','RumahStaffF',3000000,'SP006'),
		('ST007','StaffG','Male','StaffG@gmail.com','080000000007','RumahStaffG',3500000,'SP007'),
		('ST008','StaffH','Female','StaffH@yahoo.com','080000000008','RumahStaffH',4000000,'SP008'),
		('ST009','StaffI','Male','StaffI@yahoo.co.id','080000000009','RumahStaffI',4500000,'SP009'),
		('ST010','StaffJ','Female','StaffJ@gmail.com','080000000010','RumahStaffJ',5000000,'SP010');

INSERT INTO [Ms_Ingredient]
VALUES ('ID001','Apel',100,10000),
		('ID002','Bpel',90,20000),
		('ID003','Cpel',80,30000),
		('ID004','Dpel',70,40000),
		('ID005','Epel',60,50000),
		('ID006','Fpel',50,60000),
		('ID007','Gpel',40,70000),
		('ID008','Hpel',30,80000),
		('ID009','Ipel',20,90000),
		('ID010','Jpel',10,100000);

INSERT INTO [Ms_Vendor]
VALUES ('VE001','PT. VendorA','081000000001','KantorVendorA'),
		('VE002','PT. VendorB','081000000002','KantorVendorB'),
		('VE003','PT. VendorC','081000000003','KantorVendorC'),
		('VE004','PT. VendorD','081000000004','KantorVendorD'),
		('VE005','PT. VendorE','081000000005','KantorVendorE'),
		('VE006','PT. VendorF','081000000006','KantorVendorF'),
		('VE007','PT. VendorG','081000000007','KantorVendorG'),
		('VE008','PT. VendorH','081000000008','KantorVendorH'),
		('VE009','PT. VendorI','081000000009','KantorVendorI'),
		('VE010','PT. VendorJ','081000000010','KantorVendorJ');

INSERT INTO [Ms_Customer]
VALUES ('CU001','CustomerA','082000000001','RumahCustomerA','Male','CustomerA@gmail.com'),
		('CU002','CustomerB','082000000002','RumahCustomerB','Female','CustomerB@yahoo.com'),
		('CU003','CustomerC','082000000003',NULL,'Male','CustomerC@yahoo.co.id'),
		('CU004','CustomerD','082000000004','RumahCustomerD','Female','CustomerD@gmail.com'),
		('CU005','CustomerE','082000000005','RumahCustomerE','Male','CustomerE@yahoo.com'),
		('CU006','CustomerF','082000000006',NULL,'Female','CustomerF@yahoo.co.id'),
		('CU007','CustomerG','082000000007','RumahCustomerG','Male','CustomerG@gmail.com'),
		('CU008','CustomerH','082000000008','RumahCustomerH','Female','CustomerH@yahoo.com'),
		('CU009','CustomerI','082000000009',NULL,'Male','CustomerI@yahoo.co.id'),
		('CU010','CustomerJ','082000000010','RumahCustomerJ','Female','CustomerJ@gmail.com');

INSERT INTO [Ms_Menu]
VALUES ('ME001','MenuAA','Masakan ala A',20000),
		('ME002','MenuBB','Masakan ala B',40000),
		('ME003','MenuCC',NULL,60000),
		('ME004','MenuDD','Masakan ala D',80000),
		('ME005','MenuEE','Masakan ala E',100000),
		('ME006','MenuFF',NULL,120000),
		('ME007','MenuGG','Masakan ala G',140000),
		('ME008','MenuHH','Masakan ala H',160000),
		('ME009','MenuII',NULL,180000),
		('ME010','MenuJJ','Masakan ala J',200000);

--Transaction Tables (15 data)
INSERT INTO [Tr_Purchase]
VALUES ('PU001','ST005','VE001','2020/01/01'),
		('PU002','ST005','VE001','2020/01/10'),
		('PU003','ST005','VE002','2020/02/01'),
		('PU004','ST005','VE002','2020/02/10'),
		('PU005','ST005','VE003','2020/03/01'),
		('PU006','ST005','VE003','2020/03/10'),
		('PU007','ST005','VE004','2020/04/01'),
		('PU008','ST005','VE004','2020/04/10'),
		('PU009','ST005','VE005','2020/05/01'),
		('PU010','ST005','VE005','2020/05/10'),
		('PU011','ST005','VE006','2020/06/01'),
		('PU012','ST005','VE007','2020/07/01'),
		('PU013','ST005','VE008','2020/08/01'),
		('PU014','ST005','VE009','2020/09/01'),
		('PU015','ST005','VE010','2020/10/01');

INSERT INTO [Tr_Service]
VALUES ('TR001','ST001','CU001','2020/10/01','TypeA','RumahCustomerA'),
		('TR002','ST001','CU002','2020/10/02','TypeB','KantorCustomerB'),
		('TR003','ST001','CU003','2020/10/03','TypeC','HotelCustomerC'),
		('TR004','ST001','CU004','2020/10/04','TypeD','RumahCustomerD'),
		('TR005','ST001','CU005','2020/10/05','TypeE','KantorCustomerE'),
		('TR006','ST002','CU006','2020/10/06','TypeA','HotelCustomerF'),
		('TR007','ST002','CU007','2020/10/07','TypeB','RumahCustomerG'),
		('TR008','ST002','CU008','2020/10/08','TypeC','KantorCustomerH'),
		('TR009','ST002','CU009','2020/10/09','TypeD','HotelCustomerI'),
		('TR010','ST002','CU010','2020/10/10','TypeE','RumahCustomerJ'),
		('TR011','ST001','CU001','2020/11/01','TypeF','RumahCustomerA'),
		('TR012','ST001','CU002','2020/11/01','TypeG','KantorCustomerB'),
		('TR013','ST001','CU003','2020/11/01','TypeH','HotelCustomerC'),
		('TR014','ST001','CU004','2020/11/01','TypeI','RumahCustomerD'),
		('TR015','ST001','CU005','2020/11/01','TypeJ','KantorCustomerE');

--Transaction Detail Tables (25 data)
INSERT INTO [Tr_PurchaseDetails]
VALUES ('PU001','ID001',10),
		('PU001','ID002',20),
		('PU002','ID003',10),
		('PU002','ID004',20),
		('PU003','ID005',10),
		('PU003','ID006',20),
		('PU004','ID007',10),
		('PU004','ID008',20),
		('PU005','ID009',10),
		('PU005','ID010',20),
		('PU006','ID001',10),
		('PU006','ID002',20),
		('PU007','ID003',10),
		('PU007','ID004',20),
		('PU008','ID005',10),
		('PU008','ID006',20),
		('PU009','ID007',10),
		('PU009','ID008',20),
		('PU010','ID009',10),
		('PU010','ID010',20),
		('PU011','ID001',10),
		('PU012','ID001',20),
		('PU013','ID001',10),
		('PU014','ID001',20),
		('PU015','ID001',10);

INSERT INTO [Tr_ServiceDetails]
VALUES ('TR001','ME001',1),
		('TR001','ME002',2),
		('TR002','ME003',3),
		('TR002','ME004',4),
		('TR003','ME005',5),
		('TR003','ME006',6),
		('TR004','ME007',7),
		('TR004','ME008',8),
		('TR005','ME009',9),
		('TR005','ME010',10),
		('TR006','ME001',1),
		('TR006','ME002',2),
		('TR007','ME003',3),
		('TR007','ME004',4),
		('TR008','ME005',5),
		('TR008','ME006',6),
		('TR009','ME007',7),
		('TR009','ME008',8),
		('TR010','ME009',9),
		('TR010','ME010',10),
		('TR011','ME001',1),
		('TR012','ME002',2),
		('TR013','ME003',3),
		('TR014','ME004',4),
		('TR015','ME005',5);