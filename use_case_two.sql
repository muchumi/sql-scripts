-- using case to count number of rows in a column that match a condition
create table employees(
    Id integer primary key,
    EmployeeId integer not null unique,
    EmployeeName text not null,
    Department text not null
);
insert into employees values(1, 101, 'Clark Kent', 'ICT');
insert into employees values(2, 102, 'Mark Lawson', 'Warehousing');
insert into employees values(3, 103, 'Don Carlos', 'Marketing');
insert into employees values(4, 104, 'Amber Chimbalin', 'Finance');
insert into employees values(5, 105, 'Andria Graham', 'ICT');
insert into employees values(6, 106, 'James Gordon', 'ICT');
select
    count(Id) as EmployeeCount,
    sum(case 
             when Department='ICT' then 1
             else 'unavailable'
        end
    )as EmployeePerDepartmentCount
from employees