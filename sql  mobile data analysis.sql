create schema sql_analysis;
use sql_analysis;
select * from mobile;
-- checking mobile features and price list --
select phone_name, price from mobile;

-- price of 5 most expensive phones --
select * from mobile
order by price desc
limit 5;

-- price of 5 most cheapest phone --
select * from mobile
order by price asc
limit 5;

-- list of top 5 samsung phones with price and all features --
select * from mobile
where phone_name like 'samsung%'
order by price desc
limit 5;

-- must have android phone list top 5 high price android phones --
select * from mobile where Operating_System_Type = "AndroId"
order by price desc
limit 5;

--  Top 5 Android phones that have cheapest price --
select * from mobile 
where operating_system_type = 'android'
order by price asc
limit 5;

-- top 5 ios phones with highest price --
select * from mobile 
where operating_system_type = 'ios'
order by price desc
limit 5;

-- top 5 ios phones with lowest price --
select * from mobile 
where operating_system_type = 'ios'
order by price asc
limit 5;

-- top 5 phones with 5g avaliability --
select * from mobile
where 5G_Availability = "Yes"
order by price desc
limit 5

-- total price of all mobile is to be found with brand names --
select brands , sum(price) from mobile
group by brands
order by sum(price) desc;


