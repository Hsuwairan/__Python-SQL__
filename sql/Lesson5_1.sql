DROP TABLE IF EXISTS 聯絡人;
DROP TABLE IF EXISTS 客戶;

CREATE TABLE IF NOT EXISTS 客戶(
	客戶_id SERIAL,
	客戶名稱 VARCHAR(255) NOT NULL,
	PRIMARY KEY(客戶_id)
);

DROP TABLE IF EXISTS 聯絡人;

CREATE TABLE IF NOT EXISTS 聯絡人(
	聯絡人id SERIAL,
	客戶id INT,
	聯絡人姓名 VARCHAR(255) NOT NULL,
	電話 VARCHAR(25),
	郵件 VARCHAR(100),
	PRIMARY KEY(聯絡人id),
	FOREIGN KEY(客戶id) REFERENCES 客戶(客戶_id)
);

INSERT INTO 客戶(客戶名稱)
VALUES('遠傳電信'),
	  ('台灣大哥大')
	  
INSERT INTO 聯絡人(客戶id,聯絡人姓名,電話,郵件)
VALUES(1,'james','02-29834762','789456@gmail.com'),
	  (2,'wairan','02-22592140','James_Hsu@gmail.com'),
	  (2,'1234','02-1234567582','1234@@gmail.com');
	  
DELETE FROM 客戶
WHERE 客戶_id = 1