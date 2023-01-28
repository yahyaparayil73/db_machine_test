sql 2:-

1-

insert into tbl_stock (vchr_name,int_quantity,int_price,fk_int_supplier) values('Mouse',10,500,1);

insert into tbl_stock (vchr_name,int_quantity,int_price,fk_int_supplier) values('Keyboard',5,450,3);

insert into tbl_stock (vchr_name,int_quantity,int_price,fk_int_supplier) values('Modem',10,1200,2);

insert into tbl_stock (vchr_name,int_quantity,int_price,fk_int_supplier) values('Memory',100,1500,5);

insert into tbl_stock (vchr_name,int_quantity,int_price,fk_int_supplier) values('Headphone',50,750,4);

insert into tbl_stock (vchr_name,int_quantity,int_price,fk_int_supplier) values('Memory',2,3500,4);

select * from tbl_stock;

2-

update tbl_stock set int_price = int_price+1.50;

3-

select * from tbl_stock where int_price>1000;

4-

select * from tbl_stock order by vchr_name;

5-

select * from tbl_stock order by vchr_name limit 3;

6-

select * from tbl_stock order by vchr_name offset (select count(vchr_name) from tbl_stock)-3;

7-

select vchr_name,int_quantity,int_price,(int_quantity*int_price) as total_price from tbl_stock;

8-

delete from tbl_stock where fk_int_supplier=5;

9-

INSERT INTO tbl_dept(vchr_dept_name,vchr_dept_description) VALUES ('Computer Science','CS'),('Electronics','EC'),('Commerce','CC'),
('Arts','AR');