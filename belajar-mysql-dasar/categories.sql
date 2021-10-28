CREATE TABLE categories (
    id VARCHAR(10) NOT NULL,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
)  ENGINE=INNODB;

DESCRIBE categories;

ALTER TABLE products
DROP COLUMN category;

DESCRIBE products;

ALTER TABLE products
ADD COLUMN id_category VARCHAR(10);

ALTER TABLE products
ADD CONSTRAINT fk_products_categories
FOREIGN KEY (id_category) REFERENCES categories(id);

SHOW CREATE TABLE products;

SELECT 
    *
FROM
    products;

SELECT 
    *
FROM
    categories;

INSERT INTO categories(id, name)
VALUES 	('C0001', 'Makanan'),
		('C0002', 'Minuman'),
        ('C0003', 'Lain-lain');
        
UPDATE products 
SET 
    id_category = 'C0001'
WHERE
    id IN ('P0001' , 'P0002',
        'P0003',
        'P0004',
        'P0005',
        'P0006',
        'P0013',
        'P0014',
        'P0015');        

UPDATE products 
SET 
    id_category = 'C0002'
WHERE
    id IN ('P0007' , 'P0008', 'P0009');

UPDATE products 
SET 
    id_category = 'C0002'
WHERE
    id IN ('P0010' , 'P0011', 'P0012', 'P0016');

SELECT 
    p.id, p.name, c.name
FROM
    products AS p
        JOIN
    categories AS c ON (c.id = p.id_category);