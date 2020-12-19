CREATE DATABASE IF NOT EXISTS bank;

USE bank;

CREATE TABLE IF NOT EXISTS accounts(
account_id INT AUTO_INCREMENT PRIMARY KEY,
balance double,
account_type varchar(30),
date_opened datetime,
account_status varchar(30)
);

CREATE table IF NOT EXISTS transactions(
transaction_id int auto_increment primary key,
date_time datetime,
transaction_amount double,
remaining_balance double,
fk_account_id int
);

ALTER TABLE transactions ADD FOREIGN KEY (fk_account_id) references accounts(account_id);

INSERT into accounts(balance,account_type,date_opened,account_status)
values(1030.80,'Checking','20-07-17','Open');

INSERT into accounts(balance, account_type, date_opened, account_status)
values(649.38,'Savings','12-12-14','Open');

INSERT into accounts(balance,account_type,date_opened,account_status)
values(10000.67,'Checking', '99-04-20', 'Open');

INSERT into transactions(date_time,transaction_amount,remaining_balance, fk_account_id)
values('2001-10-23',234.12,1293.23,1), ('2013-05-30', 19.99, 362.34, 2), ('2000-05-30', 444.60, 1234.50, 3), ('2020-03-30', 46.99, 1003.56, 3), ('2018-02-8', 60.40, 17.68, 2);

SELECT balance, date_opened from accounts order by date_opened desc limit 2;

SELECT * from transactions where fk_account_id = 1;

UPDATE accounts set account_status = 'Open';

DELETE from transactions WHERE transaction_id = 1;


