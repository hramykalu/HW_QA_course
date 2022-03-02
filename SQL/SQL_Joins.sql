--1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
 
 select e.employee_name, s.monthly_salary from
 employees  e join employee_salary  es on e.id = es.employee_id
 join salary s on es.salary_id = s.id; 
 
 --2. ������� ���� ���������� � ������� �� ������ 2000.

 select employees.employee_name, salary.monthly_salary from
 employees  join employee_salary on employees.id = employee_salary.employee_id
 left join salary on employee_salary.salary_id = salary.id
 where salary.monthly_salary < 2000;
 
 -- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

 select salary.monthly_salary from
 salary left join employee_salary on salary.id = employee_salary.salary_id
 left join employees on employee_salary.employee_id = employees.id 
 where employees.employee_name is null;

 --4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

 select salary.monthly_salary from
 salary left join employee_salary on salary.id = employee_salary.salary_id
 left join employees on employee_salary.employee_id = employees.id 
 where employees.employee_name is null
 and salary.monthly_salary < 2000;

 --5. ����� ���� ���������� ���� �� ��������� ��.

 select employees.employee_name from 
 employees left join employee_salary on employees.id = employee_salary.employee_id
 left join salary on salary.id=employee_salary.salary_id
 where salary.monthly_salary is null;

 --6. ������� ���� ���������� � ���������� �� ���������.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id;

 --7. ������� ����� � ��������� ������ Java �������������.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Java developer%';

 --8. ������� ����� � ��������� ������ Python �������������.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Python developer%';

 -- 9. ������� ����� � ��������� ���� QA ���������.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%QA%';

 --10. ������� ����� � ��������� ������ QA ���������.

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Manual QA%';

 --11. ������� ����� � ��������� ��������������� QA

select e.employee_name, r.role_name from 
employees as e left join roles_employee as re 
on e.id=re.employee_id 
left join roles as r 
on re.role_id=r.id
where r.role_name ilike '%Automation QA%';

 --12. ������� ����� � �������� Junior ������������
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
 
--13. ������� ����� � �������� Middle ������������

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


 --14. ������� ����� � �������� Senior ������������

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


 --15. ������� �������� Java �������������

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Java developer'
;

 --16. ������� �������� Python �������������

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name ilike '%Python developer%' 
;

-- 17. ������� ����� � �������� Junior Python �������������

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

 --18. ������� ����� � �������� Middle JS �������������

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
 --19. ������� ����� � �������� Senior Java �������������

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
 --20. ������� �������� Junior QA ���������

select s.monthly_salary from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Junior%QA engineer' 
;
 
 --21. ������� ������� �������� ���� Junior ������������

select avg(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Junior%' 
;
 --22. ������� ����� ������� JS �������������

select sum(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%Javascript%' 
;

 --23. ������� ����������� �� QA ���������
select min(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%QA%' 
;

 --24. ������� ������������ �� QA ���������
 
 select max(s.monthly_salary) from 
salary as s right join employee_salary as es 
on s.id = es.salary_id 
left join roles_employee as re 
on es.employee_id = re.employee_id 
left join roles as r
on re.role_id = r.id
where r.role_name like '%QA%' 
;

 --25. ������� ���������� QA ���������

select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%QA%'
;

 --26. ������� ���������� Middle ������������.
 
 select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%Middle%'
;
 
 --27. ������� ���������� �������������

 select count(re.role_id) from 
roles_employee as re left join roles as r 
on  re.role_id = r.id
where r.role_name like '%developer%'
;
 
 --28. ������� ���� (�����) �������� �������������.
 
select sum(s.monthly_salary) from
 salary as s right join employee_salary as es
 on s.id = es.salary_id
 join roles_employee as re
 on es.employee_id = re.employee_id
 left join roles as r
 on re.role_id = r.id 
 where r.role_name like '%developer%';
 
 --29. ������� �����, ��������� � �� ���� ������������ �� �����������

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

 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
 
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
 
 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300

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

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000

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