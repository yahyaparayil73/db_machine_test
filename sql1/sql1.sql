1-
 
create table tbl_stock (
      			  pk_int_stock serial primary key,
				  vchr_name varchar(50),
				  int_quantity int,
				  int_price int
				);
\d tbl_stock;

2-

ALTER  TABLE tbl_stock
ALTER column int_price TYPE FLOAT;
\d tbl_stock;

3-

 create table tbl_supplier (pk_supplier_id serial primary key,vchr_supplier varchar(50));
\d tbl_supplier;

4-

alter table tbl_stock
add column fk_int_supplier int;
\d tbl_stock;

5-

ALTER TABLE tbl_stock
ADD FOREIGN KEY (fk_int_supplier) REFERENCES tbl_supplier(pk_supplier_id);
\d tbl_stock;

6-

create table tbl_dept (pk_int_dept_id serial primary key,vchr_dept_name varchar(50));
\d tbl_dept;

7-

create table tbl_classes (pk_int_class_id serial primary key,vchr_class_name varchar(50),fk_int_dept_id INT,FOREIGN KEY(fk_int_dept_id) 
references tbl_dept(pk_int_dept_id));
\d tbl_classes;

8-

create table tbl_enrollment(pk_int_enrollment_id serial primary key,fk_int_class_id int,int_count int,foreign key(fk_int_class_id) 
references tbl_classes(pk_int_class_id));
\d tbl_enrollment;

9-

ALTER TABLE tbl_classes ADD CONSTRAINT constraintname UNIQUE (vchr_class_name);

10-

alter table tbl_dept
add column vchr_dept_description varchar(50);
\d tbl_dept;

11-

insert into tbl_supplier (vchr_supplier) values ('logitech'),('samsung'),('iball'),('lg'),('creative');
select * from tbl_supplier;