--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
 
 select e.employee_name, s.monthly_salary from
 employees  e join employee_salary  es on e.id = es.employee_id
 join salary s on es.salary_id = s.id; 
 
 --2. Вывести всех работников у которых ЗП меньше 2000.

 select employees.employee_name, salary.monthly_salary from
 employees  join employee_salary on employees.id = employee_salary.employee_id
 left join salary on employee_salary.salary_id = salary.id
 where salary.monthly_salary < 2000;
 
 -- 3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

 select salary.monthly_salary from
 salary left join employee_salary on salary.id = employee_salary.salary_id
 left join employees on employee_salary.employee_id = employees.id 
 where employees.employee_name is null;

 --4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

 select salary.monthly_salary from
 salary left join employee_salary on salary.id = employee_salary.salary_id
 left join employees on employee_salary.employee_id = employees.id 
 where employees.employee_name is null
 and salary.monthly_salary < 2000;

 --5. Найти всех работников кому не начислена ЗП.

 select employees.employee_name from 
 employees left join employee_salary on employees.id = employee_salary.employee_id
 left join salary on salary.id=employee_salary.salary_id
 where salary.monthly_salary is null;

 --6. Вывести всех работников с названиями их должности.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id;

 --7. Вывести имена и должность только Java разработчиков.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Java developer%';

 --8. Вывести имена и должность только Python разработчиков.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Python developer%';

 -- 9. Вывести имена и должность всех QA инженеров.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%QA%';

 --10. Вывести имена и должность ручных QA инженеров.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Manual QA%';

 --11. Вывести имена и должность автоматизаторов QA

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Automation QA%';

 --12. Вывести имена и зарплаты Junior специалистов
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
 
--13. Вывести имена и зарплаты Middle специалистов

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


 --14. Вывести имена и зарплаты Senior специалистов

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


 --15. Вывести зарплаты Java разработчиков

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Java developer'
;

 --16. Вывести зарплаты Python разработчиков

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Python developer%' 
;

-- 17. Вывести имена и зарплаты Junior Python разработчиков

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

 --18. Вывести имена и зарплаты Middle JS разработчиков

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
 --19. Вывести имена и зарплаты Senior Java разработчиков

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
 --20. Вывести зарплаты Junior QA инженеров

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Junior%QA engineer' 
;
 
 --21. Вывести среднюю зарплату всех Junior специалистов

select avg(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Junior%' 
;
 --22. Вывести сумму зарплат JS разработчиков

select sum(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Javascript%' 
;

 --23. Вывести минимальную ЗП QA инженеров
select min(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%QA%' 
;

 --24. Вывести максимальную ЗП QA инженеров
 
 select max(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%QA%' 
;

 --25. Вывести количество QA инженеров

select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%QA%'
;

 --26. Вывести количество Middle специалистов.
 
 select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%Middle%'
;
 
 --27. Вывести количество разработчиков

 select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%developer%'
;
 
 --28. Вывести фонд (сумму) зарплаты разработчиков.
 
select sum(s.monthly_salary) from
 salary as s right join employee_salary as es
 on s.id = es.salary_id
 join roles_employee as re
 on es.employee_id = re.employee_id
 left join roles as r
 on re.role_id = r.id 
 where r.role_name like '%developer%';
 
 --29. Вывести имена, должности и ЗП всех специалистов по возрастанию

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

 --30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
 
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
 
 --31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300

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

 --32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000

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