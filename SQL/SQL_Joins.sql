--1. Display all employees whose salaries are in the database, along with their salaries.
 
 select e.employee_name, s.monthly_salary from
 employees  e join employee_salary  es on e.id = es.employee_id
 join salary s on es.salary_id = s.id; 
 
 --2. Display all employees whose salary is less than 2000.

 select employees.employee_name, salary.monthly_salary from
 employees  join employee_salary on employees.id = employee_salary.employee_id
 left join salary on employee_salary.salary_id = salary.id
 where salary.monthly_salary < 2000;
 
 -- 3. Display all salary positions, but no employee is assigned to them. (There is a salary position, but it is not clear who receives it.)

 select salary.monthly_salary from
 salary left join employee_salary on salary.id = employee_salary.salary_id
 left join employees on employee_salary.employee_id = employees.id 
 where employees.employee_name is null;

 --4. Display all salary positions less than 2000, but no employee has been assigned to them. (There is a salary position, but it is not clear who receives it.)

 select salary.monthly_salary from
 salary left join employee_salary on salary.id = employee_salary.salary_id
 left join employees on employee_salary.employee_id = employees.id 
 where employees.employee_name is null
 and salary.monthly_salary < 2000;

 --5. Find all employees who haven't got any salary position.

 select employees.employee_name from 
 employees left join employee_salary on employees.id = employee_salary.employee_id
 left join salary on salary.id=employee_salary.salary_id
 where salary.monthly_salary is null;

 --6. Display all employees and their roles.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id;

 --7. Display names and roles of Java developers.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Java developer%';

 --8. Display names and roles of Pethon developers.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Python developer%';

 -- 9. Display names and roles of QA engineers.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%QA%';

 --10. Display names and roles of manual QA engineers.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Manual QA%';

 --11. Display names and roles of automation QA engineers.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Automation QA%';

 --12. Display names and salaries of Junior specialists.
 
select s.monthly_salary, e.employee_name from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Junior%' 
;
 
--13. Display names and salaries of Middle specialists.

select s.monthly_salary, e.employee_name from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Middle%' 
;


 --14. Display names and salaries of Senior specialists.

select s.monthly_salary, e.employee_name from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Senior%' 
;


 --15. Display   Java developers salaries.

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Java developer'
;

 --16. Display   Python developers salaries.

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Python developer%' 
;

-- 17. Display   Junior Python developers names and salaries

select s.monthly_salary, e.employee_name from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Junior Python developer%' 
;

 --18. Display   Middle JS developers names and salaries

select s.monthly_salary, e.employee_name from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike 'Middle Javascript developer' 
;
 --19. Display   Senior Java developers names and salaries.

 select s.monthly_salary, e.employee_name from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like 'Senior Java developer' 
;
 --20. Display Junior QA engineers  salaries.

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Junior%QA engineer' 
;
 
 --21. Display   middle Junior specialists salary.

select avg(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Junior%' 
;
 --22. Display sum of JS developers salaries.

select sum(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Javascript%' 
;

 --23. Display minimal QA engineers salary
 
select min(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%QA%' 
;

 --24. Display the maximum salary of QA engineers. 
 
 select max(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%QA%' 
;

 --25. Display the amount of QA engineers

select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%QA%'
;

 --26. Display the amount of  Middle specialists.
 
 select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%Middle%'
;
 
 --27. Display the amount of developers.

 select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%developer%'
;
 
 --28. Display the sum of developers salaries.
 
select sum(s.monthly_salary) from
 salary as s right join employee_salary as es
 on s.id = es.salary_id
 join roles_employee as re
 on es.employee_id = re.employee_id
 left join roles as r
 on re.role_id = r.id 
 where r.role_name like '%developer%';
 
 --29. Display all employees names, roles and salaries ordered ascendently

select e.employee_name, r.role_name, s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
order by s.monthly_salary;

 --30. Display all employees names, roles and salaries ordered ascendently who have salary position between 1700 and 2300;
 
select e.employee_name, r.role_name, s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;
 
 --31.  Display all employees names, roles and salaries ordered ascendently who have salary position less than 2300

 select e.employee_name, r.role_name, s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where s.monthly_salary < 2300
order by s.monthly_salary;

 --32. Display all employees names, roles and salaries ordered ascendently who have salary position 1100, 1500, 2000.

select e.employee_name, r.role_name, s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join employees as e 
on e.id = es.employee_id
join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;
