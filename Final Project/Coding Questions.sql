--1 Find the total production of Milk for 2023
SELECT SUM(Value) FROM milk_production WHERE Year = 2023



--2 Show the data from the production of coffe for the year 2015
SELECT * FROM coffe_production WHERE Year = 2015


--3 Find the production of honey for the year 2022
SELECT AVG(Value) FROM honey_production WHERE Year = 2022


--4 Obtain the names of the states and their corresponding ANSI code
SELECT * FROM state_lookup


--5 Find the maximum value of production of yogurt for 2022
SELECT MAX(Value) FROM yogurt_production WHERE Year = 2022


--6 Find the states that produced milk and honey in 2022
SELECT DISTINCT h.State_ANSI FROM honey_production h
JOIN milk_production m ON h.State_ANSI = m.State_ANSI
WHERE h.Year = 2022 AND m.Year = 2022


--7 Find the total production of yogurt from the states that also produced cheese in 2022
SELECT SUM(y.Value) 
FROM yougurt_production y
WHERE y.Year = 2022 AND y.State_ANSI IN (
  SELECT DISTINCT c.State_ANSI FROM cheese_production c WHERE c.Year = 2022)
