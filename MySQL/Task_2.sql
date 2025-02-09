-- problem 1 : Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
SELECT * FROM city 
WHERE CountryCode = "USA" AND population > 100000;

-- problem 2 : Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
SELECT name FROM city 
WHERE CountryCode = "USA" AND population > 120000;

-- problem 3 : Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
SELECT * FROM city 
WHERE CountryCode = "JPN";

-- problem 4 : Write a query that prints a list of employee names (i.e.: the name attribute) from the Employee table in alphabetical order.
SELECT name FROM employee
ORDER BY name ASC;

-- problem 5 : Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than 2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
SELECT name from employee
WHERE employee.salary > 2000 AND employee.months < 10
ORDER BY employee.employee_id;

-- problem 6 : Query the Name of any student in STUDENTS who scored higher than 75 Marks. Order your output by the last three characters of each name. If two or more students both have names ending in the same last three characters (i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
SELECT name FROM students
WHERE students.marks > 75
ORDER BY RIGHT(students.name, 3), students.id;

-- problem 7 : Write a query to determine which parts have begun the assembly process but are not yet finished.
SELECT part, assembly_step FROM parts_assembly
WHERE finish_date IS NULL;