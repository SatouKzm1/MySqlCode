# 📊 MySQL Fundamentals & Data Querying Tutorial

Welcome to my SQL learning repository! This project showcases a structured collection of fundamental SQL scripts focused on data retrieval, filtering, aggregation, and conditional sorting using **MySQL** and **MySQL Workbench**.

---

## 📌 Topics & Concepts Covered

### 1. 🔍 Basic Querying (`Select Statement Tutorial.sql`)
Demonstrates core data retrieval techniques:
* **`SELECT *`**: Fetching complete datasets from target tables.
* **Column Arithmetic**: Performing mathematical operations on numerical fields (e.g., `(age + 10) * 10 + 10 / 10`).
* **`DISTINCT`**: Eliminating duplicate entries to retrieve unique value combinations.

### 2. 🎯 Data Filtering (`Where Clause in MySQL.sql`)
Filtering rows based on specific business conditions:
* **Comparison Operators**: Using `=`, `!=`, `>`, `<`, `>=`, and `<=` to isolate relevant records.
* **Logical Operators**: Combining multiple criteria with `AND`, `OR`, and `NOT`, including bracket hierarchy `()` for complex logic.
* **Pattern Matching (`LIKE`)**: Applying wildcards (`%` for multiple characters, `_` for exact character counts) for string searches.

### 3. 📈 Aggregation & Sorting (`Group By + Order By in MySQL.sql`)
Summarizing dataset metrics and ordering outputs:
* **`GROUP BY`**: Categorizing data across key dimensions (e.g., `gender`, `occupation`).
* **Aggregate Functions**: Calculating summary statistics using `AVG()`, `MAX()`, `MIN()`, `SUM()`, and `COUNT()`.
* **`ORDER BY`**: Sorting query results in `ASC` (default) or `DESC` order across single or multiple columns.

### 4. ⚡ Advanced Filtering (`Having vs Where in MySQL.sql`)
Distinguishing between row-level pre-filtering and group-level post-filtering:
* **`WHERE`**: Filters individual records **before** data aggregation occurs.
* **`HAVING`**: Filters summary groups **after** aggregation functions are evaluated (e.g., `HAVING AVG(age) > 40`).

---

## 🛠️ Tools & Environment

* **Database Engine:** MySQL 8.0+
* **IDE / Client:** MySQL Workbench
* **Sample Schema:** `parks_and_recreation`
* **Target Tables:** `employee_demographics`, `employee_salary`

---

## 📁 Repository Script Index

| File Name | Key Learning Focus |
| :--- | :--- |
| 📄 `Select Statement Tutorial.sql` | `SELECT` basics, Column Arithmetic, `DISTINCT` |
| 📄 `Where Clause in MySQL.sql` | `WHERE` filtering, Logical Operators, Pattern Matching (`LIKE`) |
| 📄 `Group By + Order By in MySQL.sql` | Data Aggregation (`AVG`, `SUM`, `COUNT`), Result Sorting (`ORDER BY`) |
| 📄 `Having vs Where in MySQL.sql` | Differences between row-level (`WHERE`) and aggregate (`HAVING`) filters |

---

## 💡 Key Takeaway

> **Execution Order Rule:**  
> The `WHERE` clause cannot evaluate aggregate functions directly (e.g., `WHERE AVG(salary) > 50000` causes an error). Always use `HAVING` to apply logical conditions to aggregated metric calculations.
> 
> **Standard Query Execution Flow:**  
> `FROM` ➡️ `WHERE` ➡️ `GROUP BY` ➡️ `HAVING` ➡️ `SELECT` ➡️ `ORDER BY`
