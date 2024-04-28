create table students(
    Id integer primary key,
    StudentId integer not null,
    StudentName text not null,
    marks integer not null
);
insert into students values(1, 1001, 'Wycliffe Michael', 95);
insert into students values(2, 1002, 'Abby White', 85);
insert into students values(3, 1003, 'John Clerk', 70);
insert into students values(4, 1004, 'Ammy Chembalin', 55);
insert into students values(5, 1005, 'Jammie Soxx', 40);
insert into students values(6, 1006, 'Gabriela Marie', 65);
insert into students values(7, 1007, 'Timothy Turner', 30);
select Id, StudentId, StudentName, marks,
    case when marks>=80 and marks<=100 then 'A'
         when marks>=75 and marks<=79 then 'A-'
         when marks>=70 and marks<=74 then 'B+'
         when marks>=65 and marks<=69 then 'B'
         when marks>=60 and marks<=64 then 'B-'
         when marks>=55 and marks<=59 then 'C+'
         when marks>=50 and marks<=54 then 'C-'
         when marks>=45 and marks<=49 then 'C'
         when marks>=40 and marks<=44 then 'C-'
         when marks>=35 and marks<=39 then 'D+'
         when marks>=30 and marks<=34 then 'D'
         when marks>=25 and marks<=29 then 'D-'
         else 'E'
    end as StudentGrade
from students
    