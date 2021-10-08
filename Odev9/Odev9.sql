select city.city , country.country from city 
inner join country 
on city.country_id = country.country_id;


select customer.first_name , customer.last_name , payment.payment_id from payment 
inner join customer 
on payment.customer_id = customer.customer_id;

select customer.first_name, customer.last_name , rental.rental_id from rental 
inner join customer 
on rental.customer_id = customer.customer_id;
