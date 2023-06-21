use cbit;
create table student1(
sid int primary key,
sname varchar(20),
perc int,
gender varchar(20),
branch varchar(20));
show tables;
insert into student1() values(1,"rukmini",98,"F","ECE");
insert into student1() values(2,"johnson",90,"M","EEE");
insert into student1() values(3,"abilash",92,"M","CE");
insert into student1() values(4,"lohitha",86,"F","CSE");
insert into student1() values(5,"sharvani",78,"F","ME");
insert into student1() values(6,"santhosh",88,"M","ECE");
desc student1;

select * from student1;
alter  table student1 drop column branch;


create table branch(
d_id int,
d_name varchar(10),
s_id int,
foreign key(s_id) references  student1(sid));

insert into branch() values(101,"ECE",1);
insert into branch() values(102,"office",1);

/*BETWEEN*/
select * from student1
where sid between 3 and 6;

/*LIKE*/
select * from student1
where sname like "r%";
/*like with ending letter*/
select * from student1
where sname like "%i";

select * from student1
where sname like "%i%";

select * from student1
where sname like "_o";

select * from student1
where sname like "r%i";

/* IN */
select * from sid
where snmae in("rukmini","sharvani");

insert into branch() values(102,"office",2);
insert into branch() values(103,"ece",3);
insert into branch() values(104,"cse",3);

select * from branch;

/*inner join*/
select student1.sname,branch.d_name
from student1
inner join branch
on student1.sid=branch.s_id;

/*left outer join*/
select student1.sname,branch.d_name,student1.sid
from student1
left join branch
on student1.sid=branch.s_id;
/*right outer join*/
select student1.sname,branch.d_name,student1.sid
from student1
right join branch
on student1.sid=branch.s_id;


