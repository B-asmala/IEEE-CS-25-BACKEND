-- problem 1
SELECT 
CASE WHEN a = b AND b = c THEN 'Equilateral'
WHEN  (a + b <= c AND a < c AND b < c) OR (a + c <= b AND a < b AND c < b) OR (b + c <= a AND c < a AND b < a) THEN 'Not A Triangle'
WHEN a = b OR a = c OR b = c THEN 'Isosceles'
ELSE 'Scalene'
END
AS tri_type
FROM TRIANGLES;

-- problem 2
SELECT CONCAT(name, '(', SUBSTR(occupation, 1, 1), ')') AS res 
FROM occupations
ORDER BY name;

SELECT CONCAT('There are a total of ', COUNT(name), ' ', LOWER(occupation), 's.') AS res
FROM occupations
GROUP BY occupation
ORDER BY res, occupation;


-- problem 3
SELECT DISTINCT 
company.company_code, company.founder, COUNT(DISTINCT employee.lead_manager_code),
COUNT(DISTINCT employee.senior_manager_code),
COUNT(DISTINCT employee.manager_code),
COUNT(DISTINCT employee.employee_code)
FROM employee 
LEFT JOIN company ON employee.company_code = company.company_code
GROUP BY company.company_code, company.founder
ORDER BY company.company_code;

-- problem 4



-- problem 5
SELECT FLOOR(AVG(population)) 
FROM city;

-- problem 6


-- problem 7
SELECT 
CASE 
WHEN marks < 70 THEN NULL
ELSE name
END, 
CASE
WHEN marks = 100 THEN 10
ELSE FLOOR(marks / 10) + 1
END AS grade,
marks
FROM students
ORDER BY grade DESC, name, marks ASC;

-- problem 8

-- problem 9 
SELECT ROUND(LONG_W, 4) 
FROM station
WHERE LAT_N < 137.2345
ORDER BY LAT_N DESC LIMIT 1;

-- problem 10
SELECT students.name 
FROM friends 
INNER JOIN students on students.id = friends.id
INNER JOIN packages AS T1 ON friends.id = T1.id
INNER JOIN packages AS T2 ON friends.friend_id = T2.id
WHERE t2.salary > t1.salary
ORDER BY t2.salary;

-- problem 11


-- I promise I will solve the rest later