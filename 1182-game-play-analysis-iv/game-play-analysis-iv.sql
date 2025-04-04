# Write your MySQL query statement below
select round(avg(b.event_date is not null),2) as fraction
from (select player_id,min(event_date) event_date from Activity
group by player_id) as a
    left join Activity b
on a.player_id = b.player_id and
datediff(a.event_date,b.event_date)=-1;
