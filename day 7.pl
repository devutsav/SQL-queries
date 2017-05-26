create table cast(id int, name varchar(20));
insert into cast values(1,'Utsav');

declare
c_id cast.id %type :=1;
c_name cast.name %type;

begin
select id,name into c_id,c_name from cast where id=c_id;
dbms_output.put_line('Customer name of '||c_id||'is'||c_name);
end;

declare
 x int;
 y float;
 z float;
begin
 x:=10;
 y:=10.5;
 z:=x+y;
 dbms_output.put_line('The value of z='||z);
end;

create table client_master1(client_no varchar(6) primary key, name varchar(20), city varchar(15), pincode number(8), state varchar(15));
select * from client_master1;

insert into client_master1 values('C00001','Ahana Banerjee','Kolkata','700006','West Bengal');
insert into client_master1 values('C00002','Mamta Paul','Chennai','780001','Tamil Nadu');
insert into client_master1 values('C00003','Chhya Banker','Mumbai','400057','Maharashtra');
insert into client_master1 values('C00004','Ashwini Joshi','Bangalore','560001','Karnataka');
insert into client_master1 values('C00005','Deepak Sharma','Mangalore','560050','Karnataka');

begin
for record in (select name, city, state  from client_master1 where state not like '%Maharashtra')
loop
dbms_output.put_line('ClientS who are not from Maharastra: Name: '||record.name||' City: '||record.city||' State: '||record.state);
end loop;
end;
