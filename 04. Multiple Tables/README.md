```markdown
# Multiple Tables and SQL Joins Review  

## Summary of Concepts with Syntax  

1. **JOIN**  
   Combines rows from different tables based on a specified condition.  
   ```sql
   SELECT columns
   FROM table1
   JOIN table2
   ON table1.column = table2.column;
   ```

2. **LEFT JOIN**  
   Includes all rows from the left table; unmatched rows from the right table are filled with `NULL`.  
   ```sql
   SELECT columns
   FROM table1
   LEFT JOIN table2
   ON table1.column = table2.column;
   ```

3. **Primary Key**  
   A unique identifier for rows in a table. Typically defined during table creation.  
   ```sql
   CREATE TABLE table_name (
       id INT PRIMARY KEY,
       column_name datatype
   );
   ```

4. **Foreign Key**  
   A column that references the primary key in another table.  
   ```sql
   CREATE TABLE table_name (
       column_name datatype,
       FOREIGN KEY (column_name) REFERENCES other_table(primary_key)
   );
   ```

5. **CROSS JOIN**  
   Combines all rows from one table with all rows of another, creating a Cartesian product.  
   ```sql
   SELECT *
   FROM table1
   CROSS JOIN table2;
   ```

6. **UNION**  
   Stacks the results of two datasets vertically, ensuring column compatibility.  
   ```sql
   SELECT columns
   FROM table1
   UNION
   SELECT columns
   FROM table2;
   ```

7. **WITH Clause (Common Table Expression - CTE)**  
   Defines temporary tables to simplify complex queries.  
   ```sql
   WITH cte_name AS (
       SELECT columns
       FROM table
   )
   SELECT *
   FROM cte_name;
   ```

## Practice Tables  
- **Orders**: Information about customer orders.  
- **Subscriptions**: Data about user subscriptions.  
- **Customers**: User profiles and details.  

## Recommendations  
Experiment with joins and combinations between the tables using the syntax above to gain familiarity before moving forward.  
```