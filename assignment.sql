---TASK 1 DATABASE DESIGN

---1) Create the database named "SISDB" 

create database SISDB;

---2) Create table

create table Students (
student_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
date_of_birth datetime not null,
email varchar(50) not null unique,
phone_number varchar(15)
)

create table Courses (
course_id int Primary Key,
course_name varchar(50) not null,
credits int,
teacher_id int,
foreign key (teacher_id) references Teacher(teacher_id))

create table Enrollments(
enrollment_id int Primary Key,
student_id int,
course_id int,
enrollment_date datetime,
foreign key (student_id) references Students (student_id),
foreign key (course_id) references Courses (course_id)) 

create table teacher(
teacher_id int Primary Key,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50) not null unique);

create table Payments(
payment_id int Primary Key,
student_id int,
amount decimal(10,2),
payment_date datetime,
foreign key (student_id) references Students(student_id))

--3)insert values in table

insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values (1, 'nivi', 'v', '2003-07-06', 'niv@gmail.com', '893-456-7890');
      insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values (2, 'Jane', 'Smith', '1999-05-12', 'jane.smith@example.com', '987-654-3210');
      insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values(3, 'Tom', 'Brown', '2001-03-25', 'tom.brown@example.com', '456-789-1230');
       insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values(4, 'Alya', 'M', '2002-07-30', 'alya.m@example.com', '321-654-9870');
      insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values(5, 'ram', 'charan', '2000-11-15', 'ram.charan@example.com', '654-987-3210');
      insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values(6, 'riya', 'Jones', '1998-12-02', 'riya.jones@example.com', '789-123-4567');
      insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values(7, 'rithu', 's', '2001-04-18', 'rithu.s@example.com', '234-567-8901');
    insert into Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values(8, 'Aksaya', 'B', '1999-06-22', 'aksaya.b@example.com', '890-123-4567');
       INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values(9, 'Nithya', 'D', '2002-08-10', 'nithya.davis@example.com', '567-890-1234');
      INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values (10, 'Sara', 'Martin', '2000-10-29', 'sara.martin@example.com', '789-456-1230');

insert into Teacher (teacher_id, first_name, last_name, email)
values (1, 'Robert', 'Brown', 'robert.brown@example.com');
     insert into Teacher (teacher_id, first_name, last_name, email)
values   (2, 'Laura', 'Johnson', 'laura.johnson@example.com');
      insert into Teacher (teacher_id, first_name, last_name, email)
values  (3, 'Michael', 'Clark', 'michael.clark@example.com');
     insert into Teacher (teacher_id, first_name, last_name, email)
values  (4, 'Sarah', 'Lee', 'sarah.lee@example.com');
insert into Teacher (teacher_id, first_name, last_name, email)
values (5, 'Amit', 'Sharma', 'amit.sharma@example.com');

insert intoTeacher (teacher_id, first_name, last_name, email)
values (6, 'Priya', 'Patel', 'priya.patel@example.com');
insert into Teacher (teacher_id, first_name, last_name, email)
values (7, 'Rajesh', 'Kumar', 'rajesh.kumar@example.com');
insert into Teacher (teacher_id, first_name, last_name, email)
values(8, 'Anita', 'Singh', 'anita.singh@example.com');
insert into Teacher (teacher_id, first_name, last_name, email)
values (9, 'Suresh', 'Rao', 'suresh.rao@example.com');
INSERT INTO Teacher (teacher_id, first_name, last_name, email)
values(10, 'Neha', 'Iyer', 'neha.iyer@example.com');


insert into Courses (course_id, course_name, credits, teacher_id)
values(101, 'Mathematics', 3, 1);
 insert into Courses (course_id, course_name, credits, teacher_id)
values   (102, 'Physics', 4, 2);
insert into Courses (course_id, course_name, credits, teacher_id)
values(103, 'Chemistry', 3, 3);
insert into Courses (course_id, course_name, credits, teacher_id)
values(104, 'Biology', 4, 4);
insert intoCourses (course_id, course_name, credits, teacher_id)
values (105, 'english', 3, 5);
insert into Courses (course_id, course_name, credits, teacher_id)
VALUES (106, 'hindi', 4, 6);
insert into Courses (course_id, course_name, credits, teacher_id)
values (107, 'french', 3, 7);
insert into Courses (course_id, course_name, credits, teacher_id)
values (108, 'geography', 3, 8);
insert into Courses (course_id, course_name, credits, teacher_id)
values (109, 'Computer Science', 4, 9);
INSERT INTO Courses (course_id, course_name, credits, teacher_id)
values (110, 'tamil', 3, 10);


insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (1, 1, 101, '2024-01-15');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values  (2, 2, 102, '2024-01-16');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (3, 3, 103, '2024-01-17');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (4, 4, 104, '2024-01-18');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (5, 5, 105, '2024-01-19');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (6, 6, 101, '2024-01-20');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values   (7, 7, 102, '2024-01-21');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (8, 8, 103, '2024-01-22');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values(9, 9, 104, '2024-01-23');
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (10, 10, 105, '2024-01-24');


