name  | gender |    dob
--------+--------+------------
 Aryan  | M      | 2003-08-28
 Aalekh | F      | 2003-08-23
 Aman   | O      | 2003-12-28
(6 rows)

Q1 select (CURRENT_DATE-CAST(dob as DATE))/365 as AGE from persons;

 age
-----
  21
  21
  21-
(6 rows)

 bool_value
------------
 Y
 Y
 N
 Y
 N
(9 rows)

Q2 
select CAST(bool_value as boolean) as value, 
case 
when CAST(bool_value as boolean) = 't' 
then 'true' else 'false' 
end 
from ooljlool;

 value | case
-------+-------
 t     | true
 t     | true
 f     | false
 t     | true
 f     | false
(9 rows)