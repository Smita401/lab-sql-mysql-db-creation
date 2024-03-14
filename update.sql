-- To begin, you have been provided with the email addresses of three customers in the form of a table. 
-- Your task is to create an update.sql file that will update the existing data in your database with the new email addresses.


SET SQL_SAFE_UPDATES = 0;

UPDATE CUSTOMERS
SET cust_email = CASE 
                    WHEN cust_name = 'Pablo Picasso' THEN 'ppicasso@gmail.com'
                    WHEN cust_name = 'Abraham Lincoln' THEN 'lincoln@us.gov'
                    WHEN cust_name = 'Napoléon Bonaparte' THEN 'hello@napoleon.me'
                    ELSE cust_email
                END
WHERE cust_name IN ('Pablo Picasso', 'Abraham Lincoln', 'Napoléon Bonaparte');
