-- problem 1
SELECT name FROM city 
WHERE CountryCode = "JPN";

-- problem 2 
SELECT ROUND(SUM(LAT_N), 2), ROUND(SUM(LONG_W), 2) FROM STATION;

-- problem 3
SELECT DISTINCT city FROM station
WHERE SUBSTRING(city, 1, 1) NOT IN('a', 'e', 'i', 'o', 'u');

-- problem 4
SELECT DISTINCT city FROM station
WHERE RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- problem 5
SELECT DISTINCT city FROM station
WHERE SUBSTRING(city, 1, 1) NOT IN('a', 'e', 'i', 'o', 'u') AND RIGHT(city, 1) NOT IN ('a', 'e', 'i', 'o', 'u');

-- problem 6
SELECT FLOOR(AVG(population)) FROM city;

-- problem 7 
SELECT sender_id, COUNT(sender_id) AS message_count FROM messages
WHERE sent_date BETWEEN '08/01/2022 00:00:00' AND '08/31/2022 23:59:59'
GROUP BY sender_id
ORDER BY message_count DESC
LIMIT 2;

-- problem 8
SELECT app_id, ROUND(100.0 * SUM(CASE WHEN event_type = 'click' THEN 1 ELSE 0 END) / 
SUM(CASE WHEN event_type = 'impression' THEN 1 ELSE 0 END), 2) AS ctr FROM events
WHERE timestamp BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY app_id;

-- another solution using join
SELECT T1.app_id, ROUND(100.0 * T1.clk_c/ T2.imp_c, 2) AS ctr FROM 
(SELECT app_id, COUNT(app_id) AS clk_c FROM events
WHERE event_type = 'click' AND timestamp BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY app_id) AS T1
FULL JOIN (SELECT app_id, COUNT(app_id) AS imp_c FROM events
WHERE event_type = 'impression' AND timestamp BETWEEN '2022-01-01' AND '2022-12-31'
GROUP BY app_id) AS T2
ON T1.app_id = T2.app_id;

