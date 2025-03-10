# Task 1
## What is the Database and why does it exist?
Databases are organised collection of data, designed for optimized data management, efficient and scalable.
The primary purpose of a database is to store, retrieve, and update information.

## What is the SQL?
SQL stands for Structured Query Language. It is a standardized programming language used to manage and manipulate relational databases. It enables users to perform a variety of tasks such as querying data, creating and modifying database structures, and managing access permissions. SQL is widely used across various relational database management systems such as MySQL, PostgreSQL, Oracle, and SQL Server.

## What is the history of MySQL?
MySQL was created by a Swedish company MySQL AB in 1995. The developers of the platform were Michael Widenius (Monty), David Axmark and Allan Larsson. In 2000, MySQL went open source, so it could be accessed and used by all. In the year 2002, MySQL launched its headquarters in USA, in addition to Sweden headquarters. In 2005, MySQL launched MySQL Network. Oracle purchased Innobase, which is the backend of MySQL's InnoDB storage. In 2008, MySQL was acquired by Sun Microsystems.
In 2009, Sun Microsystems and Oracle entered intoa definitive agreement under which Oracle acquired Sun Microsystems.

## What are the most 5 famous DBs in the world now?and why?
In my opinion, they are :
- MySQL : lightweight, fast, and reliable, with a large community of developers supporting it.
- Oracle Database : well-known for its strong enterprise features, scalability, security, and high availability.
- SQL Server : offers strong integration with other Microsoft tools like Azure, Power BI, and Active Directory.
- PostgreSQL : an open-source, object-relational database system known for its robustness, advanced features, and support for a variety of data types.
- MongoDB : one of the leading NoSQL databases and has gained significant traction for its flexibility and scalability.

# Task 2
## What is RDBMS?
RDBMS stands for Relational Database Management System. It is a program used to manage relational databeses. A relational database is a collection of information that organizes data in predefined relationships where data is stored in one or more tables (or "relations") of columns and rows, making it easy to see and understand how different data structures relate to each other. 

## RDBMS VS DBMS
Database management system is a management system that is used to manage the entire flow of data. RDBMS is a type of DBMS it deals with relations as well as various key constraints. This aids in the reduction of data redundancy and the preservation of database integrity.
Here are key differences:
| RDBMS | DBMS |
|----------|----------|
|stores data in tabular form|stores data as a file|
|data is stored as tables with relations between them|No relationship between data|
|Normalization is present.|Normalization is not present.|
|deals with large amount of data.|deals with small amount of data.|
|Keys and indexes do not allow Data redundancy.|Data redundancy is common|
|fast data fetching|slow data fetching|

## Naming conventions.
- Tables :
  - Avoid abbreviations.
  - Avoid using DBMS-specific keywords.
  - Singular or plural names are allowed but keep it consistent.
  - Keep it consistent when it comes to the case (camelCase, lowercase, etc).
- Columns :
  - Each column name should be unique.
  - Avoid abbreviations.
  - Don't make it very generic.
- Primary Keys :
  - Use domain-specific names like StudentID or ID_Student.
  - Prefixes or suffixes can be added to make them stand out from general column naming (e.g. Students_PK, PK_Students).
- Foreign Keys :
  - it is good to name your foreign key with the same name consistently throughout the database to avoid any confusion. 
  - Prefixes and suffixes can be used similar to primary keys.

# Task 3
## Primary keys vs unique keys
Primary Key:
- There will be no duplicate row in case of a Primary Key.
- Only a single primary key exists for a table.
- Primary Key contains NOT NULL constraints.
- The primary Key can be made from one or more table fields.

Unique Key:
- There can be more than one unique key for a table.
- Unique Keys have the liberty of having NULL values in the column.
- Unique Keys can be formed from one or more tables.
- Foreign Keys can refer to Unique Keys for referencing.

