/*取出payment的所有客戶的coutomer_id(不重覆)*/
SELECT customer_id, COUNT(*) AS 筆數
FROM payment
GROUP BY customer_id

/*取出payment的所有客戶的應收帳款總和,SUM()*/
SELECT customer_id, SUM(amount) AS 總和
FROM payment
GROUP BY customer_id
ORDER BY 總和 DESC;

SELECT first_name, SUM(amount) AS 總和
FROM payment LEFT JOIN customer ON payment.payment_id = customer.customer_id
GROUP BY first_name
ORDER BY 總和 DESC;

SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer ON payment.customer_id=customer.customer_id
GROUP BY full_name
ORDER BY 總合 DESC;

SELECT first_name || ' ' || last_name AS full_name,
	   SUM(amount) AS 總合
FROM payment LEFT JOIN customer USING (customer_id)
GROUP BY full_name
ORDER BY 總合 DESC;
