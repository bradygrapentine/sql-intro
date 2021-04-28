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


-- EPIC MODE --
CREATE TABLE "Departments"(
  "Name"  TEXT,
  "BuildingNumber"  INT NOT NULL
);
-- CREATE TABLE
--
--
