sql 3:-

1-

select sum(int_quantity*int_price) as total_cost from tbl_stock;


2-

select sum(int_quantity) as total_products from tbl_stock;

3-

select upper(vchr_name) as product_name,ceil(int_price) as product_price  from tbl_stock;


4-

select count(distinct vchr_name) as items from tbl_stock;


5-

select vchr_name,int_price from tbl_stock where int_price =(select max(int_price) from tbl_stock);

 vchr_name | int_price
-----------+-----------
 Memory    |    3501.5

6-

select sum(int_count) as total_enrollment from tbl_enrollment;

7-

INSERT INTO tbl_classes(vchr_class_name,fk_int_dept_id) VALUES('CS100',1),('CS101',1),('CS102',1),('CS103',1),
('CS200',2),('CS300',3),('CS400',4);
tbl_stock=# select count(vchr_class_name) as number_of_classes from tbl_classes;
 number_of_classes
-------------------
                 7

8-

 delete from tbl_stock where fk_int_supplier = 5;

 9-

 select concat(vchr_name,int_price) as product_price from tbl_stock;

 10-

 CREATE TABLE Tbl_Student(Enroll_No INT PRIMARY KEY,Roll_No INT,Name VARCHAR(25),City VARCHAR(25),Mobile 
 BIGINT,Dob DATE);
INSERT INTO Tbl_Student(Enroll_No,Roll_No,Name,City,Mobile,Dob)VALUES(11,2,'Akhil','Delhi',98756579,
'12-01-1986'),(6,4,'Maya','Bangalore',98734534,'12-01-1987'),(1,8,'Anoop','Bangalore',93456535,'12-01-1990'),
(20,1,'Paul','Cochin',96754555,'13-03-1991'),(3,5,'Sandeep','Delhi',84865644,'14-06-1993');
 CREATE TABLE tbl_grade(roll_no INT,course VARCHAR(20),grade VARCHAR(10),PRIMARY KEY(roll_no,course));
 INSERT INTO tbl_grade(roll_no,Course,Grade) VALUES(2,'C','A'),(2,'java','B'),(1,'C','B'),(1,'java','A'),
 (4,'php','A'),(4,'java','A'),(4,'C','B'),(8,'java','B'),(5,'php','A'),(5,'java','D');
 SELECT name,course,grade FROM Tbl_Student INNER JOIN tbl_grade ON tbl_Student.roll_no = tbl_grade.roll_no 
 where grade = 'A';

 11-

 SELECT count (name),grade FROM tbl_Student INNER JOIN tbl_grade ON tbl_Student.roll_no = tbl_grade.roll_no 
 group by grade having grade = 'B';

 12-

 SELECT max(tbl_Student.roll_no) as roll_no,name,count(course) as number_of_course 
 FROM (Tbl_Student  INNER JOIN tbl_grade ON tbl_Student.roll_no = tbl_grade.roll_no) group by name;

 13-

 SELECT name,city,course FROM tbl_Student INNER JOIN tbl_grade ON tbl_Student.roll_no = tbl_grade.roll_no 
where city = 'Bangalore' and course = 'java';

14-

SELECT name,course FROM tbl_Student INNER JOIN tbl_grade  ON tbl_Student.roll_no = tbl_grade.roll_no 
where name like 'A%';

15-

SELECT name, date_part('year',age(dob)) as age FROM tbl_Student;

16-

 select name,to_char(dob, 'DD Mon YYYY') from tbl_Student;

