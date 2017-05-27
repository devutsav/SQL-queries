Day 6 (dbms)

create table client_master1(client_no varchar(6) primary key, name varchar(20), city varchar(15), pincode number(8), state varchar(15));

drop table sales_order1; 

create table product_master1(product_no varchar(6) primary key, description varchar(20) not null, profit_percent number(4,2) not null, unit_measure varchar(10) not null, sell_price number(8,2), cost_price number(8,2), CHECK (cost_price>=0), CHECK (sell_price>0));

create table sales_order1(order_no varchar(6) primary key, client_no1 varchar(6), FOREIGN KEY (client_no1) REFERENCES client_master1(client_no) on delete cascade, order_date date not null, dely_date date, order_status varchar(10), CHECK (dely_date>=order_date), constraint ck_order_status check(order_status in('In Process','Fulfilled','BackOrder','Cancelled')));

select * from client_master1;

insert into client_master1 values('C00001','Ahana Banerjee','Kolkata','700006','West Bengal');
insert into client_master1 values('C00002','Mamta Paul','Chennai','780001','Tamil Nadu');
insert into client_master1 values('C00003','Chhya Banker','Mumbai','400057','Maharashtra');
insert into client_master1 values('C00004','Ashwini Joshi','Bangalore','560001','Karnataka');
insert into client_master1 values('C00005','Deepak Sharma','Mangalore','560050','Karnataka');

insert into product_master1 values('P00001','T-Shirt','5','Piece','350','250');
insert into product_master1 values('P0345','Shirts','6','Piece','500','350');
insert into product_master1 values('P06734','Cotton Jeans','5','Piece','600','450');
insert into product_master1 values('P07868','Trousers','2','Piece','850','550');
insert into product_master1 values('P07885','Pull Overs','2.5','Piece','700','450');

select * from clnt_mast1;

insert into sales_order1 values('O19001','C00001','12-June-17','20-July-17','In Process');
insert into sales_order1 values('O19002','C00002','25-June-17','27-July-17','Cancelled');
insert into sales_order1 values('O46865','C00003','18-Feb-17','20-Feb-17','Fulfilled');
insert into sales_order1 values('O19003','C00001','03-Apr-17','07-Apr-17','Fulfilled');
insert into sales_order1 values('O46866','C00004','20-May-17','22-May-17','Cancelled');

select name,city,state from client_master1;
select * from client_master1 where city='Mumbai';
select description from product_master1;
UPDATE client_master1 SET city = 'Bangalore' WHERE client_no='C00005';
ALTER table client_master1 ADD Telephone number(10);
ALTER TABLE client_master1 DROP COLUMN Telephone;

Delete from client_master1 where state='Tamil Nadu';
ALTER TABLE client_master1 RENAME TO clnt_mast1; 
select name from clnt_mast1 where name like '%a%';
select name from clnt_mast1 where city='Bangalore' or city='Mangalore';
select name from clnt_mast1 where name like '_h%';
select * from sales_order1 where order_date like '__-JUN-__';
SELECT * FROM sales_order1 where client_no1='C00001' or client_no1='C00002';
SELECT * FROM product_master1 where sell_price>500 and sell_price<700;
select * from clnt_mast1 where state!='Maharashtra';
select * from product_master1 where sell_price>500;
select count (*) from product_master1 where sell_price>500;
select order_no, order_date from sales_order1;
update product_master1 set sell_price = sell_price*15;



