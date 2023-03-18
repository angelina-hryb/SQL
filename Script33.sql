create table salary(
id serial primary key,
mounthly_salary int not null
);
select * from salary;

create table roles (
id serial primary key,
role_title varchar (50) unique not null
);
select * from roles;
create table roles_salary (
id serial primary key,
id_role int not null,
id_salary int not null,
foreign key (id_role)
references roles(id),
foreign key (id_salary)
references salary(id)
);
select * from roles_salary;

insert into roles_salary (id_role,id_salary )
values
(1,1),
(2,2),
(3,6),
(4,2),
(5,4),
(6,10),
(7,5);

select * from roles_salary;
select * from roles;
select * from salary;

insert into salary(mounthly_salary)
values 
(300),
(800),
(1100),
(1200),
(1300),
(1400),
(1500),
(1600),
(1700),
(1800),
(2000);
select * from salary


insert into roles (role_title)
values ('QA_manual_junior'),
('QA_manual_middle'),
('QA_manual_senior'),
('Java_developer_junior'),
('Java_developer_middle'),
('Java_developer_senior'),
('Manager');
select * from roles;