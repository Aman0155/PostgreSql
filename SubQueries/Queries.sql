
            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------
 public | customers   | table | postgres
 public | departments | table | postgres
 public | employees   | table | postgres
 public | orders      | table | postgres
(4 rows)

 customer_id |  name  
-------------+--------
           1 | Ram
           2 | Sham
           3 | Ramesh
(3 rows)

 department_id |    name     
---------------+-------------
             1 | HR
             2 | Engineering
             3 | Sales
(3 rows)

 employee_id |  name  | department_id | salary 
-------------+--------+---------------+--------
           1 | Aalekh |             1 |  60000
           2 | Aryan  |             1 |  70000
           3 | Aman   |             2 |  80000
           4 | Nikhil |             2 |  90000
           5 | Atharv |             3 |  45000
(5 rows)

 order_id | customer_id | order_date 
----------+-------------+------------
        1 |           1 | 2024-01-01
        2 |           1 | 2024-01-15
        3 |           2 | 2024-01-10
        4 |           3 | 2024-01-12
        5 |           3 | 2024-01-13
        6 |           3 | 2024-01-14
(6 rows)

Q1
 employee_id |  name  | department_id | salary 
-------------+--------+---------------+--------
           2 | Aryan  |             1 |  70000
           3 | Aman   |             2 |  80000
           4 | Nikhil |             2 |  90000
(3 rows)

Q2
  name  
--------
 Aalekh
 Aryan
 Aman
(3 rows)

 employee_id |  name  | department_id | salary 
-------------+--------+---------------+--------
           1 | Aalekh |             1 |  60000
           2 | Aryan  |             1 |  70000
           3 | Aman   |             2 |  80000
           4 | Nikhil |             2 |  90000
(4 rows)

Q3
 customer_id |  name  
-------------+--------
           3 | Ramesh
(1 row)

Q4
 department_id |        avg         
---------------+--------------------
             2 | 85000.000000000000
             1 | 65000.000000000000
(2 rows)

Q5
    name     
-------------
 Engineering
(1 row)

Q6
`1. When the subqueries are nested the same data can be processes multiple times which leads to inefficiency.
   2. Subqueries in the select and where clause can cause slow execution because of row by row evaluation.
   3. If a subquery is executed for each row of outer query , it can result in poor performance if the outer tables have many rows.`

Q7
`1. If a subquery can be written as a join it improves performance.
2. Using common table expressions can avoid repetitive execution.
3. We can minimize the data processed by the subquery by aggregating or filtering we can use CTE's.
`

Q8
Yes , we can use a subquery with another subquery this is called nested subquery .
    name     
-------------
 Engineering
(1 row)

Q9
 customer_id | name 
-------------+------
(0 rows)

Q10 
`1. Used in business applications to extract more specific data or perform calculations based on complex conditions.
2. We can identify the highest paid employees in each department using a subquery.
3. We can also find inactive customers who haven't placed an order in last 6 months using subquery.`

