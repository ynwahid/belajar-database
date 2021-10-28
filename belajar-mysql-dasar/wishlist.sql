CREATE TABLE wishlist (
    id INT NOT NULL AUTO_INCREMENT,
    id_product VARCHAR(10) NOT NULL,
    description TEXT,
    PRIMARY KEY (id),
    CONSTRAINT fk_wishlist_product FOREIGN KEY (id_product)
        REFERENCES products (id)
)  ENGINE=INNODB;

DESC wishlist;

SHOW CREATE TABLE wishlist;

ALTER TABLE wishlist
DROP CONSTRAINT fk_wishlist_product;

ALTER TABLE wishlist
	ADD CONSTRAINT fk_wishlist_product
		FOREIGN KEY (id_product) REFERENCES products (id)
			ON DELETE CASCADE ON UPDATE CASCADE;
        
INSERT INTO wishlist(id_product, description)
VALUES ('P0001', 'Makanan Kesukaan');

INSERT INTO wishlist(id_product, description)
VALUES ('SALAH', 'Makanan Kesukaan');

SELECT * FROM wishlist;

DELETE FROM products 
WHERE
    id = 'Pxxxx';
    
INSERT INTO wishlist(id_product, description)
VALUES ('Pxxxx', 'Makanan Kesukaan');

SELECT 
    *
FROM
    wishlist
        JOIN
    products ON (wishlist.id_product = products.id);

SELECT 
    w.id AS id_wishlist,
    p.id AS id_product,
    p.name AS product_name,
    w.description AS wishlist_description
FROM
    wishlist AS w
        JOIN
    products AS p ON (w.id_product = p.id);
    
DESCRIBE wishlist;

ALTER TABLE wishlist
ADD COLUMN id_customer INT;

ALTER TABLE wishlist
ADD CONSTRAINT fk_wishlist_customer
FOREIGN KEY (id_customer) REFERENCES customers (id);

SELECT 
    *
FROM
    customers;

UPDATE wishlist 
SET 
    id_customer = 1
WHERE
    id = 1;
    
SELECT 
    *
FROM
    wishlist;
    
SELECT 
    c.email, p.id, p.name, w.description
FROM
    wishlist AS w
        JOIN
    products AS p ON (w.id_product = p.id)
        JOIN
    customers AS c ON (w.id_customer = c.id);