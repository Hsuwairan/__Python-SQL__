/*全省各站點2022年進站總人數*/
SELECT 名稱, SUM(amount) AS 總和
FROM payment
GROUP BY customer_id
ORDER BY 總和 DESC;