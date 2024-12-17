'''
Simple group by and join, however be careful about join on year = 2019. 
Do not try to use "where year = 2019", bc in the final result, need to report all users count, even is 0

Logic:
  same as pandas logic, select 2019 data first, and then join
'''


select 
  user_id as buyer_id, 
  join_date, 
  count(order_id) as orders_in_2019 
from users u 
left join orders o on o.buyer_id = u.user_id and year(order_date) = '2019'
group by 1,2
