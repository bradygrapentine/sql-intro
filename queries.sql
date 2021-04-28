createdb CompanyDatabase
--
pgcli CompanyDatabase
--
--
CREATE TABLE "Employees"(
  "FullName"  TEXT,
  "Salary"  INT,
  "JobPosition"  TEXT,
  "PhoneExtension"  INT,
  "IsPartTime"  BOOLEAN
);
-- CREATE TABLE
--
--
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "IsPartTime" )
VALUES ('John Doe', 400, 'Cook', TRUE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Danny Glover', 600, 'President of the United States', 2235, FALSE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Charles Barkley', 300, 'Confused Commentator', 2234, TRUE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Gavin Stark', 600, 'Software Developer', 1239, FALSE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "PhoneExtension", "IsPartTime" )
VALUES ('Immanuel Kant', 1000, 1238, FALSE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Michelle Obama', 600, 'First Lady of the United States', 1237, TRUE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Emily Dickinson', 450, 'Poet', 1236, FALSE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "IsPartTime" )
VALUES ('Guy Fieri', 400, 'Cook', TRUE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Gordon Ramsay', 600, 'Head Cook', 2236, FALSE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Ann Coulter', 400,'Confused Commentator','1235', FALSE);
-- INSERT 0 1
-- 
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Lazy Larry', 430, 'Janitor', 1234, FALSE);
-- INSERT 0 1
-- 
--
SELECT * FROM "Employees";
-- +-----------------+----------+---------------------------------+------------------+--------------+
-- | FullName        | Salary   | JobPosition                     | PhoneExtension   | IsPartTime   |
-- |-----------------+----------+---------------------------------+------------------+--------------|
-- | John Doe        | 400      | Cook                            | <null>           | True         | 
-- | Danny Glover    | 600      | President of the United States  | 2235             | False        |
-- | Charles Barkley | 300      | Confused Commentator            | 2234             | True         | 
-- | Gavin Stark     | 600      | Software Developer              | 1239             | False        |
-- | Immanuel Kant   | 1000     | <null>                          | 1238             | False        | 
-- | Michelle Obama  | 600      | First Lady of the United States | 1237             | True         |
-- | Emily Dickinson | 450      | Poet                            | 1236             | False        | 
-- | Guy Fieri       | 400      | Cook                            | <null>           | True         | 
-- | Gordon Ramsay   | 600      | Head Cook                       | 2236             | False        |
-- | Ann Coulter     | 400      | Confused Commentator            | 1235             | False        | 
-- | Lazy Larry      | 430      | Janitor                         | 1234             | False        | 
-- +-----------------+----------+---------------------------------+------------------+--------------+
-- SELECT 11
--
--
SELECT "FullName", "PhoneExtension" FROM "Employees" WHERE "IsPartTime" = FALSE;
-- +-----------------+------------------+
-- | FullName        | PhoneExtension   |
-- |-----------------+------------------|
-- | Danny Glover    | 2235             |
-- | Gavin Stark     | 1239             |
-- | Immanuel Kant   | 1238             |
-- | Emily Dickinson | 1236             |
-- | Gordon Ramsay   | 2236             |
-- | Ann Coulter     | 1235             |
-- | Lazy Larry      | 1234             |
-- +-----------------+------------------+
-- SELECT 7
--
--
INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime" )
VALUES ('Brady Grapentine', 450, 'Software Developer', 2237, FALSE);
-- INSERT 0 1
--
--
UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';
-- UPDATE 2
--
--
DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
-- You're about to run a destructive command.
-- Do you want to proceed? (y/n): y
-- Your call!
-- DELETE 1
--
--
ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
-- You're about to run a destructive command.
-- Do you want to proceed? (y/n): y
-- Your call!
-- ALTER TABLE
--
--


--  ADVENTURE MODE --
CREATE TABLE "Employees"(
  "FullName"  TEXT NOT NULL,
  "Salary"  INT NOT NULL,
  "JobPosition"  TEXT,
  "PhoneExtension"  INT,
  "IsPartTime"  BOOLEAN NOT NULL,
  "Id"  SERIAL PRIMARY KEY 
);
-- CREATE TABLE
--
--
SELECT * FROM "Employees";
-- +-----------------+----------+---------------------------------+------------------+--------------+------+
-- | FullName        | Salary   | JobPosition                     | PhoneExtension   | IsPartTime   | Id   |
-- |-----------------+----------+---------------------------------+------------------+--------------+------|
-- | John Doe        | 400      | Cook                            | <null>           | True         | 1    |
-- | Danny Glover    | 600      | President of the United States  | 2235             | False        | 2    |
-- | Charles Barkley | 300      | Confused Commentator            | 2234             | True         | 3    |
-- | Gavin Stark     | 600      | Software Developer              | 1239             | False        | 4    |
-- | Immanuel Kant   | 1000     | <null>                          | 1238             | False        | 5    |
-- | Michelle Obama  | 600      | First Lady of the United States | 1237             | True         | 6    |
-- | Emily Dickinson | 450      | Poet                            | 1236             | False        | 7    |
-- | Guy Fieri       | 400      | Cook                            | <null>           | True         | 8    |
-- | Gordon Ramsay   | 600      | Head Cook                       | 2236             | False        | 9    |
-- | Ann Coulter     | 400      | Confused Commentator            | 1235             | False        | 10   |
-- | Lazy Larry      | 430      | Janitor                         | 1234             | False        | 11   |
-- +-----------------+----------+---------------------------------+------------------+--------------+------+
-- SELECT 11
--
--


-- 4/28/2021
--
CREATE TABLE "Departments"(
  "DepartmentName"  TEXT,
  "Building"  TEXT NOT NULL,
  "Id"  SERIAL PRIMARY KEY 
);
-- CREATE TABLE
--
--
ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments"("Id");
-- You're about to run a destructive command.
-- Do you want to proceed? (y/n): y
-- Your call!
-- ALTER TABLE
--
--
CREATE TABLE "Products"(
  "Price"  FLOAT,
  "Name"  TEXT NOT NULL,
  "Description" TEXT,
  "QuantityInStock" INT,
  "Id"  SERIAL PRIMARY KEY 
);
-- CREATE TABLE
--
--
CREATE TABLE "Orders"(
  "OrderNumber"  TEXT NOT NULL,
  "DatePlaced"  TIMESTAMP NOT NULL,
  "Email" TEXT, 
  "Id"  SERIAL PRIMARY KEY 
);
-- CREATE TABLE
--
--
-- JOIN table for products and orders 
CREATE TABLE "ProductOrders"(
  "OrderId"  INTEGER REFERENCES "Orders"("Id"),
  "ProductId" INTEGER REFERENCES "Products"("Id"),
  "Id"  SERIAL PRIMARY KEY, 
  "OrderQuantity" INT NOT NULL 
);
-- CREATE TABLE
--
--
INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Development', 'Main');
INSERT INTO "Departments" ("DepartmentName", "Building") VALUES ('Marketing', 'North');
-- INSERT 0 1
-- INSERT 0 1
--
--
INSERT INTO "Employees" ("FullName",	"Salary",	"JobPosition",	"PhoneExtension",	"IsPartTime",	"DepartmentId") VALUES ('Tim Smith',	40000,	'Programmer',	123,	FALSE,	1);
INSERT INTO "Employees" ("FullName",	"Salary",	"JobPosition",	"PhoneExtension",	"IsPartTime",	"DepartmentId") VALUES ('Barbara Ramsey',	80000,	'Manager',	234,	FALSE,	1);
INSERT INTO "Employees" ("FullName",	"Salary",	"JobPosition",	"PhoneExtension",	"IsPartTime",	"DepartmentId") VALUES ('Tom Jones',	32000,	'Admin',	456,	TRUE,	2);
-- INSERT 0 1
-- INSERT 0 1
-- INSERT 0 1
--
--
INSERT INTO "Products" ("Price",	"Name",	"Description",	"QuantityInStock") VALUES (12.45,	'Widget',	'The Original Widget',	100);
INSERT INTO "Products" ("Price",	"Name",	"Description",	"QuantityInStock") VALUES (99.99,	'Flowbee',	'Perfect for haircuts',	3);
-- INSERT 0 1
-- INSERT 0 1
--
--
INSERT INTO "Orders" ("OrderNumber",	"DatePlaced",	"Email") VALUES ('X529',	'2020-01-01 16:55:00',	'person@example.com');
-- INSERT 0 1
--
--
INSERT INTO "ProductOrders" ("OrderId",	"ProductId",	"OrderQuantity") VALUES (1,	1, 3);
INSERT INTO "ProductOrders" ("OrderId",	"ProductId",	"OrderQuantity") VALUES (1,	2, 2);
-- INSERT 0 1
-- INSERT 0 1
--
--
SELECT "Departments"."Building", "Departments"."DepartmentName", "Employees"."FullName"
FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Building" = 'East';
-- +------------+------------------+------------+
-- | Building   | DepartmentName   | FullName   |
-- |------------+------------------+------------|
-- +------------+------------------+------------+
-- SELECT 0
--
--
SELECT "Departments"."Building", "Departments"."DepartmentName", "Employees"."FullName"
FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Building" = 'North Side';
-- +------------+------------------+------------+
-- | Building   | DepartmentName   | FullName   |
-- |------------+------------------+------------|
-- +------------+------------------+------------+
-- SELECT 0
--
-- 
SELECT "Departments"."Building", "Departments"."DepartmentName", "Employees"."FullName"
FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."Id"
WHERE "Departments"."Building" = 'Main';
-- +------------+------------------+----------------+
-- | Building   | DepartmentName   | FullName       |
-- |------------+------------------+----------------|
-- | Main       | Development      | Tim Smith      |
-- | Main       | Development      | Barbara Ramsey |
-- +------------+------------------+----------------+
-- SELECT 2
--
--
SELECT "Orders"."OrderNumber", "Products"."Name", "Products"."Id", "ProductOrders"."OrderQuantity"
FROM "Orders"
JOIN "ProductOrders" ON "Orders"."Id" = "ProductOrders"."OrderId"
JOIN "Products" ON "ProductOrders"."ProductId" = "Products"."Id"
WHERE "ProductOrders"."ProductId" = 2;
-- +---------------+---------+------+-----------------+
-- | OrderNumber   | Name    | Id   | OrderQuantity   |
-- |---------------+---------+------+-----------------|
-- | X529          | Flowbee | 2    | 2               |
-- +---------------+---------+------+-----------------+
-- SELECT 1
--
--
SELECT "Products"."Name", "ProductOrders"."OrderQuantity"
FROM "Orders"
JOIN "ProductOrders" ON "Orders"."Id" = "ProductOrders"."OrderId"
JOIN "Products" ON "ProductOrders"."ProductId" = "Products"."Id"
WHERE ("Orders"."OrderNumber" = 'X529' AND "Products"."Name" = 'Flowbee');
-- --+---------+-----------------+
-- | Name    | OrderQuantity   |
-- |---------+-----------------|
-- | Flowbee | 2               |
-- +---------+-----------------+
-- SELECT 1
--
--

