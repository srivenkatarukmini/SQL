use cbit;
create table student(
sid int,
sname varchar(20),
perc int,
gender char,
branch varchar(20));
show tables;
insert into student() values(1,"rukmini",98,"F","ECE");
insert into student() values(2,"johnson",90,"M","EEE");
insert into student() values(3,"abilash",92,"M","CE");
insert into student() values(4,"lohitha",86,"F","CSE");
insert into student() values(5,"sharvani",78,"F","ME");
insert into student() values(6,"santhosh",88,"M","ECE");
desc student;
select *from student;
alter table student modify gender varchar(10);

/*order by*/
/*select * 
from student 
order by gender asc;*/
select * 
from student 
order by gender desc;

/*group by*/
select gender,count(sid)
from student
group by gender;

select gender,min(perc)
from student
group by gender;

select branch,count(sid)
from student
group by branch;

select gender,max(perc)
from student
group by gender;

select gender,avg(perc)
from student
group by gender;

select gender,min(sid)
from student
group by gender;

select sid,min(perc)
from student
group by sid;

select min(perc) from student;
select avg(perc) from student;
/*select avg(sid) from student;*/

select branch,min(perc)
from student
group by branch;

/*having*/ 
 select branch,min(perc)
from student
group by branch
having min(perc)>80;

select branch,max(perc)
from student
group by branch
having max(perc)>90;

select branch,count(sid)
from student
group by branch
having count(sid)=2;

select gender,avg(perc)
from student
group by gender
having avg(perc)>80;

select gender,min(perc)
from student
group by gender
having min(perc)>80;

select sid,min(perc)
from student
group by sid
having min(perc)>90;

select sid,min(gender)
from student
group by sid
having min(gender)="F";

select sname,Length(sname)
from student
group by sname
having Length(sname)>7;

select sname,avg(perc)
from student
group by sname
having avg(perc)>80;

select * from student;

select sname,sum(perc)
from student
group by sname
having sum(perc)>90;

select sname,reverse(sname)
from student
group by sname;

select sname,concat(sname)
from student
group by sname;