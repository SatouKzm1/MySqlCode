# 📊 MySQL Data Analytics Portfolio: From Fundamentals to End-to-End Data Pipeline

![MySQL](https://img.shields.io/badge/MySQL-8.0-blue?style=for-the-badge&logo=mysql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Relational-orange?style=for-the-badge&logo=database)
![Role](https://img.shields.io/badge/Target_Role-Data_Analyst-green?style=for-the-badge)

Welcome to my comprehensive **MySQL Portfolio Repository**. This repository contains a structured, end-to-end collection of **17 SQL scripts** covering everything from foundational relational database querying and complex transformations to advanced analytic window functions, database automation, and real-world **Data Cleaning** & **Exploratory Data Analysis (EDA)** projects using global tech industry datasets.

---

## 📌 Executive Summary

This repository is organized into three main pillars:
1. **Core Querying & Logic (Scripts 01 – 10):** Filtering, grouping, string functions, multi-table joins, subqueries, and conditional decision-making logic.
2. **Advanced Database Objects & Analytics (Scripts 11 – 15):** Window functions, Common Table Expressions (CTEs), temporary tables, stored procedures, triggers, and scheduled events.
3. **Capstone Projects (Scripts 16 – 17):** Real-world *Data Cleaning Pipeline* and *Exploratory Data Analysis (EDA)* performed on global tech layoff data (`layoffs.csv`).

---

## 📁 Repository Script Index

| # | File Name | Category | Key Learning Focus & Concepts |
| :-: | :--- | :---: | :--- |
| 1 | 📄 `Select Statement Tutorial.sql` | Basic | `SELECT *`, column arithmetic, removing duplicates with `DISTINCT`[cite: 5] |
| 2 | 📄 `Where Clause in MySQL.sql` | Basic | Record filtering (`WHERE`), logical operators (`AND`/`OR`/`NOT`), wildcard search (`LIKE`)[cite: 6] |
| 3 | 📄 `Group By + Order By in MySQL.sql` | Basic | Dimensional aggregation (`GROUP BY`), summary metrics (`AVG`, `SUM`, `COUNT`), sorting (`ORDER BY`)[cite: 3] |
| 4 | 📄 `Having vs Where in MySQL.sql` | Intermediate | Row-level evaluation (`WHERE`) vs post-aggregation filtering (`HAVING`)[cite: 4] |
| 5 | 📄 `Limit + Aliasing in MySQL.sql` | Basic | Output pagination (`LIMIT`), column renaming (`AS`), alias filtering in `HAVING`[cite: 7] |
| 6 | 📄 `Joins in MySQL.sql` | Intermediate | Relational integrity: `INNER JOIN`, `RIGHT JOIN`, self-joins, and multi-table chaining[cite: 8] |
| 7 | 📄 `Unions in MySQL.sql` | Intermediate | Vertical result set merging (`UNION` / `UNION ALL`), conditional row labeling, global sorting[cite: 9] |
| 8 | 📄 `String Functions in MySQL.sql` | Intermediate | Text manipulation: case formatting (`UPPER`/`LOWER`), trimming, extraction (`SUBSTRING`), `CONCAT`[cite: 10] |
| 9 | 📄 `Case Statements in MySQL.sql` | Intermediate | Dynamic conditional logic (`CASE WHEN`), discrete categorizations, customized calculations[cite: 11] |
| 10 | 📄 `Subqueries in MySQL.sql` | Intermediate | Nested queries in `WHERE`, scalar benchmark calculations in `SELECT`, derived tables in `FROM` |
| 11 | 📄 `Window Functions in MySQL.sql` | Advanced | Non-collapsing aggregations (`OVER`), running totals, positional ranking (`ROW_NUMBER`, `RANK`, `DENSE_RANK`) |
| 12 | 📄 `CTEs in MySQL.sql` | Advanced | Modular query design (`WITH`), CTE vs derived tables, alias overrides, multi-CTE joins |
| 13 | 📄 `Temp Tables in MySQL.sql` | Advanced | Session-isolated storage (`CREATE TEMPORARY TABLE`), manual insertion, CTAS pattern |
| 14 | 📄 `Stored Procedures in MySQL.sql` | Automation | Server-side routine automation (`CREATE PROCEDURE`), dynamic parameters, custom delimiters (`DELIMITER $$`) |
| 15 | 📄 `Triggers and Events in MySQL.sql` | Automation | Automated action triggers (`AFTER INSERT`, `NEW`), scheduled background tasks (`CREATE EVENT`) |
| 16 | 📄 `Data Cleaning in MySQL.sql` | Capstone Project | **End-to-End Data Cleaning**: Staging setups, deduplication via CTE/`ROW_NUMBER()`, normalization, date conversion, self-join data imputation |
| 17 | 📄 `MySQL Exploratory Data Analysis.sql` | Capstone Project | **Exploratory Data Analysis (EDA)**: Dimensional breakdown, time-series monthly running totals, multi-level CTE top-5 yearly ranking |

---

## 🛠️ Capstone Projects Overview

### 1. 🧹 Data Cleaning Pipeline (`Data Cleaning in MySQL.sql`)
The objective of this project was to transform raw, unformatted layoff data (`layoffs.csv`) into a clean, normalized relational dataset ready for analytical modeling.

* **Data Integrity Preservation:** Created isolated staging environments (`layoffs_staging`, `layoffs_staging2`) to ensure raw source data immutability.
* **Deduplication:** Used `ROW_NUMBER() OVER(PARTITION BY ...)` inside CTEs to detect duplicates across all key dimensions and purged redundant records.
* **Standardization:**
  * Cleaned unwanted whitespace using `TRIM()`.
  * Standardized inconsistent categorical data (e.g., merging variants like `'Crypto%'` into `'Crypto'` and fixing country formatting like `'United States.'`).
  * Converted text-based date values into standard SQL dates using `STR_TO_DATE()` and altered schema column types via `ALTER TABLE`.
* **Missing Value Imputation:** Utilized SQL **Self-Joins** on matching `company` and `location` pairs to populate missing `industry` fields from existing records.
* **Pruning:** Stripped invalid rows lacking vital layoff metrics (`total_laid_off IS NULL AND percentage_laid_off IS NULL`) and dropped temporary tracking fields.

---

### 2. 📊 Exploratory Data Analysis (`MySQL Exploratory Data Analysis.sql`)
With the dataset fully cleaned, this project focused on uncovering business trends, economic impacts, and historical patterns regarding global workforce reductions.

* **Metric Extremes & Impact Analysis:** Evaluated total layoffs alongside 100% company shutdowns (`percentage_laid_off = 1`), sorted by total capital raised.
* **Multi-Dimensional Aggregations:** Grouped total layoffs across key operational metrics including **Company**, **Industry Sector**, **Country**, and **Funding Stage** (e.g., Post-IPO, Series B).
* **Time-Series Breakdown:**
  * Analyzed global layoff distributions across years.
  * Extracted year-month segments using `SUBSTRING()` and calculated cumulative running totals across time using `SUM() OVER(ORDER BY month)`.
* **Yearly Top-5 Company Rankings:** Built multi-layered CTEs combining `DENSE_RANK() OVER(PARTITION BY years ORDER BY total_laid_off DESC)` to identify and extract the top 5 companies suffering the largest layoffs for each calendar year.

---

## 💡 Standard Query Execution Order

Understanding the logical execution order of SQL is vital for writing efficient queries:

```text
FROM & JOIN ➡️ WHERE ➡️ GROUP BY ➡️ HAVING ➡️ SELECT ➡️ DISTINCT ➡️ ORDER BY ➡️ LIMIT
