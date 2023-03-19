CREATE table employees(
id_1 serial primary key,
employee_name varchar(50) not null
);
select * from employees;

INSERT into employees(employee_name)
values 
('Aaron'),
('Abraham'),
('Adam'),
('Adrian'),
('Aidan'),
('Alan'),
('Albert'),
('Alejandro'),
('Alex'),
('Alexander'),
('Alfred'),
('Andrew'),
('Angel'),
('Anthony'),
('Antonio'),
('Ashton'),
('Austin'),
('Benjamin'),
('Bernard'),
('Blake'),
('Brandon'),
('Brian'),
('Bruce'),
('Bryan'),
('Cameron'),
('Carl'),
('Christian'),
('Cyrus'),
('Caroline'),
('Daniel'),
('David'),
('Dennis'),
('Diego'),
('Donald'),
('Douglas'),
('Daisy'),
('Danielle'),
('Diana'),
('Dorothy'),
('Edward'),
('Elijah'),
('Francis'),
('Fred'),
('Fiona'),
('Gabriel'),
('George'),
('Gilbert'),
('Gregory'),
('Harold'),
('Harry'),
('Howard'),
('Helen'),
('Isabel'),
('Isaac'),
('Jack'),
('Jason'),
('Kevin'),
('Kaitlyn'),
('Lewis'),
('Lucas'),
('Martin'),
('Maria'),
('Molly'),
('Neil'),
('Nicole'),
('Oliver'),
('Olivia'),
('Philip'),
('Patrick'),
('Roger'),
('Steven');


CREATE table salary_2(
id_1 serial primary key,
mounthly_salary int not null
);
select * from salary_2;

INSERT into salary_2(mounthly_salary)
values
('1000'),
('1100'),
('1200'),
('1400'),
('1500'),
('1600'),
('1800'),
('2000'),
('2100'),
('2300'),
('2400'),
('2500'),
('2600'),
('2700'),
('2800');

CREATE table employee_salary(
id_1 serial primary key,
employee_id_1 int not null unique,
salary_id_1 int not null
);

select * from employee_salary;

INSERT into employee_salary(employee_id_1, salary_id_1)
values
(1,2),
(2,3),
(3,4),
(5,6),
(7,8),
(9,10),
(10,11),
(12,13),
(14,15),
(15,1),
(16,2),
(17,3),
(18,4),
(19,5),
(20,6),
(21,7),
(22,8),
(23,9),
(24,10),
(25,11),
(26,12),
(27,13),
(28,14),
(29,15),
(30,1),
(31,2),
(32,3),
(33,4),
(34,5),
(36,7),
(72,1),
(73,2),
(74,3),
(75,4),
(76,5),
(77,6),
(78,9),
(80,10),
(81,11),
(82,12);

CREATE table roles_1(
id_1 serial primary key,
role_name int not null unique
);
select * from roles_1;

alter table roles_1 ALTER column role_name type varchar(30);

INSERT into roles_1(role_name)
values
('Junior Python developer'),
('Middle Python developer'),
('Senior Python developer'),
('Junior Java developer'),
('Middle Java developer'),
('Senior Java developer'),
('Junior JavaScript developer'),
('Middle JavaScript developer'),
('Senior JavaScript developer'),
('Junior Manual QA engineer'),
('Middle Manual QA engineer'),
('Senior Manual QA engineer'),
('Project Manager'),
('Designer'),
('HR'),
('CEO'),
('Sales manager'),
('Junior Automation QA engineer'),
('Middle Automation QA engineer'),
('Senior Automation QA engineer');

CREATE table roles_employee(
id_1 serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key (employee_id)
references employees(id_1),
foreign key (role_id)
references roles_1(id_1)
);
select * from roles_employee;

INSERT into roles_employee(employee_id, role_id)
values
(1,2),
(2,4),
(3,9),
(4,13),
(5,6),
(6,14),
(7,9),
(8,13),
(9,3),
(10,9),
(11,7),
(12,2),
(13,4),
(14,6),
(15,8),
(16,10),
(17,12),
(18,13),
(19,15),
(20,1),
(21,7),
(22,8),
(23,9),
(24,10),
(25,11),
(26,12),
(27,13),
(28,14),
(29,15),
(30,1),
(31,2),
(32,3),
(33,4),
(34,5),
(36,7),
(37,8),
(38,9),
(39,10),
(40,15);
