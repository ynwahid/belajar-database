CREATE TABLE guestbooks (
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) NOT NULL,
    title VARCHAR(200) NOT NULL,
    content TEXT,
    PRIMARY KEY (id)
)  ENGINE=INNODB;

SELECT 
    *
FROM
    customers;

INSERT INTO guestbooks(email, title, content)
VALUES ('guest@gmail.com', 'Hello', 'Hello'),
	   ('guest2@gmail.com', 'Hello', 'Hello'),
	   ('guest3@gmail.com', 'Hello', 'Hello'),
	   ('ucup@gmail.com', 'Hello', 'Hello'),
	   ('ucup@gmail.com', 'Hello', 'Hello'),
	   ('ucup@gmail.com', 'Hello', 'Hello');
       
SELECT 
    *
FROM
    guestbooks;

SELECT 
    email
FROM
    customers 
UNION SELECT 
    email
FROM
    guestbooks;

SELECT 
    emails.email, COUNT(emails.email)
FROM
    (SELECT 
        email
    FROM
        customers UNION ALL SELECT 
        email
    FROM
        guestbooks) AS emails
GROUP BY emails.email;


SELECT DISTINCT
    email
FROM
    customers
WHERE
    email IN (SELECT DISTINCT
            email
        FROM
            guestbooks);

SELECT DISTINCT
    customers.email
FROM
    customers
        INNER JOIN
    guestbooks ON (guestbooks.email = customers.email);
    
SELECT DISTINCT
    customers.email AS customers_email,
    guestbooks.email AS guestbooks_email
FROM
    customers
        LEFT JOIN
    guestbooks ON (customers.email = guestbooks.email)
WHERE
    guestbooks.email IS NULL;
    
START TRANSACTION;

INSERT INTO guestbooks(email, title, content)
VALUES ('contoh@gmail.com', 'Contoh', 'Contoh'),
	   ('contoh2@gmail.com', 'Contoh', 'Contoh'),
	   ('contoh3@gmail.com', 'Contoh', 'Contoh');

SELECT 
    *
FROM
    guestbooks;

COMMIT;

START TRANSACTION;

DELETE FROM guestbooks;

SELECT 
    *
FROM
    guestbooks;

ROLLBACK;