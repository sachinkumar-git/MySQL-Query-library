# MySQL Learning Notes

A collection of MySQL scripts written while learning SQL, from creating a first table to joins, subqueries, views, indexes, stored procedures and triggers.

## About the Repository

The repository has two folders:

- **01-sql-fundamentals**: 22 scripts that follow the learning sequence. Each script covers one topic. Most scripts keep earlier variations of a query as commented-out examples and leave one query active.
- **02-sql-practical-examples**: 5 setup scripts that build the sample database used by the fundamentals scripts: a `users` table with 25 sample rows, an `addresses` table with a foreign key, an `admin_users` table and a `user_log` table.

All examples use a small sample database named `startersql`.

## Learning Objectives

- Create databases and tables with suitable data types and constraints
- Insert, update and delete data
- Filter, sort and limit query results
- Use aggregate, string, date and numeric functions
- Group data with `GROUP BY`, `HAVING` and `WITH ROLLUP`
- Link tables with foreign keys and combine them with joins
- Combine result sets with `UNION` and `UNION ALL`
- Write subqueries
- Create views, indexes, stored procedures and triggers
- Control changes with transactions, `COMMIT` and `ROLLBACK`

## Technologies Used

- MySQL 8.0
- MySQL Workbench
- MySQL Command Line Client

## Topics Covered

| # | File | Topic |
|---|------|-------|
| 01 | `01-create-database-and-table.sql` | `CREATE DATABASE`, `CREATE TABLE`, constraints |
| 02 | `02-alter-table-columns.sql` | `ALTER TABLE`: add, modify and reorder columns |
| 03 | `03-insert-rows.sql` | `INSERT INTO` with and without column names |
| 04 | `04-filtering-and-sorting-rows.sql` | `WHERE`, comparison and logical operators, `BETWEEN`, `IN`, `IS NULL`, `ORDER BY`, `LIMIT` |
| 05 | `05-update-rows.sql` | `UPDATE` |
| 06 | `06-delete-rows-and-drop-table.sql` | `DELETE`, `DROP TABLE` |
| 07 | `07-sql-functions.sql` | `COUNT`, `MIN`, `MAX`, `SUM`, `AVG`, `LENGTH`, `CONCAT`, `DATEDIFF`, `ROUND` |
| 08 | `08-foreign-key-constraints.sql` | `FOREIGN KEY`, `ON DELETE CASCADE` |
| 09 | `09-transactions-and-autocommit.sql` | `AUTOCOMMIT`, `COMMIT`, `ROLLBACK` |
| 10 | `10-inner-left-right-joins.sql` | `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN` |
| 11 | `11-create-admin-users-table.sql` | Second table for `UNION` examples |
| 12 | `12-union-and-union-all.sql` | `UNION`, `UNION ALL` |
| 13 | `13-self-join.sql` | Self join |
| 14 | `14-views.sql` | `CREATE VIEW`, `DROP VIEW` |
| 15 | `15-indexes.sql` | `CREATE INDEX`, composite indexes, `SHOW INDEXES` |
| 16 | `16-subqueries.sql` | Subqueries in `WHERE`, with `IN` and in `SELECT` |
| 17 | `17-group-by-and-having.sql` | `GROUP BY`, `HAVING`, `WITH ROLLUP` |
| 18 | `18-stored-procedures.sql` | `CREATE PROCEDURE`, `IN` parameters, `CALL` |
| 19 | `19-create-user-log-table.sql` | Log table for the trigger example |
| 20 | `20-after-insert-trigger.sql` | `AFTER INSERT` trigger |
| 21 | `21-like-limit-distinct-truncate.sql` | `LIKE`, `LIMIT` with `OFFSET`, `DISTINCT`, `TRUNCATE` |
| 22 | `22-alter-table-practice.sql` | Extra practice with `ALTER TABLE` and `INSERT` |

## Repository Structure

```
mysql-learning-notes/
├── 01-sql-fundamentals/
│   ├── 01-create-database-and-table.sql
│   ├── 02-alter-table-columns.sql
│   ├── 03-insert-rows.sql
│   ├── 04-filtering-and-sorting-rows.sql
│   ├── 05-update-rows.sql
│   ├── 06-delete-rows-and-drop-table.sql
│   ├── 07-sql-functions.sql
│   ├── 08-foreign-key-constraints.sql
│   ├── 09-transactions-and-autocommit.sql
│   ├── 10-inner-left-right-joins.sql
│   ├── 11-create-admin-users-table.sql
│   ├── 12-union-and-union-all.sql
│   ├── 13-self-join.sql
│   ├── 14-views.sql
│   ├── 15-indexes.sql
│   ├── 16-subqueries.sql
│   ├── 17-group-by-and-having.sql
│   ├── 18-stored-procedures.sql
│   ├── 19-create-user-log-table.sql
│   ├── 20-after-insert-trigger.sql
│   ├── 21-like-limit-distinct-truncate.sql
│   └── 22-alter-table-practice.sql
├── 02-sql-practical-examples/
│   ├── 01-create-users-table.sql
│   ├── 02-insert-sample-users.sql
│   ├── 03-foreign-key-constraints.sql
│   ├── 04-create-admin-users-table.sql
│   └── 05-create-user-log-table.sql
├── .gitignore
└── README.md
```

## How to Run the SQL Scripts

1. Install MySQL Server 8.0 and, optionally, MySQL Workbench.
2. Set up the sample database by running the scripts in `02-sql-practical-examples` in order (01 to 05).
3. Open any script in `01-sql-fundamentals` and run it.
4. To try a different example inside a script, comment out the active query and uncomment the one you want.

Before you run the fundamentals scripts, note the following:

- `06-delete-rows-and-drop-table.sql` drops the `users` table, and `21-like-limit-distinct-truncate.sql` deletes all of its rows. To restore the data, run the setup scripts again.
- `07-sql-functions.sql` and `09-transactions-and-autocommit.sql` use a database named `startersql2`. To run them on the sample data, change `USE startersql2;` to `USE startersql;`.
- `22-alter-table-practice.sql` uses a separate practice database (`myfirst`) that is not created by the setup scripts.

### MySQL Workbench

1. Open MySQL Workbench and connect to your local MySQL server.
2. Select **File > Open SQL Script** and choose a `.sql` file.
3. To run the whole script, click the lightning bolt icon or press `Ctrl + Shift + Enter`.
4. To run only the statement under the cursor, press `Ctrl + Enter`.
5. Results appear in the result grid below the editor.

### MySQL CLI

Run a script from a terminal opened in the repository folder:

```bash
mysql -u root -p < 02-sql-practical-examples/01-create-users-table.sql
mysql -u root -p startersql < 02-sql-practical-examples/02-insert-sample-users.sql
```

Or run a script from inside the MySQL shell:

```sql
mysql -u root -p
SOURCE 02-sql-practical-examples/01-create-users-table.sql;
USE startersql;
SELECT * FROM users;
```

## Example SQL Query

Average salary by gender, showing only groups with an average above 60000:

```sql
USE startersql;

SELECT gender, AVG(salary) AS avg_salary
FROM users
GROUP BY gender
HAVING AVG(salary) > 60000;
```
