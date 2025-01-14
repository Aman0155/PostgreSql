Question:
You are tasked with designing a database for a library system. The database should track books, members, and borrowing activities.
* DDL (Data Definition Language):
   * Create the following tables:

Q->  * Books with columns: book_id, title, author, publication_year, genre.
create table books (book_id SERIAL primary key ,title varchar, author varchar , publication_year int ,genre varchar );
CREATE TABLE

Q-> * Members with columns: member_id, name, address, contact_number.                                     ^
libraryfunction=# create table members( member_id  SERIAL primary key, name varchar , address varchar , contact_number int);
CREATE TABLE 

Q-> * Borrowings with columns: borrowing_id, book_id, member_id, borrow_date, due_date, returned_date.                                                            ^
libraryfunction=# CREATE TABLE Borrowings (borrowing_id SERIAL primary key ,book_id INT REFERENCES books(book_id), member_id INT REFERENCES members(member_id),borrow_date DATE NOT NULL, due_date DATE NOT NULL, returned_date DATE);
CREATE TABLE

 Q ->DML (Data Manipulation Language):
   * Insert sample data into each table (at least 5 records per table).

libraryfunction=# INSERT INTO books (title, author, publication_year, genre) values ( 'CK' , 'Aman', 2011 , 'Thrill'),('DK' , 'Aarayan' , 2012 , 'horror'), ('teri khahani' , 'Aalekh', 2013, 'friction') , ('humsuffer' , 'Author4',2014,'genre4'),('Sk', 'Author5',2015,'genre5');
INSERT 0 5
libraryfunction=# \d books;
                                         Table "public.books"
      Column      |       Type        | Collation | Nullable |                Default
------------------+-------------------+-----------+----------+----------------------------------------
 book_id          | integer           |           | not null | nextval('books_book_id_seq'::regclass)
 title            | character varying |           |          |
 author           | character varying |           |          |
 publication_year | integer           |           |          |
 genre            | character varying |           |          |
Indexes:
    "books_pkey" PRIMARY KEY, btree (book_id)
Referenced by:
    TABLE "borrowings" CONSTRAINT "borrowings_book_id_fkey" FOREIGN KEY (book_id) REFERENCES books(book_id)


libraryfunction=# Select * from books;
 book_id |    title     | author  | publication_year |  genre
---------+--------------+---------+------------------+----------
       1 | CK           | Aman    |             2011 | Thrill
       2 | DK           | Aarayan |             2012 | horror
       3 | teri khahani | Aalekh  |             2013 | friction
       4 | humsuffer    | Author4 |             2014 | genre4
       5 | Sk           | Author5 |             2015 | genre5
(5 rows)

Q=> INSERT INTO MEMBERS

libraryfunction=# INSERT INTO MEMBERS( member_id, name, address, contact_number) values (1, 'Aman' , 'rajpura',12345),(2,'vishal','baddi',75536),(3,'raghav','nlg',93733),(4,'allu','banur',92723),(5,'judge','landran',83432);
INSERT 0 5
libraryfunction=# Select * from members ;
 member_id |  name  | address | contact_number
-----------+--------+---------+----------------
         1 | Aman   | rajpura |          12345
         2 | vishal | baddi   |          75536
         3 | raghav | nlg     |          93733
         4 | allu   | banur   |          92723
         5 | judge  | landran |          83432
(5 rows)

Q=> INSERT INTO BORROWINGS

libraryfunction=# INSERT INTO BORROWINGS (borrowing_id, book_id, member_id, borrow_date, due_date, returned_date) values (101,1,1,'2025-01-01','2025-01-15','2025-01-09'),(102,2,2,'2025-02-02','2025-02-15','2025-02-09'),(103,3,3,'2025-03-03','2025-03-15','2025-03-09'),(104,04,04,'2025-04-04','2025-04-15','2025-04-09'),(105,05,05,'2025-05-05','2025-05-15','2025-05-09');
INSERT 0 5
libraryfunction=# SELECT * from borrowings ;
 borrowing_id | book_id | member_id | borrow_date |  due_date  | returned_date
--------------+---------+-----------+-------------+------------+---------------
          101 |       1 |         1 | 2025-01-01  | 2025-01-15 | 2025-01-09
          102 |       2 |         2 | 2025-02-02  | 2025-02-15 | 2025-02-09
          103 |       3 |         3 | 2025-03-03  | 2025-03-15 | 2025-03-09
          104 |       4 |         4 | 2025-04-04  | 2025-04-15 | 2025-04-09
          105 |       5 |         5 | 2025-05-05  | 2025-05-15 | 2025-05-09
(5 rows)

Q=>  Retrieve all books by a specific author.

libraryfunction=# SELECT * FROM Books WHERE author = 'Aman';
 book_id | title | author | publication_year | genre
---------+-------+--------+------------------+--------
       1 | CK    | Aman   |             2011 | Thrill
(1 row)

Q=> Find members who have borrowed a particular book.

libraryfunction=# SELECT m.member_id, m.name, m.address, m.contact_number FROM Members m JOIN Borrowings b ON m.member_id = b.member_id WHERE b.book_id = 1;
 member_id | name | address | contact_number
-----------+------+---------+----------------
         1 | Aman | rajpura |          12345
(1 row)

Q=> Display books that are currently overdue

ANS:

libraryfunction=# SELECT title FROM books WHERE book_id IN(SELECT book_id FROM borrowings WHERE due_date < returned_date);
 title
-------
(0 rows)

Q=> Calculate the total number of books borrowed by each member.

 SELECT member_id ,(SELECT COUNT (*) FROM borrowings WHERE borrowings.member_id = members.member_id) As total_borrowed FROM Members;
 member_id | total_borrowed
-----------+----------------
         1 |              1
         2 |              1
         3 |              1
         4 |              1
         5 |              1
(5 rows)