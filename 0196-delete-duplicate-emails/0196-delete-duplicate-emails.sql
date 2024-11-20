# Write your MySQL query statement below
DELETE FROM Person
WHERE id NOT IN (
    SELECT MIN(id)
    FROM (
        SELECT id, email
        FROM Person
    ) AS subquery
    GROUP BY email
);

