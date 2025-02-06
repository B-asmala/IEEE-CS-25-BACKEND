-- first problem : Query all columns (attributes) for every row in the CITY table.
SELECT * FROM city;

-- second problem : Query all columns for a city in CITY with the ID 1661.
SELECT * FROM city WHERE id = 1661;

-- third problem : Query a list of CITY and STATE from the STATION table.
SELECT city, state FROM station;
