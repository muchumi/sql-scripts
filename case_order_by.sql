-- CASE in a clause ORDER BY.Using 123 to determine the type of order.
create table employees(
    Id integer primary key,
    EmployeeId integer not null unique,
    EmployeeName text not null,
    Department text not null
);
insert into employees values(1, 1001, 'Clark Kent', 'ICT');
insert into employees values(2, 1002, 'James Gordon', 'Finance');
insert into employees values(3, 1003, 'Ammy White', 'ICT');
insert into employees values(4, 1004, 'Bran Gonman', 'Marketing');
insert into employees values(5, 1005, 'Amber Fox', 'Finance');
select * from employees
Order by
    case Department when 'ICT' then 1
                    when 'Finance' then 2
                    when 'Marketing' then 3
                    else 0
    end
  