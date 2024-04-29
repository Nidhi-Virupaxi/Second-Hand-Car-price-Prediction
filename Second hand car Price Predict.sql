-- use database--
use cars;
SELECT * FROM cars.car_dekho;
-- Q1=total cars to get a count of total records--
select count(*) from car_dekho; #7927
--  Q2=the manager asked the employee how many cars will be available in 2023--
select count(*) from car_dekho where year=2023; #6
--  Q3=the manager asked the employee how many cars will be available in 2020,2021,2022--
select year,count(*) from car_dekho where year in(2020,2021,2022) group by year; #74,7,7
-- Q4= client asked me to print the total of all cars by year i dont see all the details---
select year,count(*) from car_dekho group by year;
-- Q5=client asked to car dealer agent how many diesel cars will ther be in 2020?--
select count(*) from car_dekho where fuel="diesel" and year=2020; #20
-- Q6=client requested a car dealer agent how many petrol cars are available in 2020--
select count(*) from car_dekho where fuel="petrol" and year=2020; #51
-- Q7=the manager told the employee to give a print all te fuel cars(petrol,diesel,cng) come by all year--
select year,count(*) from car_dekho where fuel="petrol" group by year;
select year,count(*) from car_dekho where fuel="Diesel" group by year;
select year,count(*) from car_dekho where fuel="cng" group by year;
-- Q8=manager said there were more than 100 cars in a given year ,which year had more than 100 cars?--
select year,count(*) from car_dekho group by year having count(*)>100;
select year,count(*) from car_dekho group by year having count(*)<100;
-- Q9=the manager said to the employee all cars count details between 2015 and 2023, we need a complete list--
select count(*) from car_dekho where year between 2015 and 2023; #4124
-- Q10=the manager said to the employee all cars details between 2015 and 2023,we need complete list--
select * from car_dekho where year between 2015 and 2023;