## Constraints in MySQL.
Constraints are used to limit the type of data that can go into a table. 
The following constraints are commonly used in SQL:
- NOT NULL - Ensures that a column cannot have a NULL value
- UNIQUE - Ensures that all values in a column are different
- PRIMARY KEY - A combination of a NOT NULL and UNIQUE. Uniquely identifies each row in a table
- FOREIGN KEY - Prevents actions that would destroy links between tables
- CHECK - Ensures that the values in a column satisfies a specific condition
- DEFAULT - Sets a default value for a column if no value is specified
- CREATE INDEX - Used to create and retrieve data from the database very quickly

## Indexing in MySQL.
Indexes are used to find rows with specific column values quickly, instead of searching linearly. If the table has an index for the columns in question, MySQL can quickly determine the position to seek to in the middle of the data file without having to look at all the data. Most MySQL indexes (PRIMARY KEY, UNIQUE, INDEX, and FULLTEXT) are stored in B-trees.

## Difference between MySQL and Postgresql
- MySQL: It is known for its speed and reliability, widely used in web applications and is a preferred choice for read-heavy operations. Also known for being user-friendly and relatively simple to set up.
- PostgreSQL: known for its advanced features, extensibility and compliance with SQL standards. It offers robust support for complex queries, transactions, and data integrity. PostgreSQL is a good choice for applications requiring complex queries and transactions.

# Task 4
## Relations (one to one, one to many, many to many).
Relationships in SQL tables define how tables are connected to one another, this provides efficient data retrieval.
### One to One
Each record in Table A is associated with one and only one record in Table B, and vice versa.
### One to Many
Each record in Table A can be associated with multiple records in Table B, but each record in Table B is associated with only one record in Table A.
### Many to Many
Each record in Table A can be associated with multiple records in Table B, and vice versa.

## Write-ahead logging.
Write-Ahead Logging (WAL) is a technique used in storage systems to ensure the durability and consistency of transactions.
The basic idea behind WAL is to record changes in a log before they are applied to the actual storage. This log, often referred to as the write-ahead log, contains a sequential record of all changes made to the database. Transactions are not considered complete until the corresponding changes are safely recorded in the write-ahead log.

## What are normalization and denormalization? Explain their differences.
The main difference between normalization and denormalization is that normalization is used to remove the redundancy in the table, while denormalization is used to add the redundancy which means combining multiple tables so that execute query quickly.
### Normalization
Advantages
- Data is reduced in the table.
- Optimized memory.
- Maintain data integrity.

Disadvantages
- The number of tables is increased.
- Consume more resources when using joins expensive operations.
### Denormalization
Advantages
- Execute the query quickly.
- Decreased the number of tables

Disadvantages
- Wastage of memory because store the duplicate data.
- Increase the number of tables.
- Does not maintain data integrity.

# Task 5
## Multi-version concurrency Control
(MVCC) is a database optimization method, that makes redundant copies of records to allow for safe concurrent reading and updating of data. In the database, every tuple has a version number. The tuple with the greatest version number can have a read operation done on it simultaneously. Only a copy of the record may be used for writing operations. While the copy is being updated concurrently, the user may still view the previous version. The version number is increased upon successful completion of the writing process. The upgraded version is now used for every new record operation and every time there is an update, this cycle is repeated.

## Triggers
A trigger is a stored procedure in a database that automatically invokes whenever a special event in the database occurs. By using SQL triggers, developers can automate tasks, ensure data consistency, and keep accurate records of database activities. For example, a trigger can be invoked when a row is inserted into a specified table or when specific table columns are updated.


## How can you take the backup of a database?
Automatic backups can be run regulary (e.g, once a day). 
There are several methods :
- Making a Hot Backup with MySQL Enterprise Backup
- Making Backups by Copying Table Files
- Making Backups with mysqldump
- Making Incremental Backups by Enabling the Binary Log
- Making Delimited-Text File Backups

# References
- [geeks for geeks](https://www.geeksforgeeks.org/)
- [Oracle](https://www.oracle.com/database/what-is-database/)
- [Data Science Central](https://www.datasciencecentral.com/history-of-mysql/)
- [Tutorials point](https://www.tutorialspoint.com/discuss-the-history-of-mysql)
- [Google Cloud](https://cloud.google.com/learn/what-is-a-relational-database?hl=en)
- [MySQL DEV](https://dev.mysql.com/doc/refman/8.4/en/)