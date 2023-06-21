use cbit;
create table emp(
e_id int,
e_name varchar(20),
e_Dob date,
e_phone int,
e_desc varchar(20));
show tables;
insert into emp(e_id,e_name,e_Dob,e_phone,e_desc) values(1,"yash","2003-10-5",999,"he is a boy with etc");
insert into emp() values(3,"rani","2001-10-25",9393,"she is a good girl");

select * from emp;
ALTER TABLE emp ADD e_rollno int;
ALTER TABLE emp MODIFY e_phone double;
ALTER TABLE emp DROP Column e_dob;
ALTER TABLE emp RENAME COLUMN e_name to e_full_name;
desc emp;

Create table emp2
select * from emp;
select * from emp2;
TRUNCATE TABLE emp2;