insert into Payments (payment_id, student_id, amount, payment_date)
values (1, 1, 500.00, '2024-02-01');
insert into Payments (payment_id, student_id, amount, payment_date)
values (11, 1, 500.00, '2024-04-03');
insert into Payments (payment_id, student_id, amount, payment_date)
values  (2, 2, 700.00, '2024-02-02');
insert into Payments (payment_id, student_id, amount, payment_date)
values (3, 3, 600.00, '2024-02-03');
insert into Payments (payment_id, student_id, amount, payment_date)
values (4, 4, 800.00, '2024-02-04');
insert into Payments (payment_id, student_id, amount, payment_date)
values (5, 5, 750.00, '2024-02-05');
insert into Payments (payment_id, student_id, amount, payment_date)
values(6, 6, 650.00, '2024-02-06');
insert into Payments (payment_id, student_id, amount, payment_date)
values(7, 7, 700.00, '2024-02-07');
insert into Payments (payment_id, student_id, amount, payment_date)
values (8, 8, 500.00, '2024-02-08');
insert into Payments (payment_id, student_id, amount, payment_date)
values (9, 9, 550.00, '2024-02-09');
insert into Payments (payment_id, student_id, amount, payment_date)
values (10, 10, 800.00, '2024-02-10');


SELECT * FROM Courses;
select * from enrollments;
select * from payments;
select * from students;
select * from teacher;

---TASK 2 Select, Where, Between, AND, LIKE:  

---1. Write an SQL query to insert a new student into the "Students" table with the following details
insert into students (student_id, first_name, last_name, date_of_birth, email, phone_number)
values (11, 'John', 'Doe', '1995-08-15', 'john.doe@example.com', '1234567890');
select * from students;

--2. Write an SQL query to enroll a student in a course. Choose an existing student and course and insert a record into the "Enrollments" table with the enrollment date. 

insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (11, 11, 101,'2024-11-07');
select * from enrollments;

--3. Update the email address of a specific teacher in the "Teacher" table. Choose any teacher and modify their email address. 

update Teacher
set email = 'new.email@yahoo.com'
where teacher_id = 1;
select * from teacher;

--4. Write an SQL query to delete a specific enrollment record from the "Enrollments" table. Select an enrollment record based on the student and course. 

delete from Enrollments
where student_id = 11 AND course_id = 101;
select * from enrollments

--5. Update the "Courses" table to assign a specific teacher to a course. Choose any course and teacher from the respective tables. 

update Courses
set teacher_id = 2
where course_id = 101;
select * from courses;

--6. Delete a specific student from the "Students" table and remove all their enrollment records from the "Enrollments" table. Be sure to maintain referential integrity. 

alter table Enrollments
add constraint FK_Enrollments_Students
foreign key (student_id) references Students(student_id) on delete cascade;

delete from enrollments
where student_id = 1;
select * from enrollments;

--7. Update the payment amount for a specific payment record in the "Payments" table. Choose any payment record and modify the payment amount

update Payments
set amount = 1000.00
where payment_id = 1;
select * from payments;

--TASK 3 Aggregate functions, Having, Order By, GroupBy and Joins:  

--1. Write an SQL query to calculate the total payments made by a specific student. You will need to join the "Payments" table with the "Students" table based on the student's ID. 

select s.first_name, s.last_name, sum(p.amount) as total_payments
from Students s
join Payments p on s.student_id = p.student_id
where s.student_id = 3
group by s.first_name, s.last_name;

--2. Write an SQL query to retrieve a list of courses along with the count of students enrolled in each course. Use a JOIN operation between the "Courses" table and the "Enrollments" table.

select c.course_name, COUNT(e.student_id) as student_count
from Courses c
left join Enrollments e on c.course_id = e.course_id
group by c.course_name;

--3. Write an SQL query to find the names of students who have not enrolled in any course. Use a LEFT JOIN between the "Students" table and the "Enrollments" table to identify students without enrollments.

select s.first_name, s.last_name,e.course_id
from Students s
LEFT JOIN Enrollments e ON s.student_id = e.student_id
where e.course_id IS NULL;

--4. Write an SQL query to retrieve the first name, last name of students, and the names of the 
--courses they are enrolled in. Use JOIN operations between the "Students" table and the "Enrollments" and "Courses" tables. 

Select s.first_name, s.last_name, c.course_name
from Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

--5. Create a query to list the names of teachers and the courses they are assigned to. Join the "Teacher" table with the "Courses" table.

select t.first_name, t.last_name, c.course_name
from Teacher t
JOIN Courses c ON t.teacher_id = c.teacher_id;

--6. Retrieve a list of students and their enrollment dates for a specific course. You'll need to join the "Students" table with the "Enrollments" and "Courses" tables. 

select s.first_name, s.last_name, e.enrollment_date
from Students s
JOIN Enrollments e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
where c.course_id = 101;

--7. Find the names of students who have not made any payments. Use a LEFT JOIN between the "Students" table and the "Payments" table and filter for students with NULL payment records. 

select s.first_name, s.last_name,p.amount
from Students s
left JOIN Payments p on s.student_id = p.student_id
where p.payment_id IS NULL;

