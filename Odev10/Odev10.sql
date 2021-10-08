select city.city , country.country from country 
left join city
on country.country_id = city.country_id

select payment.payment_id , customer.first_name , customer.last_name from customer
right join payment 
on customer.customer_id = payment.customer_id

select rental.rental_id , customer.first_name , customer.last_name from customer
full join rental 
on customer.customer_id = rental.customer_id
where customer.last_name IS NULL
