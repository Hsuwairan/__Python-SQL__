CREATE TABLE IF NOT EXISTS student(
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	major VARCHAR(20),
	score INT
);

INSERT INTO student VALUES(1,'小白','英文',50);
INSERT INTO student VALUES(2,'小黃','生物',09);
INSERT INTO student VALUES(3,'小綠','歷史',70);
INSERT INTO student VALUES(4,'小藍','英文',80);
INSERT INTO student VALUES(5,'小黑','化學',20);

SELECT *
FROM student