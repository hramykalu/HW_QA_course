 -- 1)Create table employees (id. serial,  primary key; employee_name. Varchar(50), not null);

create table employees (
id serial primary key,
employee_name varchar(50) not null
);

-- 2) Fill in the table employee with 70 lines;

insert into employees(id, employee_name)
values 
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah'),
(default, 'sarah')
;

-- 3) Create table salary(id. Serial  primary key; monthly_salary. Int, not null);

create table salary(
id serial primary key, 
mounthly_salary int not null
);

-- 4) Fill in table salary with 15 lines;

 insert into salary(id, mounthly_salary)
 values (default, 1000),
 (default, 1100),
 (default, 1200),
 (default, 1300),
 (default, 1400),
 (default, 1500),
 (default, 1600),
 (default, 1700),
 (default, 1800),
 (default, 1900),
 (default, 2000),
 (default, 2100),
 (default, 2200),
 (default, 2300),
 (default, 2400)
;

--5) Create table employee_salary (id. Serial  primary key; employee_id. Int, not null, unique; salary_id. Int, not null)

create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null);

-- 6) Fill in the table employee_salary with 40 lines: where 10 lines  have invalid employee_id

insert into employee_salary 
values (default, 3, 7),
(default, 1, 4),
(default, 5, 9),
(default, 40, 13),
(default, 23, 4),
(default, 11, 2),
(default, 52, 10),
(default, 15, 13),
(default, 26, 4),
(default, 16, 1),
(default, 33, 7),
(default, 34, 4),
(default, 6, 9),
(default, 42, 13),
(default, 13, 4),
(default, 45, 2),
(default, 62, 10),
(default, 12, 13),
(default, 25, 4),
(default, 17, 1),
(default, 2, 7),
(default, 46, 4),
(default, 7, 9),
(default, 30, 13),
(default, 22, 4),
(default, 67, 2),
(default, 32, 10),
(default, 47, 13),
(default, 29, 4),
(default, 10, 1),
(default, 331, 7),
(default, 561, 4),
(default, 234, 9),
(default, 240, 13),
(default, 235, 4),
(default, 141, 2),
(default, 522, 10),
(default, 150, 13),
(default, 260, 4),
(default, 163, 1);

--7) Create table roles( id. Serial  primary key; role_name. int, not null, unique);

create table roles (
id serial primary key, 
role_name int not null unique);

--8) Change role_name type int to varchar(30)

alter table roles
alter column  role_name type varchar(30) 
using role_name::varchar(30);

--9) Fill in the table roles with 20 lines:

insert into roles (id, role_name)
values (default,'Junior Python developer'),
(default, 'Middle Python developer'),
(default, 'Senior Python developer'),
(default, 'Junior Java developer'),
(default, 'Middle Java developer'),
(default, 'Senior Java developer'),
(default, 'Junior JavaScript developer'),
(default, 'Middle JavaScript developer'),
(default, 'Senior JavaScript developer'),
(default, 'Junior Manual QA engineer'),
(default, 'Middle Manual QA engineer'),
(default, 'Senior Manual QA engineer'),
(default, 'Project Manager'),
(default, 'Designer'),
(default, 'HR'),
(default, 'CEO'),
(default, 'Sales manager'),
(default, 'Junior Automation QA engineer'),
(default, 'Middle Automation QA engineer'),
(default, 'Senior Automation QA engineer');

-- 10) Create table roles_employee (id. Serial primary key; employee_id. Int, not null, unique (foreign key for table employees, column id); role_id. Int, not null (foreign key for table roles, column id) )

create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) 
references employees (id),
foreign key (role_id) 
references roles (id)
);

-- 11) Fill in the table roles_employee with 40 lines:

insert into roles_employee(id, employee_id, role_id)
values 
 (default, 7,2),
 (default, 20,4),
 (default,3 ,9),
 (default, 5,13),
 (default, 23,4),
 (default, 11,2),
 (default, 10,9),
 (default, 22,13),
 (default, 21,3),
 (default,34 ,4),
 (default,6 ,7),
 (default, 35,1),
 (default,36 ,2),
 (default,37 ,3),
 (default, 38,3),
 (default, 39,4),
 (default,40 ,5),
 (default, 41,6),
 (default,43 ,7),
 (default, 45,8),
 (default,47,9),
 (default,46 ,10),
 (default, 50,11),
 (default, 52,19),
 (default,54 ,13),
 (default, 51,14),
 (default,53 ,15),
 (default, 56,16),
 (default, 58,11),
 (default,59 ,17),
 (default, 57,18),
 (default, 60,16),
 (default, 61,17),
 (default,62 ,3),
 (default, 63,2),
 (default,65 ,7),
 (default, 66,6),
 (default, 67,5),
 (default,68 ,4),
 (default, 69,19);
