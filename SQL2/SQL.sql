use cbit;
create table std2(
id int primary key,
name varchar(20) not null,
dob date);
show tables;
insert into std2(id,name,dob) values(1,"rukmini","2000-12-12");
insert into std2(id,name) values(2,"karthik");
select * from std2;






