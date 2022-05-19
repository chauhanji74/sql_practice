create database Demo2;
use Demo2;

drop database Demo2;

create table student(id int identity(0,1), name varchar(20), address varchar(20), marks int);
select * from student;

alter table student add salary int;
alter table student drop column salary;
alter table student alter column address varchar(50);
alter table student rename column address to Saddress;     //not work in sql

truncate table student;

insert into student values('shadow',70,'bihar');
update student set marks=84 where id=2;
delete from student where id in (2,3);

select marks from student where id=1;

create table student2(id int, name varchar(20), marks int, address varchar(50)); 
insert into student2 values(3,'shadow',70,'bihar');
select * from student2;

select * from student union select * from student2;
select * from student union all select * from student2;
select * from student intersect select * from student2;  
select * from student except select * from student2;

select * from student where name='lalit' and id=1;
select * from student where name='lalit' or id=3;
select * from student where not name='shadow';
select * from student where name <> 'prince';

select * from student where id between 1 and 3;
select * from student where name like 'l_l%';
select * from student where marks is null;
select * from student where address in ('roorkee','bihar');

select distinct name from student;
select count(distinct name) from student;

select avg(marks) as average from student;
select count(*) num_of_col from student;
select max(marks) from student;
select min(marks) from student;
select sum(marks) from student;

select max(marks), id from student group by id;
select avg(marks), id from student group by id having count(id)>=2;
select * from student order by marks desc;

alter table student2 add ssid int;
update student set ssid=12 where id=3;

select s.name, s.marks, s.address, student2.name from student s  inner join student2 on s.ssid=student2.ssid;
select s.name, s.marks, s2.name, s2.marks from student s left join student2 s2 on s.ssid=s2.ssid;
select s.name, s.marks, s2.name, s2.marks from student s right join student2 s2 on s.ssid=s2.ssid;
select s.name, s.marks, s2.name, s2.marks from student s left join student2 s2 on s.ssid=s2.ssid
union
select s.name, s.marks, s2.name, s2.marks from student s right join student2 s2 on s.ssid=s2.ssid;
select * from student cross join student2;
