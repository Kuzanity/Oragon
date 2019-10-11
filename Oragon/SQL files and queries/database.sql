drop database db_oragon;
create database db_oragon;
use db_oragon;
CREATE TABLE ADMIN_Info (
  Admin_ID INT,
  Ad_FirstName CHAR(50),
  Ad_LastName CHAR(50),
  Email VARCHAR(120),
  PRIMARY KEY (Admin_ID)
);

CREATE TABLE SALES_Order (
  Order_ID Varchar(12),
  Customer_ID INT(10),
  Admin_ID INT,
  Prod_Name CHAR(50),
  Prod_Qty Varchar(11),
  Total_Price Varchar(4),
  Transaction_Date timestamp,
  PRIMARY KEY (Order_ID),
  KEY FK (Customer_ID, Admin_ID, Prod_Name)
);

CREATE TABLE SALES_CustomerInfo (
  Customer_ID INT(10),
  Customer_Name CHAR(50),
  PRIMARY KEY (Customer_ID)
);

CREATE TABLE ACTIVITY_Log (
  Activity_ID Varchar(10),
  Activity_Name CHAR(50),
  Activity_Date timestamp,
  Sales_Today INT(25)
);

CREATE TABLE SALES_Product (
	Product_ID Varchar (5),
  Prod_Name CHAR(50),
  Prod_Qty Varchar (11),
  Prod_Price Varchar(4),
  Product_Type VARCHAR(100),
  PRIMARY KEY (Prod_Name, Product_ID)
);

CREATE TABLE SALES_Product_of_Order (
  Product_ID Varchar(5),
  Prod_Name CHAR(50),
  Order_ID Varchar(12),
  KEY FK (Prod_Name, Product_ID, Order_ID)
);

CREATE TABLE Login_Regis (
  Admin_User INT,
  Password VARCHAR(50),
  Admin_ID INT,
  PRIMARY KEY (Admin_User),
  KEY FK (Admin_ID)
);
use db_oragon