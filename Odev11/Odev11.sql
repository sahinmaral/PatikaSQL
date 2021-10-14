(
	select first_name from actor
)
UNION ALL
(
	select first_name from customer
);

(
	select first_name from actor
)
INTERSECT ALL
(
	select first_name from customer
);

(
	select first_name from actor
)
EXCEPT ALL
(
	select first_name from customer
);
