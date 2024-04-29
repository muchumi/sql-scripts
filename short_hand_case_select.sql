-- Shorthand CASE in SELECT; when using the short variant the entire statement is evaluated at each WHEN
create table items(
    Id integer primary key,
    ItemId integer not null unique,
    ItemName text not null,
    Price float not null
);
insert into items values(1, 101, 'Samsung Bravia TV', 150000.00);
insert into items values(2, 102, 'Hisense Android TV', 100000.00);
insert into items values(3, 103, 'Vitron TV', 50000.00);
insert into items values(4, 104, 'TCL TV', 35000.00);
select Id, ItemId, ItemName, Price,
    case Price when 150000 then 'Expensive'
               when 35000.00 then 'Cheap'
               else 'Affordable'
    end as PriceRating
from items
