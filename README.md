# SQL Server Practice: From SELECT to CREATE & INSERT

Hands-on exercises in **T-SQL (Microsoft SQL Server)**, organized in 9 progressive levels. Every file starts with the questions as a comment block, followed by a solution under each question.

## Levels

| # | Topic | Skills | File |
|---|-------|--------|------|
| 1 | SELECT & FROM | choosing tables and columns | [`01_select_from.sql`](sql/01_select_from.sql) |
| 2 | WHERE | comparison operators, `AND` / `OR`, dates | [`02_where.sql`](sql/02_where.sql) |
| 3 | ORDER BY | `ASC` / `DESC`, multi-column sorting | [`03_order_by.sql`](sql/03_order_by.sql) |
| 4 | GROUP BY | `SUM`, `COUNT`, `AVG`, `MAX` | [`04_group_by.sql`](sql/04_group_by.sql) |
| 5 | HAVING | filtering groups | [`05_having.sql`](sql/05_having.sql) |
| 6 | Combined challenges | `WHERE` + `GROUP BY` + `HAVING` + `ORDER BY` | [`06_combined_challenges.sql`](sql/06_combined_challenges.sql) |
| 7 | Filtering tools | `DISTINCT`, `TOP`, `BETWEEN`, `IN`, `LIKE`, `TRIM`, `LEN` | [`07_filtering_tools.sql`](sql/07_filtering_tools.sql) |
| 8 | CREATE | database, tables, `PRIMARY KEY`, `IDENTITY`, `FOREIGN KEY`, `CHECK`, `DEFAULT` | [`08_create.sql`](sql/08_create.sql) |
| 9 | INSERT | populating parent and child tables | [`09_insert.sql`](sql/09_insert.sql) |

## Key Concepts

- **Logical order of a query:** `FROM` -> `WHERE` -> `GROUP BY` -> `HAVING` -> `SELECT` -> `ORDER BY`. `WHERE` filters rows before grouping; `HAVING` filters groups after aggregation (Level 6).
- **Operator precedence:** `AND` binds tighter than `OR`, so mixed conditions need parentheses (Level 7, Q7).
- **Dirty data:** leading spaces in `first_name` break `LIKE` and `LEN` checks, so values are cleaned with `TRIM()` (Level 7).
- **Referential integrity:** `orders` references `shop_customers` and `products`, so parent tables are filled first (Level 9).
- **Identity columns:** `IDENTITY(1,1)` generates keys automatically, so they are left out of `INSERT` lists.

## The Data

- **Levels 1-7** query a sample database with two tables: `customers` (`id`, `first_name`, `country`, `score`) and `orders` (`order_id`, `customer_id`, `order_date`, `sales`). The exercise rows (e.g. "(2 rows)") refer to that sample data, which is not included in this repo.
- **Levels 8-9** build and fill their own database, `PracticeDB`, with `products`, `shop_customers` and `orders`.

```
shop_customers 1 ──< orders >── 1 products
```

## How to Run

1. Install SQL Server and SQL Server Management Studio (SSMS) or Azure Data Studio.
2. Open a file from the [`sql/`](sql/) folder and run it against your database. Levels 1-7 need the sample `customers` and `orders` tables.
3. For Levels 8-9, run `08_create.sql` first and then `09_insert.sql`. Re-running `08_create.sql` on an existing `PracticeDB` fails because the tables already exist; drop them (or the database) first.

`TRIM()` requires SQL Server 2017 or later.

## Repository Structure

```
sql-server-practice/
├── README.md
├── LICENSE
├── .gitignore
└── sql/
    ├── 01_select_from.sql
    ├── 02_where.sql
    ├── 03_order_by.sql
    ├── 04_group_by.sql
    ├── 05_having.sql
    ├── 06_combined_challenges.sql
    ├── 07_filtering_tools.sql
    ├── 08_create.sql
    └── 09_insert.sql
```

## Author

**Mostafa**. Building a solid foundation in databases and SQL on the way into software testing / QA.
