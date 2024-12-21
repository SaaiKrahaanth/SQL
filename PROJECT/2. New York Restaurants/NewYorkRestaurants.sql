CREATE TABLE NomNom (
    name VARCHAR(255),
    neighborhood VARCHAR(100),
    cuisine VARCHAR(100),
    review DECIMAL(2, 1),
    price VARCHAR(10),
    health CHAR(1)
);

INSERT INTO NomNom (name, neighborhood, cuisine, review, price, health) VALUES
('Peter Luger Steak House', 'Brooklyn', 'Steak', 4.4, '$$$$', 'A'),
('Jongro BBQ', 'Midtown', 'Korean', 4.5, '$$', 'A'),
('Pocha 32', 'Midtown', 'Korean', 4, '$$', 'A'),
('Nom Wah Tea Parlor', 'Chinatown', 'Chinese', 4.2, '$', 'A'),
('Roberta', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
('Speedy Romeo', 'Brooklyn', 'Pizza', 4.4, '$$', 'A'),
('Bunna Cafe', 'Brooklyn', 'Ethiopian', 4.6, '$$', 'A'),
('Massawa', 'Uptown', 'Ethiopian', 4, '$$', NULL),
('Buddha Bodai', 'Chinatown', 'Vegetarian', 4.2, '$$', 'A'),
('Nan Xiang Xiao Long Bao', 'Queens', 'Chinese', 4.2, '$', 'A'),
('Mission Chinese Food', 'Downtown', 'Chinese', 3.9, '$$', 'A'),
('Baohaus', 'Downtown', 'Chinese', 4.2, '$', 'A'),
('al di la Trattoria', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
('Locanda Vini & Olii', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
('Rao', 'Uptown', 'Italian', 4.2, '$$$', 'A'),
('Minca', 'Downtown', 'Japanese', 4.4, '$$', 'A'),
('Kenka', 'Downtown', 'Japanese', 4.3, '$', 'B'),
('Yakitori Taisho', 'Downtown', 'Japanese', 4.1, '$', 'B'),
('Xian Famous Foods', 'Midtown', 'Chinese', 4.4, '$', 'A'),
('Shake Shack', 'Midtown', 'American', 4.4, '$', 'A'),
('The Halal Guys', 'Midtown', 'Mediterranean', 4.4, '$', 'A'),
('Foodcademy', 'Midtown', 'American', 4.4, '$$', 'A'),
('Sonnyboy', 'Brooklyn', 'Chinese', 4.2, '$$', 'A'),
('The Cole Romano Experience', 'Brooklyn', 'Italian', 2.1, '$$$$$', 'C'),
('Timbo Slice', 'Brooklyn', 'Pizza', 2.8, '$', 'B'),
('Scorpio Sisters', 'Downtown', 'American', 4.2, '$$', 'A'),
('N.E.D', 'Uptown', 'American', 4.2, '$$$', 'A'),
('Great NY Noodletown', 'Chinatown', 'Chinese', 4.1, '$$', 'B'),
('Golden Unicorn', 'Chinatown', 'Chinese', 3.8, '$$', 'A'),
('Wo Hop', 'Chinatown', 'Chinese', 4.2, '$$', NULL),
('Di Fara Pizza', 'Brooklyn', 'Pizza', 4.2, '$$', 'A'),
('Kang Ho Dong Baekjeong', 'Midtown', 'Korean', 4.3, '$$$', 'C'),
('Roti Roll Bombay Frankie', 'Uptown', 'Indian', 4.2, '$', 'A'),
('Jacob Pickles', 'Uptown', 'American', NULL, '$$', NULL),
('Dan and John Wings', 'Downtown', 'American', 4.5, '$', 'A'),
('Ping Seafood', 'Chinatown', 'Chinese', 4.2, '$$', 'A'),
('XO Kitchen', 'Chinatown', 'Chinese', 4, '$', 'B'),
('Carbone', 'Downtown', 'Italian', 4.3, '$$$', 'A'),
('I Sodi', 'Downtown', 'Italian', 4.5, '$$$', 'A'),
('Lilia', 'Brooklyn', 'Italian', 4.4, '$$$', 'A'),
('Enid', 'Brooklyn', 'Soul Food', 4, '$$', 'A'),
('Jajaja', 'Downtown', 'Vegetarian', 4.5, '$$', 'A'),
('Smalls Jazz Club', 'Downtown', 'American', NULL, '$$', 'A'),
('Russ & Daughters', 'Downtown', 'American', 4.6, '$$', 'A'),
('The Meatball Shop', 'Downtown', 'American', 4.2, '$', 'A'),
('Dirt Candy', 'Downtown', 'Vegetarian', 4.4, '$$$', 'A'),
('Ippudo', 'Downtown', 'Japanese', 4.4, '$$', 'A'),
('St. Anselm', 'Brooklyn', 'Steak', 4.5, '$$', 'A'),
('Marea', 'Midtown', 'Italian', 4.5, '$$$$', 'A'),
('Lighthouse', 'Brooklyn', 'American', 4.6, '$$', NULL),
('Los Hermanos', 'Brooklyn', 'Mexican', 4.4, '$', NULL),
('The Standard Biergarten', 'Downtown', 'American', 4, '$$', 'A'),
('Ootoya', 'Downtown', 'Japanese', 4.5, '$$', 'A');


SELECT *
FROM nomnom;

SELECT DISTINCT neighborhood 
FROM nomnom;

SELECT DISTINCT cuisine  
FROM nomnom;

SELECT  name 
FROM nomnom
WHERE cuisine ='Chinese';

select name as topres
from nomnom
where review>=4;


select name
from nomnom
where name like '%meetball%';

SELECT *
FROM nomnom
WHERE neighborhood = 'Midtown'
   OR neighborhood = 'Downtown'
   OR neighborhood = 'Chinatown'; 

SELECT *
FROM nomnom
WHERE health IS NULL;

select *
from nomnom
order by review desc
 limit 10;

 

 select *,
 case
 WHEN  review>=4.5 then 'Extraordinary'
  WHEN  review>=4 then 'Excellent'
   WHEN  review>=3 then 'Good'
WHEN  review>=2
    then 'Fair'
    else 'Poor'
    end as rating
    from nomnom;


 
