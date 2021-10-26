CREATE TABLE admin (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
)  ENGINE=INNODB;

DESCRIBE admin;

INSERT INTO admin(first_name, last_name)
VALUES 	('Yusuf', 'Wahid'),
		('Budi', 'Nugraha'),
		('Joko', 'Morro');
        
SELECT 
    *
FROM
    admin
ORDER BY id;

DELETE FROM admin 
WHERE
    id = 3;

INSERT INTO admin(first_name, last_name)
VALUES	('Joko', 'Morro');

SELECT LAST_INSERT_ID();

INSERT INTO admin(first_name, last_name)
VALUES	('Rully', 'Hidayat');

SELECT LAST_INSERT_ID();