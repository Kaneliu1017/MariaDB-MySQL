/*
=========================================================
FILE: 02-create-tables.sql

PROJECT
Company Resource Management System

PURPOSE
Create the complete relational model.

CONCEPTS COVERED
- PRIMARY KEY
- COMPOSITE PRIMARY KEY
- FOREIGN KEY
- UNIQUE
- NOT NULL
- INDEX
- AUTO_INCREMENT
- DEFAULT
- UNSIGNED
- NORMALIZATION (3NF)

TABLES
- departments
- employees
- projects
- employee_projects
=========================================================
*/

-- =====================================================
-- DEPARTMENTS
-- =====================================================

CREATE TABLE departments (

    department_id INT AUTO_INCREMENT,

    department_name VARCHAR(100)
        NOT NULL,

    created_at DATETIME
        DEFAULT CURRENT_TIMESTAMP,

    PRIMARY KEY (department_id),

    UNIQUE (department_name)
);

-- =====================================================
-- EMPLOYEES
-- =====================================================

CREATE TABLE employees (

    employee_id INT AUTO_INCREMENT,

    first_name VARCHAR(50)
        NOT NULL,

    last_name VARCHAR(50)
        NOT NULL,

    email VARCHAR(150)
        NOT NULL,

    salary DECIMAL(10,2)
        UNSIGNED
        DEFAULT 0,

    hire_date DATE
        NOT NULL,

    department_id INT,

    created_at DATETIME
        DEFAULT CURRENT_TIMESTAMP,

    updated_at DATETIME
        DEFAULT CURRENT_TIMESTAMP
        ON UPDATE CURRENT_TIMESTAMP,

    PRIMARY KEY (employee_id),

    UNIQUE (email),

    INDEX (last_name),

    CONSTRAINT fk_employee_department

        FOREIGN KEY (department_id)

        REFERENCES departments(department_id)

        ON DELETE SET NULL

        ON UPDATE CASCADE
);

-- =====================================================
-- PROJECTS
-- =====================================================

CREATE TABLE projects (

    project_id INT AUTO_INCREMENT,

    project_name VARCHAR(100)
        NOT NULL,

    budget DECIMAL(12,2)
        UNSIGNED
        DEFAULT 0,

    start_date DATE,

    PRIMARY KEY (project_id),

    UNIQUE (project_name)
);

-- =====================================================
-- EMPLOYEE_PROJECTS
--
-- Many-to-Many relationship
-- Employees <--> Projects
-- =====================================================

CREATE TABLE employee_projects (

    employee_id INT,

    project_id INT,

    assigned_date DATE
        NOT NULL,

    role_name VARCHAR(50)
        NOT NULL,

    PRIMARY KEY (
        employee_id,
        project_id
    ),

    CONSTRAINT fk_ep_employee

        FOREIGN KEY (employee_id)

        REFERENCES employees(employee_id)

        ON DELETE CASCADE

        ON UPDATE CASCADE,

    CONSTRAINT fk_ep_project

        FOREIGN KEY (project_id)

        REFERENCES projects(project_id)

        ON DELETE CASCADE

        ON UPDATE CASCADE
);
