-- using case to count number of rows in a column that match a condition
create table residents(
    Id integer primary key,
    ResidentId integer not null unique,
    ResidentName text not null,
    city text not null
);
insert into residents values(1, 101, 'Ammy White', 'Seattle');
insert into residents values(2, 102, 'James Cole', 'Los Angeles');
insert into residents values(3, 103, 'Brandy Anna', 'Seattle');
insert into residents values(4, 104, 'James Tucker', 'Seattle');
insert into residents values(5, 105, 'Amber Maxwel', 'Los Angeles');
insert into residents values(6, 106, 'Falcon White', 'New York');
select
    count(id) as ResidentsCount,
    sum( case 
             when city='Seattle' then 1
             else 0  
         end
    ) as CityResidentsCount
    
from residents