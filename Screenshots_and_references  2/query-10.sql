CREATE TABLE Cart (
    CartID INT PRIMARY KEY NOT NULL,
    UserID INT,
    productID INT,
    quantity INT,
    price DECIMAL(10, 2),
    totalPrice DECIMAL(10, 2),
);

CREATE TABLE Products (
    productID INT IDENTITY(1,1) PRIMARY KEY,
    productName NVARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    description NVARCHAR(MAX),
    quantity INT NOT NULL,
    category NVARCHAR(50) NOT NULL
);

 SELECT * FROM [dbo].[Products]

CREATE TABLE Client (
ClientID INT IDENTITY(1,1) PRIMARY KEY NOT NULL, 
[Name] VARCHAR (250) NOT NULL,
Surname VARCHAR (250) NOT NULL,
Email VARCHAR (250) NOT NULL,
);

SELECT * FROM Client

CREATE TABLE Receipt (
    receiptID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,  
    customerName NVARCHAR(50),
    purchaseDate DATETIME,
    totalAmount DECIMAL(10, 2),
    productName NVARCHAR(50)
);

SELECT * FROM [dbo].[Receipt]

CREATE TABLE ReceiptProduct (
    receiptID INT,
    productID INT,
    quantity INT,
    subtotal DECIMAL(10, 2),
    --FOREIGN KEY (receiptID) REFERENCES Receipt(receiptID),
    --FOREIGN KEY (productID) REFERENCES Product(productID)
);

SELECT * FROM ReceiptProduct

CREATE TABLE Orders (
    ProductCategory VARCHAR(50),
    Price DECIMAL(10, 2),
    ProductName VARCHAR(100)
);

CREATE TABLE userSignUp (
    user_id INT PRIMARY KEY,
    First_Name NVARCHAR(50),
    Last_Name NVARCHAR(50),
    Email NVARCHAR(100)
);

SELECT * FROM userSignUp

CREATE TABLE userLogin (
    user_id INT IDENTITY(1,1) PRIMARY KEY,
    username NVARCHAR(50) NOT NULL,
    password_hash NVARCHAR(256) NOT NULL,
    email NVARCHAR(100) NOT NULL,
    created_at DATETIME2 DEFAULT GETDATE()
);

SELECT * FROM userLogin