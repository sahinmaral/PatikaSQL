-- film tablosundan 'K' karakteri ile başlayan en uzun ve replacenet_cost u en düşük 4 filmi
select * from film where title like 'K%' order by length desc , replacement_cost asc limit 4;

-- film tablosunda isminde en az 4 adet 'e' veya 'E' karakteri bulunan film sayısı
select count(*) from film where title ilike '%e%e%e%e%';

-- category tablosundan kategori isimlerini ve kategori başına düşen film sayıları
select distinct(category.name) , count(*)
from film_category
inner join category on film_category.category_id = category.category_id
inner join film on film_category.film_id = film.film_id
group by category.name;

-- film tablosunda içerisinden en fazla sayıda film bulunduran rating kategorisi
select rating , count(*) from film group by rating order by count desc limit 1;

-- customer tablosunda en çok alışveriş yapan müşterinin adı
select first_name , last_name from customer where customer_id = (select customer_id from payment group by customer_id order by count(*) desc limit 1);