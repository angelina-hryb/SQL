--SQL HomeWork 2. Joins
--DB: подключение к той таблице где делали DDL операции
--User: подключение к тем пользователем каким делали DDL операции
--Если для какого-то кейса надо сделать дополнительную таблицу, наполнить её данными, то делайте )


--1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.
select * from employees;--71
select * from salary_2;--15
select employees.employee_name, salary_2.mounthly_salary 
from employees 
inner join salary_2 
on employees.id_1=salary_2.id_1;

--1.1
select employees, salary_2
from employees 
left join salary_2 
on employees.id_1=salary_2.id_1;

--1.2
select employees, salary_2
from salary_2 
left join employees 
on salary_2.id_1= employees.id_1;

--1.3
select employees, salary_2
from employees 
right join salary_2 
on employees.id_1=salary_2.id_1;

--1.4
select employees, salary_2
from employees 
full outer join salary_2 
on employees.id_1=salary_2.id_1;

-- 2. Вывести всех работников у которых ЗП меньше 2000.
select employees.employee_name, salary_2.mounthly_salary 
from employees inner join salary_2 
on employees.id_1=salary_2.id_1
where salary_2.mounthly_salary < 2000;

-- 2.1
select employees, salary_2 
from employees full outer join salary_2 
on employees.id_1=salary_2.id_1
where salary_2.mounthly_salary < 2000;

--3. Вывести все зарплатные позиции, но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)
select  employees.employee_name, salary_2.mounthly_salary
from salary_2 
left join employee_salary on salary_2.id_1=employee_salary.salary_id_1 
left join employees on employee_salary.employee_id_1 = employees.id_1
where employees.employee_name is null ;

--4. Вывести все зарплатные позиции  меньше 2000 но работник по ним не назначен. (ЗП есть, но не понятно кто её получает.)

select  employees.employee_name, salary_2.mounthly_salary
from salary_2 
left join employee_salary on salary_2.id_1=employee_salary.salary_id_1 
left join employees on employee_salary.employee_id_1 = employees.id_1
where salary_2.mounthly_salary < 2000 
and employees.employee_name is null ;

-- 5. Найти всех работников кому не начислена ЗП.
select employees.employee_name,salary_2.mounthly_salary
from salary_2
right join employee_salary on salary_2.id_1=employee_salary.salary_id_1 
right join employees on employee_salary.employee_id_1 = employees.id_1
where salary_2.mounthly_salary is null;

-- 6. Вывести всех работников с названиями их должности.

select employees.employee_name, roles_1.role_name 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id ;

--7. Вывести имена и должность только Java разработчиков.
select employees.employee_name, roles_1.role_name 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id 
where roles_1.role_name like '%Java developer%';

-- 8. Вывести имена и должность только Python разработчиков.
select employees.employee_name, roles_1.role_name 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id 
where roles_1.role_name like '%Python%';

-- 9. Вывести имена и должность всех QA инженеров.
select employees.employee_name, roles_1.role_name 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id 
where roles_1.role_name like '%QA%';

-- 10. Вывести имена и должность ручных QA инженеров.
select employees.employee_name, roles_1.role_name 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id 
where roles_1.role_name like '%Manual QA%';

-- 11. Вывести имена и должность автоматизаторов QA
select employees.employee_name, roles_1.role_name 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id 
where roles_1.role_name like '%Automation QA%';

-- 12. Вывести имена и зарплаты Junior специалистов
select employees.employee_name, roles_1.role_name,salary_2.mounthly_salary
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%Junior%';
-- 13. Вывести имена и зарплаты Middle специалистов
select employees.employee_name, roles_1.role_name,salary_2.mounthly_salary
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%Middle%' ;

-- 14. Вывести имена и зарплаты Senior специалистов
select employees.employee_name, roles_1.role_name,salary_2.mounthly_salary
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%Senior%';

-- 15. Вывести зарплаты Java разработчиков
select salary_2.mounthly_salary,roles_1.role_name 
from employees
join roles_employee on employees.id_1 =roles_employee.employee_id
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%Java developer%';

-- 16. Вывести зарплаты Python разработчиков
select salary_2.mounthly_salary,roles_1.role_name 
from employees
join roles_employee on employees.id_1 =roles_employee.employee_id
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%Python developer%';

