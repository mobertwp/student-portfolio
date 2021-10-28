CREATE TABLE [dbo].[MsFlowerType] (
    [FlowerTypeID]   INT           IDENTITY (1, 1) NOT NULL,
    [FlowerTypeName] VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([FlowerTypeID] ASC)
);

CREATE TABLE [dbo].[MsFlower] (
    [FlowerID]          INT           IDENTITY (1, 1) NOT NULL,
    [FlowerName]        VARCHAR (255) NOT NULL,
    [FlowerTypeID]      INT           NOT NULL,
    [FlowerDescription] VARCHAR (255) NOT NULL,
    [FlowerPrice]       INT           NOT NULL,
    [FlowerImage]       VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([FlowerID] ASC),
    FOREIGN KEY ([FlowerTypeID]) REFERENCES [dbo].[MsFlowerType] ([FlowerTypeID])
);

CREATE TABLE [dbo].[MsEmployee] (
    [EmployeeID]       INT           IDENTITY (1, 1) NOT NULL,
    [EmployeeName]     VARCHAR (255) NOT NULL,
    [EmployeeDOB]      DATE          NOT NULL,
    [EmployeeGender]   VARCHAR (20)  NOT NULL,
    [EmployeeAddress]  VARCHAR (255) NOT NULL,
    [EmployeePhone]    VARCHAR (255) NOT NULL,
    [EmployeeEmail]    VARCHAR (255) NOT NULL,
    [EmployeeSalary]   INT           NOT NULL,
    [EmployeePassword] VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([EmployeeID] ASC)
);

CREATE TABLE [dbo].[MsMember] (
    [MemberID]       INT           IDENTITY (1, 1) NOT NULL,
    [MemberName]     VARCHAR (255) NOT NULL,
    [MemberDOB]      DATE          NOT NULL,
    [MemberGender]   VARCHAR (20)  NOT NULL,
    [MemberAddress]  VARCHAR (255) NOT NULL,
    [MemberPhone]    VARCHAR (255) NOT NULL,
    [MemberEmail]    VARCHAR (255) NOT NULL,
    [MemberPassword] VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([MemberID] ASC)
);

CREATE TABLE [dbo].[TrHeader] (
    [TransactionID]   INT  IDENTITY (1, 1) NOT NULL,
    [MemberID]        INT  NULL,
    [TransactionDate] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([TransactionID] ASC),
    FOREIGN KEY ([MemberID]) REFERENCES [dbo].[MsMember] ([MemberID])
);

CREATE TABLE [dbo].[TrDetail]
(
    TransactionID INT NOT NULL,
    FlowerID INT NOT NULL,
    Quantity INT NOT NULL,
    CONSTRAINT PK_TrDetail PRIMARY KEY(TransactionID, FlowerID),
    CONSTRAINT FK_Transaction FOREIGN KEY (TransactionID) REFERENCES TrHeader(TransactionID),
    CONSTRAINT FK_Flower FOREIGN KEY (FlowerID) REFERENCES MsFlower(FlowerID)
);