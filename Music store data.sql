Q1.Who is the senior most employee based on job title
SELECT * FROM employee
ORDER BY levels desc
Limit 1

Q2.Which countries have the most invoices.
SELECT * FROM invoice
ORDER BY total desc
limit 3

Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals

SELECT sum(total) as invoice_total,billing_city
FROM invoice
Group by billing_city
ORDER BY invoice_total desc
limit 5

Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
Write a query that returns the person who has spent the most money.

select customer.customer_id, customer.first_name,customer.last_name,Sum(invoice.total) as total
from customer
JOIN invoice on customer.customer_id=invoice.customer_id
group by customer.customer_id
ORDER BY total desc
limit 1















































































