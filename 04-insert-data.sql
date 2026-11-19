/*
=========================================================
FILE: 04-insert-data.sql

PURPOSE
Insert sample data.

TOPICS
- INSERT
- MULTI-ROW INSERT
=========================================================
*/

INSERT INTO departments
(depart*ent_name)
VALUES
('Engineering'),
('Marketing'),
('Finance');

INSERT INTO employees
(
    first_name,
    last_name,
    email,
    salary,
    hire_date
)
VALUES
(
    'John',
    'Smith',
    'john.smith@company.com',
    3500,
    '2024-01-15'
),
(
    'Emily',
    'Johnson',
    'emily.johnson@company.com',
    4500,
    '2024-02-01'
);

INSERT INTO projects
(project_name, budget)
VALUES
(
    'CRM Migration',
    25000
),
(
    'Website Redesign',
    15000
);