--8. Write a query to identify courses that have no enrollments. You'll need to use a LEFT JOIN between the "Courses" table and the "Enrollments" table and filter for courses with NULL 
--enrollment records.

select c.course_name,e.enrollment_id
from Courses c
left JOIN Enrollments e ON c.course_id = e.course_id
where e.enrollment_id IS NULL;

--9. Identify students who are enrolled in more than one course. Use a self-join on the "Enrollments" table to find students with multiple enrollment records. 
insert into Enrollments (enrollment_id, student_id, course_id, enrollment_date)
values (12, 3, 101, '2023-07-12');

select s.first_name, s.last_name, count(e.course_id) AS enrollment_count
from Students s
join Enrollments e ON s.student_id = e.student_id
group by  s.first_name, s.last_name
having count(e.course_id) >1;

--alt

select distinct e1.student_id
from Enrollments e1
JOIN Enrollments e2 ON e1.student_id = e2.student_id and e1.course_id <> e2.course_id;

--10. Find teachers who are not assigned to any courses. Use a LEFT JOIN between the "Teacher" table and the "Courses" table and filter for teachers with NULL course assignments. 

select t.first_name, t.last_name,c.course_id
from Teacher t
LEFT JOIN Courses c on t.teacher_id = c.teacher_id
where c.course_id is null;

select * from courses
select * from teacher

---TASK 4  Subquery and its type:  

--1) Write an SQL query to calculate the average number of students enrolled in each course. Use aggregate functions and subqueries to achieve this.

select avg(enrollment_count) as average_enrollment
from(select count(e.student_id) AS enrollment_count
  from Enrollments e
  group by e.course_id ) AS course_enrollments;

--2) Identify the student(s) who made the highest payment. Use a subquery to find the maximum payment amount and then retrieve the student(s) associated with that amount. 

select s.first_name, s.last_name, p.amount
from students s
join payments p ON s.student_id = p.student_id
where p.amount = (select max(amount) from payments);

--3. Retrieve a list of courses with the highest number of enrollments. Use subqueries to find the course(s) with the maximum enrollment count. 

select top 1 course_id, count(enrollment_id) as max
from Enrollments
group by course_id
order by max desc

--4. Calculate the total payments made to courses taught by each teacher. Use subqueries to sum payments for each teacher's courses. 

select t.teacher_id, t.first_name, t.last_name,
       (select sum(p.amount)
        from Payments p
        JOIN Enrollments e on p.student_id = e.student_id
       where e.course_id IN (select c.course_id from Courses c where c.teacher_id = t.teacher_id)) AS total_payments
from Teacher t;

--5. Identify students who are enrolled in all available courses. Use subqueries to compare a student's enrollments with the total number of courses.

select s.student_id, s.first_name, s.last_name
from Students s
where (select count(distinct e.course_id) 
      from Enrollments e 
       where e.student_id = s.student_id) = 
      (select count(course_id) 
       from Courses);

--6. Retrieve the names of teachers who have not been assigned to any courses. Use subqueries to find teachers with no course assignments. 
select t.first_name, t.last_name
from teacher t
where t.teacher_id not in (
    select c.teacher_id
    from courses c
    where c.teacher_id is not null);

--7. Calculate the average age of all students. Use subqueries to calculate the age of each student based on their date of birth. 

select AVG(age) as avg_Age from (select student_id ,(datediff(YEAR, date_of_birth, getdate()))AS age from students) as s_Age

--8. Identify courses with no enrollments. Use subqueries to find courses without enrollment records. 

select course_id, course_name from courses
where course_id not in (select course_id from enrollments);

--9. Calculate the total payments made by each student for each course they are enrolled in. Use subqueries and aggregate functions to sum payments.

select e.student_id, e.course_id,(select sum(p.amount) from payments p where p.student_id = e.student_id) AS total_payments
from enrollments e
group by e.student_id, e.course_id;

--10. Identify students who have made more than one payment. Use subqueries and aggregate functions to count payments per student and filter for those with counts greater than one. 

select s.first_name, s.last_name, s.student_id from students s
where s.student_id IN (
    select p.student_id from payments p
    group by p.student_id
    having count(p.payment_id) > 1);

--11. Write an SQL query to calculate the total payments made by each student. Join the "Students" table with the "Payments" table and use GROUP BY to calculate the sum of payments for each student. 

select s.first_name,s.last_name,sum(p.amount) as total_payments
from students s
join payments p on s.student_id=p.payment_id
group by s.first_name,s.last_name

--12. Retrieve a list of course names along with the count of students enrolled in each course. Use JOIN operations between the "Courses" table and the "Enrollments" table and GROUP BY to count enrollments.

select c.course_name, count(e.student_id) AS student_count
from courses c
left join enrollments e ON c.course_id = e.course_id
group by c.course_name;

--13. Calculate the average payment amount made by students. Use JOIN operations between the "Students" table and the "Payments" table and GROUP BY to calculate the average. 

select s.first_name, s.last_name, avg(p.amount) AS avg_payment
from students s
join payments p ON s.student_id = p.student_id
group by s.first_name,s.last_name;
