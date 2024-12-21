```markdown
# Learn SQL: New York Restaurants Project

This project uses the `nomnom` table to explore various SQL queries and answer specific questions about New York City restaurants.

---

## Table Overview
To begin, we examine the `nomnom` table schema:

### Query 1: Retrieve All Columns
```sql
SELECT * 
FROM nomnom;
```
### Output:
Columns in the table:
- `id`
- `name`
- `neighborhood`
- `cuisine`
- `price`
- `rating`
- `review`
- `health_grade`

---

## Tasks and Solutions

### Query 2: Distinct Neighborhoods
```sql
SELECT DISTINCT neighborhood 
FROM nomnom;
```

---

### Query 3: Distinct Cuisine Types
```sql
SELECT DISTINCT cuisine 
FROM nomnom;
```

---

### Query 4: Chinese Takeout Options
```sql
SELECT name 
FROM nomnom 
WHERE cuisine = 'Chinese';
```

---

### Query 5: Restaurants with Reviews 4 and Above
```sql
SELECT name 
FROM nomnom 
WHERE review >= 4;
```

---

### Query 6: Italian Restaurants for a Fancy Dinner
```sql
SELECT name 
FROM nomnom 
WHERE cuisine = 'Italian' AND price = '$$$';
```

---

### Query 7: Find Restaurants Containing 'Meatball' in Their Name
```sql
SELECT name 
FROM nomnom 
WHERE name LIKE '%meatball%';
```

---

### Query 8: Delivery Options in Specific Neighborhoods
```sql
SELECT name 
FROM nomnom 
WHERE neighborhood = 'Midtown' 
   OR neighborhood = 'Downtown' 
   OR neighborhood = 'Chinatown';
```

---

### Query 9: Health Grade Pending Restaurants
```sql
SELECT name 
FROM nomnom 
WHERE health_grade IS NULL;
```

---

### Query 10: Top 10 Restaurants by Review Rating
```sql
SELECT name, review 
FROM nomnom 
ORDER BY review DESC 
LIMIT 10;
```

---

### Query 11: Custom Rating System with CASE
```sql
SELECT name, 
       review, 
       CASE
           WHEN review > 4.5 THEN 'Extraordinary'
           WHEN review > 4 THEN 'Excellent'
           WHEN review > 3 THEN 'Good'
           WHEN review > 2 THEN 'Fair'
           ELSE 'Poor'
       END AS rating_category
FROM nomnom;
```

---

## Conclusion

This project covers fundamental SQL querying techniques such as filtering, sorting, and using conditional logic. By practicing these queries, we can effectively analyze restaurant data and make informed dining decisions.
```