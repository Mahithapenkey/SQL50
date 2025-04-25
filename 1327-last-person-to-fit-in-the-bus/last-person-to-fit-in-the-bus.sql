# Write your MySQL query statement below
with tempt as (select person_name,turn,sum(weight) 
 over(order by turn) as Total_Weight
from Queue)
select person_name from tempt
where Total_weight<=1000
order by Total_weight desc
limit 1;