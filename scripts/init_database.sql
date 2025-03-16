/*
======================================
Create database and schema
=====================================
-- Script Purpose:
-- This script is designed to manage the Datawarehouse database in SQL Server.
-- It performs the following tasks:
-- 1. Checks if the Datawarehouse database exists.
-- 2. If the database exists, it drops the existing Datawarehouse database.
-- 3. Creates a new Datawarehouse database.
-- 4. Switches to the newly created Datawarehouse database.
-- 5. Creates three schemas within the Datawarehouse database: Bronze, Silver, and Gold.
-- 6. Selects and displays the names of all schemas in the Datawarehouse database.
*/

USE master;
-- Check if the Datawarehouse database exists and drop it if it does
IF EXISTS (SELECT name FROM sys.databases WHERE name = 'Datawarehouse')
BEGIN
    DROP DATABASE Datawarehouse;
END
GO

-- Create the Datawarehouse database
CREATE DATABASE Datawarehouse;
GO

-- Use the Datawarehouse database
USE Datawarehouse;
GO

-- Create schemas
CREATE SCHEMA Bronze;
GO
CREATE SCHEMA Silver;
GO
CREATE SCHEMA Gold;
GO

-- Select schema names
SELECT schema_name
FROM information_schema.schemata;
