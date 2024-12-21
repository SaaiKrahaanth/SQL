# SQL Query Basics

This document summarizes essential SQL commands for querying and filtering data in a database.

---

## Key Commands and Their Usage

1. **`SELECT`**:
   - Retrieves data from a database.
   - Syntax: `SELECT column_name FROM table_name;`

2. **`AS`**:
   - Renames columns or tables for better readability.
   - Syntax: `SELECT column_name AS alias_name FROM table_name;`

3. **`DISTINCT`**:
   - Returns unique values from a column.
   - Syntax: `SELECT DISTINCT column_name FROM table_name;`

4. **`WHERE`**:
   - Filters results based on specified conditions.
   - Syntax: `SELECT column_name FROM table_name WHERE condition;`

5. **`LIKE`**:
   - Searches for a specified pattern in a column.
   - Syntax: `SELECT column_name FROM table_name WHERE column_name LIKE pattern;`

6. **`BETWEEN`**:
   - Filters values within a specific range.
   - Syntax: `SELECT column_name FROM table_name WHERE column_name BETWEEN value1 AND value2;`

7. **`AND` & `OR`**:
   - Combines multiple conditions in a `WHERE` clause.
   - Syntax:
     - `SELECT column_name FROM table_name WHERE condition1 AND condition2;`
     - `SELECT column_name FROM table_name WHERE condition1 OR condition2;`

8. **`ORDER BY`**:
   - Sorts the query results.
   - Syntax: `SELECT column_name FROM table_name ORDER BY column_name [ASC|DESC];`

9. **`LIMIT`**:
   - Specifies the maximum number of rows to return.
   - Syntax: `SELECT column_name FROM table_name LIMIT number;`

10. **`CASE`**:
    - Creates conditional logic to generate different outputs.
    - Syntax:
      ```sql
      SELECT column_name,
      CASE
          WHEN condition1 THEN result1
          WHEN condition2 THEN result2
          ELSE result_default
      END AS alias_name
      FROM table_name;
      ```

---

## Experimentation

Feel free to practice these commands with the `movies` table to gain hands-on experience. Combine commands to explore filtering, sorting, and customizing queries.

---

## Next Steps

Once comfortable with these basics, you can proceed to learn about:
- Joins
- Aggregate functions (`COUNT`, `SUM`, `AVG`, etc.)
- Subqueries
- Indexing for performance optimization

Happy querying!
