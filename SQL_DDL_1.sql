 -- 1)Создать таблицу employees (id. serial,  primary key; employee_name. Varchar(50), not null);
create table employees (
id serial primary key,
employee_name varchar(50) not null
);

-- 2) Наполнить таблицу employee 70 строками;
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

-- 3) Создать таблицу salary(id. Serial  primary key; monthly_salary. Int, not null);
create table salary(
id serial primary key, 
mounthly_salary int not null
);

-- 4) Наполнить таблицу salary 15 строками;
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
 (default, 2400),
 (default, 2500);

--5) Создать таблицу employee_salary (id. Serial  primary key; employee_id. Int, not null, unique; salary_id. Int, not null)
create table employee_salary (
id serial primary key,
employee_id int not null unique,
salary_id int not null);

-- 6) Наполнить таблицу employee_salary 40 строками: в 10 строк из 40 вставить несуществующие employee_id
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

--7) Создать таблицу roles( id. Serial  primary key; role_name. int, not null, unique);
create table roles (
id serial primary key, 
role_name int not null unique);

--8) Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column  role_name type varchar(30) 
using role_name::varchar(30);

--9) Наполнить таблицу roles 20 строками:
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

-- 10) Создать таблицу roles_employee (id. Serial primary key; employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id); role_id. Int, not null (внешний ключ для таблицы roles, поле id) )
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id) 
references employees (id),
foreign key (role_id) 
references roles_employee (id)
);

-- 11) Наполнить таблицу roles_employee 40 строками:
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
