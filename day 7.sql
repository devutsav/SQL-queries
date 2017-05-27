drop table teacher;
create table teacher(id varchar(5) primary key, dept varchar(10),name varchar(20),phone int(20),mobile varchar(50));
create table Dept(id int(5) primary key, name varchar(20));

insert into teacher values('101','1','Shrivell','2753','07986 555 1234');
insert into teacher values('102','1','Throd','2754','07122 555 1920');
insert into teacher values('103','1','Splint','2293',null);
insert into teacher values('104',null,'Spiregrain',null,null);
insert into teacher values('105','2','Cutflower','3212','07996 555 6574');
insert into teacher values('106',null,'Deadyawn','3345',null);

insert into Dept values('1','Computing');
insert into Dept values('2','Design');
insert into Dept values('3','Engineering');


select * from teacher;
select * from Dept;
select name from teacher where teacher.dept is NULL;
select * from teacher LEFT join Dept on teacher.dept=Dept.id;
select * from teacher right join Dept on teacher.dept=Dept.id;


select teacher.name,Dept.name from teacher join Dept on teacher.dept=Dept.id where teacher.dept is not NULL;

select teacher.name,teacher.id,teacher.mobile,Dept.name from teacher join Dept on teacher.dept=Dept.id ;

/* coalesce */
select teacher.name, COALESCE(mobile,'07986 444 2266') as mobile from teacher;

select teacher.name, COALESCE(dept,'none') as dept from teacher left join Dept on teacher.dept=Dept.id;

select count(teacher.id) as no_of_teachers, count(teacher.mobile) as no_of_mobiles from teacher;

select count(teacher.id) as noOFstaffs, Dept.name from teacher right join Dept on teacher.dept=Dept.id group by(Dept.name); ; 

select teacher.name, CASE WHEN teacher.dept=1 OR teacher.dept=2 then 'Sci' else 'Art' end as Department_name from teacher;

select teacher.name, CASE WHEN teacher.dept=1 OR teacher.dept=2 then 'Sci' when teacher.dept=3 then 'Art' else 'none' end as Department_name from teacher;
