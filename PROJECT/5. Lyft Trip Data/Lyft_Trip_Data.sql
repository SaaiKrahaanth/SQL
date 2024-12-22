CREATE TABLE trips (
    id INT PRIMARY KEY,
    date DATE,
    pickup TIME,
    dropoff TIME,
    rider_id INT,
    car_id INT,
    type VARCHAR(10),
    cost DECIMAL(5, 2)
);

INSERT INTO trips (id, date, pickup, dropoff, rider_id, car_id, type, cost) VALUES
(1001, '2017-12-05', '06:45', '07:10', 102, 1, 'X', 28.66),
(1002, '2017-12-05', '08:00', '08:15', 101, 3, 'POOL', 9.11),
(1003, '2017-12-05', '09:30', '09:50', 104, 4, 'X', 24.98),
(1004, '2017-12-05', '13:40', '14:05', 105, 1, 'X', 31.27),
(1005, '2017-12-05', '15:15', '16:00', 103, 2, 'POOL', 18.95),
(1006, '2017-12-05', '18:20', '18:55', 101, 3, 'XL', 78.52);

CREATE TABLE riders (
    id INT PRIMARY KEY,
    first VARCHAR(50),
    last VARCHAR(50),
    username VARCHAR(50),
    rating DECIMAL(3, 2),
    total_trips INT,
    referred INT
);

INSERT INTO riders (id, first, last, username, rating, total_trips, referred) VALUES
(101, 'Sonny', 'Li', '@sonnynomnom', 4.66, 352, NULL),
(102, 'Laura', 'Breiman', '@lauracle', 4.99, 687, 101),
(103, 'Kassa', 'Korley', '@kassablanca', 4.63, 42, NULL),
(104, 'Yakov', 'Kagan', '@yakovkagan', 4.52, 1910, 103);

CREATE TABLE cars (
    id INT PRIMARY KEY,
    model VARCHAR(50),
    OS VARCHAR(50),
    status VARCHAR(20),
    trips_completed INT
);

INSERT INTO cars (id, model, OS, status, trips_completed) VALUES
(1, 'Ada', 'Ryzac', 'active', 82),
(2, 'Ada', 'Ryzac', 'active', 30),
(3, 'Turing XL', 'Ryzac', 'active', 164),
(4, 'Akira', 'Finux', 'maintenance', 22);


SELECT * FROM trips;

SELECT * FROM riders;

SELECT * FROM cars;

select *
from riders
cross join cars;

SELECT riders.first,
   riders.last,
   cars.model
FROM riders, cars;

select * 
from trips
left join riders
on trips.rider_id=riders.id;

select * 
from trips
join cars
on trips.car_id=cars.id;

SELECT *
FROM riders
UNION
SELECT *
FROM riders2;

select username
from riders
where total_trips<500;

select count(*)
from cars
where status='active';

select *
from cars
order by trips_completed desc
limit 2;

