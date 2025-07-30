-- 1587. Bank Account Summary
-- Write a solution to report the name and balance of users with a balance higher than 10000. 
-- The balance of an account is equal to the sum of the amounts of all transactions involving that account.

# Write your MySQL query statement below
SELECT NAME, SUM(amount) as BALANCE  FROM
Users as U
    JOIN 
Transactions as T
    on 
U.account = T.account
GROUP BY U.account
HAVING BALANCE > 10000
