select * from film where length > (select max(length) from film);

select * from film where rental_rate = (select max(rental_rate) from film);

select * from film where rental_rate = (select min(rental_rate) from film) and replacement_cost = (select min(replacement_cost) from film);

select customer_id from payment group by customer_id having count(*) >= all(select count(*) from payment group by customer_id);