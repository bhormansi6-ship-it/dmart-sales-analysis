# SQL Banking Database Labs (BankingDB)

A set of 9 hands-on SQL labs built around one banking database. The labs start with creating a table and build up to constraints, data manipulation, functions, window functions, joins and subqueries. All labs are combined in one script, in the order they were done.

## Database Schema

| Table | Key Columns |
|-------|-------------|
| `Customers` | CustomerID (PK), FirstName, LastName, Email (unique), Phone, DateOfBirth |
| `Accounts` | AccountID (PK), AccountType, Balance (CHECK ≥ 1000), CustomerID (FK), BranchID (FK) |
| `Transactions` | TransactionID (PK), TransactionDate, Amount, TransactionType, AccountID (FK) |
| `Branches` | BranchID (PK), BranchName, BranchAddress, BranchPhone |
| `Loans` | LoanID (PK), LoanAmount, InterestRate, StartDate, EndDate, CustomerID (FK) |

**Relationships:** a customer has many accounts and loans, an account has many transactions, and each account belongs to one branch.

## Labs Overview

| Lab | Topic | Concepts |
|-----|-------|----------|
| 1 | Create database and table | `CREATE DATABASE`, `CREATE TABLE`, `DESCRIBE` |
| 2 | DDL and constraints | `ALTER`, `DROP`, Primary Key, Foreign Key, `CHECK`, `UNIQUE`, `NOT NULL` |
| 3 | DML | `INSERT`, `UPDATE` |
| 4 | Querying basics | `WHERE`, `BETWEEN`, `IN`, `LIKE`, `ORDER BY`, `DISTINCT`, `LIMIT`, `OFFSET`, `IS NULL`, `CASE`, basic window functions |
| 5 | Filtering and sorting combinations | `LIKE` patterns, `IN`, `ORDER BY` with `LIMIT` |
| 6 | Functions | String, numeric, date and NULL functions, aggregates, `GROUP BY`, `HAVING` |
| 7 | Window functions | `RANK`, `DENSE_RANK`, `ROW_NUMBER`, `PARTITION BY`, running total, `LAG`, `LEAD` |
| 8 | Joins | `INNER JOIN`, `LEFT JOIN` with filters and sorting |
| 9 | Subqueries | Subqueries with `AVG`, `MAX`, and `IN` |

## Repository Structure

```
sql-banking-database-labs/
├── README.md
└── banking_db_sql_labs.sql
```

The script has a clearly marked section for each lab.

## Sample Queries

**Accounts with a balance above the average (subquery)**

```sql
SELECT AccountID, AccountType, Balance, CustomerID
FROM Accounts
WHERE Balance > (SELECT AVG(Balance) FROM Accounts)
ORDER BY Balance DESC;
```

**Rank loans by amount (window function)**

```sql
SELECT LoanID, CustomerID, LoanAmount,
       RANK() OVER (ORDER BY LoanAmount DESC) AS LoanRank
FROM Loans;
```

**Accounts with their transactions (join)**

```sql
SELECT a.AccountID, a.AccountType, a.Balance,
       t.TransactionID, t.TransactionType, t.Amount
FROM Accounts a
INNER JOIN Transactions t
ON a.AccountID = t.AccountID;
```

## How to Run

Requires **MySQL 8.0 or later** (window functions are not available in older versions).

```bash
mysql -u root -p < banking_db_sql_labs.sql
```

Or open `banking_db_sql_labs.sql` in MySQL Workbench and run it section by section.

> **Note:** The script starts with `DROP DATABASE IF EXISTS BankingDB;`, so it recreates the database from scratch each time. Do not run it if you already have a database with this name that you want to keep.

## Tools

- MySQL 8.0
- MySQL Workbench

## Author
Mansi Bhor
