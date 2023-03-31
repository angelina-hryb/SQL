https://www.sql-ex.ru/- Упражнения по SQL:

1) Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
SELECT model, speed, hd
FROM pc
WHERE price < 500
2) Найдите производителей принтеров. Вывести: maker
select distinct maker from product
where type = 'Printer'
3) Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
select model,ram, screen from laptop
where price > 1000
4) Найдите все записи таблицы Printer для цветных принтеров.
select * from printer
where color = 'y'

5) Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
select model,speed,hd from pc
where cd in ('12x','24x') and price <600

6) Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
Select distinct maker,speed from product 
join laptop on product.model=laptop.model
where hd>=10

7) Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
SELECT product.model, laptop.price FROM laptop JOIN product ON product.model=laptop.model  
where product.maker ='B'
UNION
SELECT product.model,pc.price FROM pc JOIN product on product.model=pc.model
where product.maker ='B'
UNION
SELECT product.model,printer.price FROM printer JOIN product on product.model=printer.model
where product.maker ='B'


https://www.w3schools.com/sql/exercise.asp

1)Use the NOT keyword to select all records where City is NOT "Berlin".
SELECT * FROM Customers
WHERE NOT City = 'Berlin';

2)Select all records where the CustomerID column has the value 32.
SELECT * FROM Customers
WHERE CustomerID = 32;

3)Select all records where the City column has the value 'Berlin' and the PostalCode column has the value 12209.
SELECT * FROM Customers
WHERE City = 'Berlin'
AND PostalCode = 12209;

4)Select all records where the City column has the value 'Berlin' or 'London'.
SELECT * FROM Customers
WHERE City = 'Berlin'
OR City = 'London';

5)Select all records from the Customers table, sort the result alphabetically by the column City.
SELECT * FROM Customers
ORDER BY City;

6)Select all records from the Customers table, sort the result reversed alphabetically by the column City.
SELECT * FROM Customers
ORDER BY City DESC;

7)Select all records from the Customers table, sort the result alphabetically, first by the column Country, then, by the column City.
SELECT * FROM Customers
ORDER BY Country, City;

8)Insert a new record in the Customers table.
INSERT INTO Customers 
(CustomerName, 
Address, 
City, 
PostalCode,
Country)
VALUES('Hekkan Burger',
'Gateveien 15',
'Sandnes',
'4306',
'Norway');

9)Select all records from the Customers where the PostalCode column is empty.
SELECT * FROM Customers
WHERE PostalCode
IS NULL;

10)Select all records from the Customers where the PostalCode column is NOT empty.
SELECT * FROM Customers
WHERE PostalCode
IS NOT NULL;
