--CREATE DATABASE [CustomerLib_Maksina.db]
--GO

USE [CustomerLib_Maksina.db]

CREATE TABLE [Customers]
(
	CustomerId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	FirstName NVARCHAR(50) NULL,
	LastName NVARCHAR(50) NOT NULL,
	PhoneNumber NVARCHAR(20) NULL CHECK
	(PhoneNumber LIKE '+[1-9]' + REPLICATE('[0-9]', 14) OR PhoneNumber LIKE '[1-9]' + REPLICATE('[0-9]', 14)),
	Email NVARCHAR(50) NULL CHECK (Email LIKE '%[a-zA-Z0-9][@][a-zA-Z0-9]%[.][a-zA-Z0-9]%'),
	TotalPurchasesAmount MONEY NULL CHECK(TotalPurchasesAmount >= 0)
)
GO

CREATE TABLE [Addresses]
(
	AddressId INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
	CustomerId INT NOT NULL FOREIGN KEY REFERENCES Customers(CustomerId),
	Line NVARCHAR(100) NOT NULL,
	Line2 NVARCHAR(100) NULL,
	AddressType NVARCHAR(8) NOT NULL CHECK (AddressType IN ('Shipping', 'Billing')),
	City NVARCHAR(50) NOT NULL,
	PostalCode NVARCHAR(6) NOT NULL,
	AddressState NVARCHAR(20) NOT NULL,
	Country NVARCHAR(14) NOT NULL CHECK (Country IN ('United States', 'Canada', 'united States', 'canada'))
)
GO

CREATE TABLE [Notes] (
NoteId INT IDENTITY NOT Null Primary Key,
CustomerId INT NOT Null Foreign Key REFERENCES Customers (CustomerId),
Note NVARCHAR(255) NOT Null CHECK (Note != '')
)