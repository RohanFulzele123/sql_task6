create table customer(
	id int,
	customre_id varchar,
	First_Name varchar,
	Last_Name varchar,
	company varchar,
	City varchar,
	Country varchar,
	Phone_1 varchar,
	Phone_2 varchar,
	Email varchar,
	website varchar
)

select * from customer

copy customer from 'D:\ACR INSTITUTE\SQL\SHOP SQL\1000 Data/customers-1000.csv' DELIMITER ',' CSV header 

select * from customer

create table organization (
	id int,
	Organization_Id varchar,
	name varchar,
	Website varchar,
	country varchar,
	Description varchar,
	Founded int,
	Industry varchar,
	Number_of_employees varchar
)

select * from organization

copy organization from 'D:\ACR INSTITUTE\SQL\SHOP SQL\1000 Data/organizations-1000.csv' DELIMITER ',' CSV header

select * from organization

create table units (
	user_id varchar,
	First_name varchar,
	last_name varchar,
	sex varchar,
	email varchar,
	Job_Title varchar,
	sales int,
	quantity int
)

select * from units

select * from customer

select * from organization

	--inner join
select c.country, c.email, o.country from customer as c
inner join organization as o
on c.country = o.country

-- left join--

select c.country, c.email, c.company,o.description from customer as c
left join organization as o
on c.country = o.country
group by c.country, c.email, c.company,o.description


--right join--

select c.country, c.email, c.company,o.description from customer as c
right join organization as o
on c.country = o.country
limit 500 offset 100

--full join--

select c.country, c.email, c.company, o.description, o.industry from customer as c
full join organization as o 
on c.country = o.country
order by country desc 
limit 600 offset 50

--intersect--

select * from organization where founded > 2000
intersect
select * from organization where founded between 2000 and 2010

--except--

select * from organization where founded > 2000
except
select * from organization where founded between 2000 and 2020

--union--

select * from organization where founded between 2000 and 2005
union 
select * from organization where founded < 2000

--end--
