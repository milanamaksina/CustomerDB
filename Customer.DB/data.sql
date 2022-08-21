--USE [CustomerLib_Maksina.db]
--GO

--INSERT INTO Customers (FirstName, LastName, PhoneNumber, Email, Notes, TotalPurchasesAmount)
--VALUES
--('Alex', 'Makovski', '+219474280516700', 'makovski@gmail.com', '123456', 500)
--GO

--INSERT INTO Customers (LastName, PhoneNumber, Notes, TotalPurchasesAmount)
--VALUES
--('Pitt', '+219474280516700', 'note1', 100)
--GO


--INSERT INTO Customers (LastName, PhoneNumber, Notes, TotalPurchasesAmount)
--VALUES
--('Rainold', '000000000000000', 'note', 100)
--GO

--INSERT INTO Customers (LastName, PhoneNumber, Notes, TotalPurchasesAmount)
--VALUES
--('Pitt', '+219474280516700', 'note1', 0)
--GO

--INSERT INTO Addresses (CustomerId, Line, AddressType, City, PostalCode, AddressState, Country)
--VALUES
--(1, 'blablabla', 'Shipping', 'New-York', '123456', 'New-York', 'Canada')
--GO

--INSERT INTO Addresses (CustomerId, Line, AddressType, City, PostalCode, AddressState, Country)
--VALUES
--(1, 'blablabla', 'WrongType', 'New-York', '123456', 'New-York', 'Canada')
--GO