-- 17. Вывести имена и зарплаты Junior Python разработчиков
select employees.employee_name,salary_2.mounthly_salary,roles_1.role_name 
from employees
join roles_employee on employees.id_1 =roles_employee.employee_id
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like 'Junior Python developer';

-- 18. Вывести имена и зарплаты Middle JS разработчиков
select employees.employee_name,salary_2.mounthly_salary,roles_1.role_name 
from employees
left join roles_employee on employees.id_1 =roles_employee.employee_id
left join roles_1 on roles_1.id_1 =roles_employee.role_id
left join employee_salary on employees.id_1=employee_salary.employee_id_1 
left join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like 'Middle JavaScript developer';

-- 19. Вывести имена и зарплаты Senior Java разработчиков
select employees.employee_name,salary_2.mounthly_salary,roles_1.role_name 
from employees
left join roles_employee on employees.id_1 =roles_employee.employee_id
left join roles_1 on roles_1.id_1 =roles_employee.role_id
left join employee_salary on employees.id_1=employee_salary.employee_id_1 
left join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like 'Senior Java developer';

-- 20. Вывести зарплаты Junior QA инженеров
select salary_2.mounthly_salary,roles_1.role_name 
from employees
join roles_employee on employees.id_1 =roles_employee.employee_id
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%Junior%QA engineer%';

-- 21. Вывести среднюю зарплату всех Junior специалистов
select avg(salary_2.mounthly_salary)
from employees 
left join roles_employee on employees.id_1 =roles_employee.employee_id 
left join roles_1 on roles_1.id_1 =roles_employee.role_id
left join employee_salary on employees.id_1=employee_salary.employee_id_1 
left join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%Junior%';

-- 22. Вывести сумму зарплат JS разработчиков
select sum(salary_2.mounthly_salary)
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%JavaScript developer%';

-- 23. Вывести минимальную ЗП QA инженеров
select min(salary_2.mounthly_salary)
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%QA%';

-- 24. Вывести максимальную ЗП QA инженеров
select max(salary_2.mounthly_salary)
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%QA%';

-- 25. Вывести количество QA инженеров
select count(roles_1.role_name)
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%QA%';

-- 26. Вывести количество Middle специалистов.
select count(roles_1.role_name)
from employees 
left join roles_employee on employees.id_1 =roles_employee.employee_id 
left join roles_1 on roles_1.id_1 =roles_employee.role_id
left join employee_salary on employees.id_1=employee_salary.employee_id_1 
left join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like 'Middle%';

-- 27. Вывести количество разработчиков
select count(roles_1.role_name)
from employees 
left join roles_employee on employees.id_1 =roles_employee.employee_id 
left join roles_1 on roles_1.id_1 =roles_employee.role_id
left join employee_salary on employees.id_1=employee_salary.employee_id_1 
left join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%developer%';

-- 28. Вывести фонд (сумму) зарплаты разработчиков.
select sum(salary_2.mounthly_salary)
from employees 
left join roles_employee on employees.id_1 =roles_employee.employee_id 
left join roles_1 on roles_1.id_1 =roles_employee.role_id
left join employee_salary on employees.id_1=employee_salary.employee_id_1 
left join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where roles_1.role_name like '%developer%';

-- 29. Вывести имена, должности и ЗП всех специалистов по возрастанию
select employees.employee_name,roles_1.role_name,salary_2.mounthly_salary 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
order by salary_2.mounthly_salary asc;

-- 30. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП от 1700 до 2300
select employees.employee_name,roles_1.role_name,salary_2.mounthly_salary 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where salary_2.mounthly_salary between 1700 and 2300 
order by salary_2.mounthly_salary asc;

-- 31. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП меньше 2300
select employees.employee_name,roles_1.role_name,salary_2.mounthly_salary 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where salary_2.mounthly_salary <2300
order by salary_2.mounthly_salary asc;

-- 32. Вывести имена, должности и ЗП всех специалистов по возрастанию у специалистов у которых ЗП равна 1100, 1500, 2000
select employees.employee_name,roles_1.role_name,salary_2.mounthly_salary 
from employees 
join roles_employee on employees.id_1 =roles_employee.employee_id 
join roles_1 on roles_1.id_1 =roles_employee.role_id
join employee_salary on employees.id_1=employee_salary.employee_id_1 
join salary_2 on employee_salary.salary_id_1 = salary_2.id_1 
where salary_2.mounthly_salary in (1100,1500,2000)
order by salary_2.mounthly_salary asc;
