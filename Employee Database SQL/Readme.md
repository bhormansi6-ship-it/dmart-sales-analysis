# SQL Employee Database Practice

A hands-on SQL project built on a sample employee database of **500 employees** across multiple departments. It contains the schema, the dataset, and around 95 practice queries that go from basic `SELECT` statements to joins and window functions.

> In the query comments, **WAQ** stands for "Write A Query".

## Database Schema

**`employee`** (500 rows)

| Column | Type | Description |
|--------|------|-------------|
| employee_id | INT (PK) | Unique employee ID (101 to 600) |
| first_name | VARCHAR(50) | First name |
| last_name | VARCHAR(50) | Last name |
| email | VARCHAR(100) | Company email |
| hire_date | DATE | Joining date |
| job_title | VARCHAR(50) | Designation |
| department_id | INT (FK) | Links to `department` |
| manager_id | INT (FK) | Links to `employee` (self reference) |
| salary | DECIMAL(10,2) | Salary |

**`department`**

| Column | Type | Description |
|--------|------|-------------|
| department_id | INT (PK) | Unique department ID |
| department_name | VARCHAR(50) | Department name |

## Repository Structure

```
sql-employee-database-practice/
├── README.md
├── 01_schema_and_data.sql      # Creates the database, tables and inserts data
└── 02_practice_queries.sql     # All practice queries, grouped by topic
```

## SQL Topics Covered

| Topic | Examples |
|-------|----------|
| Basic SELECT | Select columns, filter with `WHERE`, `DISTINCT` |
| Sorting and limiting | `ORDER BY`, `LIMIT` (top N newest employees) |
| Operators | `AND`, `OR`, `NOT`, `IN`, `BETWEEN`, `LIKE`, `IS NULL` |
| Aggregate functions | `COUNT`, `SUM`, `AVG`, `MIN`, `MAX`, `ROUND` |
| GROUP BY and HAVING | Employees per department, job titles with a high average salary |
| CASE statements | Salary grades (A/B/C), salary bands (Low/Mid/High) |
| String functions | `UPPER`, `LOWER`, `TRIM`, `SUBSTRING`, `REPLACE`, `RIGHT`, `LENGTH`, `CONCAT` |
| Date functions | Hire date filters, `YEAR()`, longest-serving employee |
| Data modification | `UPDATE` (for example, changing a manager ID) |
| Joins | `INNER JOIN`, `LEFT JOIN`, `CROSS JOIN`, `SELF JOIN` |
| Window functions | `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()` |
| Business analysis | Department-wise analysis, salary vs department average, duplicate first names |

## Sample Queries

**Departments with more than 10 employees**

```sql
SELECT department_id, COUNT(*) AS total_employees
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 10;
```

**Employee names with their department names**

```sql
SELECT e.first_name, e.salary, d.department_name
FROM employee e
INNER JOIN department d
ON e.department_id = d.department_id;
```

**Pairs of employees in the same department with the same salary (self join)**

```sql
SELECT e1.first_name AS employee1,
       e2.first_name AS employee2,
       e1.department_id,
       e1.salary
FROM employee e1
INNER JOIN employee e2
ON e1.department_id = e2.department_id
AND e1.salary = e2.salary
AND e1.employee_id < e2.employee_id;
```

**Rank employees by salary (window function)**

```sql
SELECT employee_id, first_name, salary,
       DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
FROM employee;
```

## How to Run

Works with MySQL (tested syntax: `USE`, `LIMIT`, `YEAR()`).

1. Open MySQL Workbench or the MySQL command line.
2. Run the schema and data script:

```bash
mysql -u root -p < 01_schema_and_data.sql
```

3. Open `02_practice_queries.sql` and run the queries one at a time.

## Tools

- MySQL
- MySQL Workbench

## Author
Mansi Bhor
