create table residents (
    Id integer primary key,
    StudentId integer not null unique,
    StudentName text not null,
    city text not null
);
insert into residents values(1, 101, 'Ammy White', 'New York');
insert into residents values(2, 102, 'Clark Kent', 'Smallville');
insert into residents values(3, 103, 'Mark Lawson', 'Los Angeles');
insert into residents values(4, 104, 'Lois Lane', 'Smallville');
insert into residents values(5, 105, 'Lex Luthor', 'Smallville');
select Id, StudentId, StudentName, City,
    case when City='Smallville' then 'Great Neighborhood'
         else 'Worst Neighborhood'
    end as ResidentsCityRating
from residents