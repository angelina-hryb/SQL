create table City(
id serial,
title varchar (50)
);
create table Person(
id serial,
person_name varchar (50),
city_id int
);
	  

	  select * from Person;
	  
	 insert into City (title)
	 values ('Berlin'),
	 ('Tokio'),
	 ('Minsk'),
	 ('Paris'),
	 ('Roma');
	 
	 insert into Person (person_name,city_id)
	 values 
	 ('Victor',1),
	 ('Elena',2),
	 ('Anna',3),
	 ('Vadim',4),
	 ('Ivan',7),
	 ('Irina',9);
	 
	select * from 
	Person inner join City
	on Person.city_id=City.id;


select person_name,title, city_id, city.id from 
	Person inner join City
	on Person.city_id=City.id;

select person_name, city_id,title, city.id from 
	Person left join City
	on Person.city_id=City.id;

select person_name, city_id,title, city.id from 
	Person right join City
	on Person.city_id=City.id;
	
select person_name, city_id,title, city.id from 
	Person full outer join City
	on Person.city_id=City.id;

select person_name, city_id,title, city.id from 
	Person cross join City;


