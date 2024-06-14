-- create a table
create table IctDepartment(
    id integer primary key,
    firstName text not null,
    secondName text not null,
    position text not null
);
insert into IctDepartment values(1, 'Ammy', 'White', 'SEO Expert');
insert into IctDepartment values(2, 'Clark', 'Kent', 'Software Engineer Manager');
insert into IctDepartment values(3, 'Gilbert', 'Sechan', 'Project Manager');
insert into IctDepartment values(4, 'Wycliffe', 'Maina', 'Software Engineer');
insert into  IctDepartment values(5, 'John', 'Kibe', 'CTO');
select * from IctDepartment
order by
    case position when 'CTO' then 1
                  when'Project Manager' then 2
                  when 'Software Engineer Manager' then 3
                  when 'Software Engineer' then 4
                  when'SEO Expert' then 5
         else 0
    end

