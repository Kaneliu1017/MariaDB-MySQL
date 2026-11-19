/*
=========================================================
FILE: 01-create-database.sql

PURPOSE
Create the project database.

TOPICS
- CREATE DATABASE
- CHARACTER SET
- COLLATION
=========================================================
*/

DROP DATABASE IF EXISTS company_management;

CREATE DATABASE company_management
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

USE company_management;
