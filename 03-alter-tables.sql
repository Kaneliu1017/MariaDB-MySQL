/*
=========================================================
FILE: 03-alter-tables.sql

PURPOSE
Modify existing tables.

TOPICS
- ADD COLUMN
- MODIFY COLUMN
- CHANGE COLUMN
- DROP COLUMN
=========================================================
*/

ALTER TABLE employees
ADD COLUMN phone_number VARCHAR(20);

ALTER TABLE employees
MODIFY COLUMN phone_number VARCHAR(30);

ALTER TABLE employees
CHANGE phone_number contact_number VARCHAR(30);

ALTER TABLE employees
DROP COLUMN contact_number;
