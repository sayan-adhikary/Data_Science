-- Deep Dive into Constraints

CREATE TABLE accounts (
id INT,
 balance DECIMAL(10,2) CHECK (balance >= 0)
);
select*from accounts;
insert into accounts value(1,10.34);