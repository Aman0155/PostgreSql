                                                            List of databases
   Name    |  Owner   | Encoding | Locale Provider |      Collate       |       Ctype        | Locale | ICU Rules |   Access privileges   
-----------+----------+----------+-----------------+--------------------+--------------------+--------+-----------+-----------------------
 company   | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =Tc/postgres         +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres+
           |          |          |                 |                    |                    |        |           | aalekh=c/postgres
 inventory | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 postgres  | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | 
 template0 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
 template1 | postgres | UTF8     | libc            | English_India.1252 | English_India.1252 |        |           | =c/postgres          +
           |          |          |                 |                    |                    |        |           | postgres=CTc/postgres
(5 rows)

            List of relations
 Schema |    Name     | Type  |  Owner   
--------+-------------+-------+----------
 public | departments | table | postgres
 public | employees   | table | postgres
(2 rows)

Q1. begin;
    insert into employees (employee_id , first_name , last_name , salary ) values (7 , 'Prabhat' , 'Kanwar' ,50000);
    insert into employees (employee_id , first_name , last_name , salary ) values (6 , 'Jogger' , 'Rathi' ,40000);
    update employees set salary = 51000 where employee_id = 6;
    commit;
    
BEGIN
INSERT 0 1
INSERT 0 1
UPDATE 2
COMMIT

Q2. begin;
    delete from products where product_id = 1;
    insert into products (product_id , product_name , price) values (6 , 'Shirt' , 300);
    rollback;

BEGIN
DELETE 1
INSERT 0 1
ROLLBACK

Q3. begin;
    update products set price = 1900 where product_id = 1;
    insert into products(product_id , product_name , price ) values (7 , 'Shocks' , 25000 );
    commit;

BEGIN
UPDATE 1
INSERT 0 1
COMMIT  