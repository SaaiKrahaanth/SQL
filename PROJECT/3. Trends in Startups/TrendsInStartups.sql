/*Database Schema
startups
name	type
name	TEXT
location	TEXT
category	TEXT
employees	INTEGER
raised	INTEGER
valuation	INTEGER
founded	INTEGER
stage	TEXT
ceo	TEXT
info	TEXT
Rows: 70
*/
DROP TABLE STARTUPS;
CREATE TABLE startups (
    name TEXT,
    location TEXT,
    category TEXT,
    employees INTEGER,
    raised BIGINT,
    valuation BIGINT,
    founded INTEGER,
    stage TEXT,
    ceo TEXT,
    info TEXT
);

INSERT INTO startups (name, location, category, employees, raised, valuation, founded, stage, ceo, info) VALUES
('Pied Piper', 'Silicon Valley', 'Cloud Computing', 6, 5000000, 50000000, 2014, 'A', 'Richard Hendricks', 'A Middle-Out Compression Solution'),
('Hooli', 'Silicon Valley', 'Enterprise', 9000, 580000000, 49500000000, 1997, NULL, 'Gavin Bensen', 'Hooli Is About People'),
('Raviga Capital', 'Silicon Valley', 'Venture Capital', 12, 300000000, 3000000000, 2012, NULL, 'Peter Gregory', 'Share Only In Success'),
('Aviato', 'Silicon Valley', 'Travel', 3, 250000, 2500000, 2006, 'Acquired', 'Erlich Bachman', 'Software Aggregation Program'),
('SEE FOOD', 'Silicon Valley', 'Mobile', 2, NULL, 15000000, 2016, 'Acquired', 'Jian-Yang', 'The Shazam of Food'),
('Forbid', 'New York', 'Mobile', 25, 1400000, 5000000, 2013, 'Acquired', 'Charlie Dattolo', 'Charge Users $10 for Calling Their Ex'),
('Soulstice', 'New York', 'Fitness', 300, 30000000, 120000000, 2014, 'B', NULL, 'What are your goals today?'),
('E-Corp', 'New York', 'Enterprise', 10000, NULL, 66000000000, 2006, NULL, 'Phillip Price', 'Together We Can Change the Wolrd'),
('Allsafe Cybersecurity', 'New York', 'Security', 250, 123000000, 1000000000, 2014, NULL, 'Gideon Goddard', NULL),
('fsociety', 'Brooklyn', 'Games', 5, NULL, NULL, 2015, 'Stealth', 'Elliot Alderson', 'Fun Society Arcade'),
('Summit Ice', 'Los Angeles', 'Fashion', 2, 50000, 800000, 2015, 'Seed', 'Nathan Fielder', 'Raising Awareness of the Holocaust');
-- Add the rest of your values here





SELECT *
FROM startups;

select count(name)
from startups;

select sum(valuation)
from startups;

SELECT MAX(raised)
FROM startups;

SELECT MAX(raised)
FROM startups
where stage='Seed';

select min(founded)
from startups;

select avg(valuation)
from startups;

select avg(valuation)
from startups
group by category;

select category, round(avg(valuation),2)
from startups
group by category;

select category, round(avg(valuation),2)
from startups
group by category
order by valuation desc;

select category, count(*)
from startups
group by category;

select category, count(*)
from startups
group by category
having count(*)>3;

SELECT location, AVG(employees)
FROM startups
GROUP BY location;

SELECT location, AVG(employees)
FROM startups
GROUP BY location
having avg(employees)>500;

