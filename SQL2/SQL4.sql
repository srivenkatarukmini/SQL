
use cbit;
select * from ipl;
delimiter &&
create procedure mp(in i int,n varchar(20),p varchar(20))
begin
insert into ipl(id,name,place) values(i,n,p)
end &&



call mp(102,'csk','che');