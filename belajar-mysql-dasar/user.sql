CREATE USER 'ucup'@'localhost';
CREATE USER 'nur'@'%';

GRANT SELECT ON belajar_mysql.* TO 'ucup'@'localhost';
GRANT SELECT ON belajar_mysql.* TO 'nur'@'%';
GRANT INSERT, UPDATE, DELETE ON belajar_mysql.* TO 'nur'@'%';

SHOW GRANTS FOR 'ucup'@'localhost';
SHOW GRANTS FOR 'nur'@'%';

SET PASSWORD FOR 'ucup'@'localhost' = 'rahasia';
SET PASSWORD FOR 'nur'@'%' = 'rahasia';

INSERT INTO guestbooks(email, title, content)
VALUES ('contoh@gmail.com', 'Hello', 'Hello');

CREATE TABLE contoh (
    id INT NOT NULL,
    PRIMARY KEY (id)
)  ENGINE=INNODB;

DROP USER 'ucup'@'localhost';
DROP USER 'nur'@'%';