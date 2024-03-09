CREATE TABLE IF NOT EXISTS city(
	id SERIAL,
	name VARCHAR(30),
	population INT,
	PRIMARY KEY(id)
);

DROP TABLE city;

SELECT *
FROM city;