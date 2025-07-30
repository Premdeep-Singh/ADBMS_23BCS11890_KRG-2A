-- 175. Combine Two Tables
-- Write a solution to report the first name, last name, city, and state of each person in the Person table.
-- If the address of a personId is not present in the Address table, report null instead.

SELECT firstName, lastName, city, state FROM
Person as P
    LEFT JOIN
Address as A
    ON
P.personId = A.personID
