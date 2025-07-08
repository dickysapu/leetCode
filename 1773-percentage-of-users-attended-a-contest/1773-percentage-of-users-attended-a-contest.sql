# Write your MySQL query statement below
SELECT
  r.contest_id,
  ROUND(COUNT(DISTINCT r.user_id) * 100.0 / (SELECT COUNT(*) FROM Users), 2) AS percentage
FROM 
  Register r
group by
r.contest_id
order by
percentage DESC,
r.contest_id ASC
