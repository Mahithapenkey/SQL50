# Write your MySQL query statement below
select DATE_FORMAT(trans_date,"%Y-%m") month,country,count(*) as trans_count,
SUM(CASE 
WHEN state='approved' then 1
else 0
END) as approved_count,
sum(amount) as trans_total_amount,
sum(case when state='approved' then amount
else 0
end) as approved_total_amount
FROM Transactions
group by month,country;