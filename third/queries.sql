-- unique guest names

SELECT DISTINCT name from guests

-- birthdays before 2000

SELECT birthday from guests where birthday < '2000-01-01'

-- rooms >= 100
SELECT * from rooms where cost >= 100

-- order by guest name

SELECT * from guests ORDER BY name asc

-- top 5 

SELECT name from taverns limit 5