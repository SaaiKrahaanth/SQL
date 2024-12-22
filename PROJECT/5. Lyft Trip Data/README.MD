
# Lyft Trip Data SQL Practice  

## Problem Statement  
As a Data Analyst at Lyft, you need to analyze trip data and gain insights using SQL queries. You are provided with three tables:  

- **trips**: Contains information about trips.  
- **riders**: Contains user data.  
- **cars**: Contains autonomous car data.  

The tasks include exploring the tables, using joins, and applying aggregate functions to answer business questions.

---

## Tasks and Solutions  

### 1. Examine the Three Tables  
**Query:**  
```sql
SELECT * FROM trips;
SELECT * FROM riders;
SELECT * FROM cars;
```

**Answer:**  
Inspecting the columns provides an understanding of the structure of the data:  
- **Trips**: Columns include trip_id, rider_id, car_id, cost, and duration.  
- **Riders**: Columns include rider_id, name, and email.  
- **Cars**: Columns include car_id, model, and trips_completed.  

---

### 2. Identify Primary Keys  
- **Trips**: `trip_id`  
- **Riders**: `rider_id`  
- **Cars**: `car_id`  

---

### 3. Perform a Cross Join  
**Query:**  
```sql
SELECT * 
FROM riders 
CROSS JOIN cars;
```

**Answer:**  
The result combines all rows from riders and cars, creating a Cartesian product. While it’s useful in some contexts, it’s not meaningful here without a specific use case.

---

### 4. Create a Trip Log  
**Query:**  
```sql
SELECT trips.trip_id, trips.cost, trips.duration, riders.name, riders.email 
FROM trips
LEFT JOIN riders 
ON trips.rider_id = riders.rider_id;
```

**Answer:**  
This query creates a Trip Log by combining trip details with rider information using a `LEFT JOIN`.

---

### 5. Link Trips and Cars  
**Query:**  
```sql
SELECT trips.trip_id, trips.cost, trips.duration, cars.model, cars.trips_completed 
FROM trips
INNER JOIN cars 
ON trips.car_id = cars.car_id;
```

**Answer:**  
Links trips with car details using an `INNER JOIN`, providing information about the cars used during each trip.

---

### 6. Combine Riders and New Data  
**Query:**  
```sql
SELECT * 
FROM riders 
UNION 
SELECT * 
FROM riders2;
```

**Answer:**  
Stacks the `riders` table on top of the `riders2` table to include new users.

---

### 7. Calculate Average Cost of a Trip  
**Query:**  
```sql
SELECT AVG(cost) AS average_cost 
FROM trips;
```

**Answer:**  
Calculates the average trip cost.

---

### 8. Find Irregular Riders  
**Query:**  
```sql
SELECT name, email 
FROM riders 
WHERE rider_id IN (
    SELECT rider_id 
    FROM trips 
    GROUP BY rider_id 
    HAVING COUNT(*) < 500
);
```

**Answer:**  
Finds riders who have taken less than 500 trips.

---

### 9. Count Active Cars  
**Query:**  
```sql
SELECT COUNT(*) AS active_cars 
FROM cars 
WHERE trips_completed > 0;
```

**Answer:**  
Counts the number of active cars (cars with trips completed).

---

### 10. Find Cars with Highest Trips Completed  
**Query:**  
```sql
SELECT car_id, model, trips_completed 
FROM cars 
ORDER BY trips_completed DESC 
LIMIT 2;
```

**Answer:**  
Finds the two cars with the highest number of trips completed.

---
```