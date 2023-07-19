--1. How many actors are there with the last name ‘Wahlberg’?
select first_name,LAST_NAME
from actor 
where LAST_NAME = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
select COUNT(AMOUNT)
from PAYMENT
where AMOUNT between 3.99 and 5.99

--3. What film does the store have the most of? (search in inventory)
select film_id, COUNT(film_ID)
from INVENTORY
group BY film_id 
order by count desc;

--4. How many customers have the last name ‘William’?
select LAST_NAME
from customer 
where LAST_NAME = 'William';

--5. What store employee (get the id) sold the most rentals?
select staff_id, count(rental_id)
from rental
group BY staff_id 
order by staff_id desc;

--6. How many different district names are there?
select count(distinct district)
from address 

--7. What film has the most actors in it? (use film_actor table and get film_id)
select count(actor_id), film_id
from film_actor 
group by film_id
order by count(actor_id) desc;

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select COUNT(last_name)
from customer
where last_name like '%es'

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers 
-- with ids between 380 and 430? (use group by and having > 250)
select 
from payment 
group by amount > 250
order by amount


--10. Within the film table, how many rating categories are there? And what rating has the most movies total?
select rating, count(rating)
from film 









