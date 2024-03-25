use swiggy;

#Q1
select count(distinct restaurant_name)
from swiggy 
where rating>4.5;

#Q2
select city , count(distinct restaurant_name) as restaurant_count from swiggy
group by city
order by restaurant_count desc
limit 1;

#Q3
select count(distinct restaurant_name) as Restaurant_count 
from swiggy
where restaurant_name like "%Pizza%";

#Q4
select cuisine, count(*) as Cuisine_Count
from swiggy
group by cuisine 
order by Cuisine_Count desc
limit 1;

#Q5
select city, avg(rating) as avg_rating
from swiggy group by city;

#Q6
select distinct restaurant_name,menu_category,max(price) as highest_price
from swiggy where menu_category='Recommended'
group by restaurant_name,menu_category;

#Q7
select distinct restaurant_name,cost_per_person
from swiggy where cuisine!='Indian'
order by cost_per_person desc
limit 5;

#Q8
select distinct restaurant_name, cost_per_person 
from swiggy where cost_per_person>(select avg(cost_per_person) from swiggy);


