Q1 CREATE DATABASE company;
->CREATE DATABASE
                                                            List of databases
   Name    |  Owner   | Encoding | Locale Provider |      Collate       |       Ctype        | Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+--------------------+--------------------+--------+-----------+-----------------------
 company   | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 inventory | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 postgres  | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 template0 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
(5 rows)

Q2  create table employee(employee_id int, first_name varchar, last_name varchar, salary decimal);
-> CREATE TABLE
                     Table "public.employee"
   Column    |       Type        | Collation | Nullable | Default 
-------------+-------------------+-----------+----------+---------
 employee_id | integer           |           |          | 
 first_name  | character varying |           |          | 
 last_name   | character varying |           |          | 
 salary      | numeric           |           |          | 

Q3 alter table employee add department varchar;
-> ALTER TABLE
                     Table "public.employee"
   Column    |       Type        | Collation | Nullable | Default 
-------------+-------------------+-----------+----------+---------
 employee_id | integer           |           |          | 
 first_name  | character varying |           |          | 
 last_name   | character varying |           |          | 
 salary      | numeric           |           |          | 
 department  | character varying |           |          | 

Q4 alter table employee
 alter column salary set not null;
-> ALTER TABLE
                     Table "public.employee"
   Column    |       Type        | Collation | Nullable | Default 
-------------+-------------------+-----------+----------+---------
 employee_id | integer           |           |          | 
 first_name  | character varying |           |          | 
 last_name   | character varying |           |          | 
 salary      | numeric           |           | not null | 
 department  | character varying |           |          | 

Q5 alter table employee RENAME TO staff;
-> ALTER TABLE
                       Table "public.staff"
   Column    |       Type        | Collation | Nullable | Default 
-------------+-------------------+-----------+----------+---------
 employee_id | integer           |           |          | 
 first_name  | character varying |           |          | 
 last_name   | character varying |           |          | 
 salary      | numeric           |           | not null | 
 department  | character varying |           |          | 

Q6 alter table staff drop column department;
-> ALTER TABLE
                       Table "public.staff"
   Column    |       Type        | Collation | Nullable | Default 
-------------+-------------------+-----------+----------+---------
 employee_id | integer           |           |          | 
 first_name  | character varying |           |          | 
 last_name   | character varying |           |          | 
 salary      | numeric           |           | not null | 

         List of relations
 Schema | Name  | Type  |  Owner   
--------+-------+-------+----------
 public | staff | table | postgres
(1 row)

                       Table "public.staff"
   Column    |       Type        | Collation | Nullable | Default 
-------------+-------------------+-----------+----------+---------
 employee_id | integer           |           |          | 
 first_name  | character varying |           |          | 
 last_name   | character varying |           |          | 
 salary      | numeric           |           | not null | 
Q7 create table department(department_id int, department_name varchar);
-> CREATE TABLE
           List of relations
 Schema |    Name    | Type  |  Owner   
--------+------------+-------+----------
 public | department | table | postgres
 public | staff      | table | postgres
(2 rows)
Q8  create databse inventory;
 -> CREATE DATABASE
                                                      List of databases
   Name    |  Owner   | Encoding | Locale Provider |      Collate       |       Ctype        | Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+--------------------+--------------------+--------+-----------+-----------------------
 company   | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 inventory | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 postgres  | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 template0 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
(5 rows)

Q9 create table products(product_id int , product_name varchar, price decimal);
-> CREATE TABLE
          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | products | table | postgres
(1 row)

Q10 drop database inventory;
-> DROP DATABASE
                                                            List of databases
   Name    |  Owner   | Encoding | Locale Provider |      Collate       |       Ctype        | Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+--------------------+--------------------+--------+-----------+-----------------------
 company   | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 postgres  | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 template0 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
(4 rows)

