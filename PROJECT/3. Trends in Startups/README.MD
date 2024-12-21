# SQL Trends in Startups

1. **View Table Structure**  
   Query: `SELECT * FROM startups;`  
   Task: Count the number of columns.

2. **Total Companies**  
   Query: `SELECT COUNT(*) FROM startups;`

3. **Total Valuation**  
   Query: `SELECT SUM(valuation) FROM startups;`

4. **Highest Amount Raised**  
   Query: `SELECT MAX(amount_raised) FROM startups;`

5. **Max Raised in Seed Stage**  
   Query: `SELECT MAX(amount_raised) FROM startups WHERE stage = 'Seed';`

6. **Oldest Company Year**  
   Query: `SELECT MIN(year_founded) FROM startups;`

7. **Average Valuation**  
   Query: `SELECT AVG(valuation) FROM startups;`

8. **Average Valuation by Category**  
   Query: `SELECT category, AVG(valuation) FROM startups GROUP BY category;`

9. **Rounded Average by Category**  
   Query: `SELECT category, ROUND(AVG(valuation), 2) FROM startups GROUP BY category;`

10. **Sorted Rounded Averages**  
    Query: `SELECT category, ROUND(AVG(valuation), 2) AS avg_valuation FROM startups GROUP BY category ORDER BY avg_valuation DESC;`

11. **Count by Category**  
    Query: `SELECT category, COUNT(*) FROM startups GROUP BY category;`

12. **Categories with >3 Companies**  
    Query: `SELECT category, COUNT(*) FROM startups GROUP BY category HAVING COUNT(*) > 3;`

13. **Average Size by Location**  
    Query: `SELECT location, AVG(size) FROM startups GROUP BY location;`

14. **Locations with Avg Size > 500**  
    Query: `SELECT location, AVG(size) AS avg_size FROM startups GROUP BY location HAVING avg_size > 500;`
