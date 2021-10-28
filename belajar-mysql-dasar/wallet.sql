CREATE TABLE wallet (
    id INT NOT NULL AUTO_INCREMENT,
    id_customer INT NOT NULL,
    balance INT NOT NULL DEFAULT 0,
    PRIMARY KEY (id),
    UNIQUE KEY id_customer_unique (id_customer),
    CONSTRAINT fk_wallet_customer FOREIGN KEY (id_customer)
        REFERENCES customers (id)
)  ENGINE=INNODB;

DESCRIBE wallet;

SELECT 
    *
FROM
    customers;

INSERT INTO wallet(id_customer) VALUES (1), (3);

SELECT 
    *
FROM
    wallet;
    
SELECT 
    c.email, w.balance
FROM
    wallet AS w
        JOIN
    customers AS c ON (w.id_customer = c.id);