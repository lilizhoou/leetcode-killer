''' 
Difficulty: Hard
Leetcode link: https://leetcode.com/problems/trips-and-users/description/ 

Find Cancellation Rate 

Hint: if(filter,1,0) 
'''

-- Solution 1 - with join 

select 
  request_at as Day,
  round( sum(if (status != 'completed',1,0)) / count(status),2 ) as 'Cancellation Rate'
from trips t 
    join users u1 on u1.users_id = t.client_id
    join users u2 on u2.users_id = t.driver_id
where u1.banned = 'No'and  u2.banned = 'No'and  request_at BETWEEN '2013-10-01' AND '2013-10-03'
group by request_at 

======
  
-- solution 2 - without join 
select 
  request_at as Day, 
  round( sum(if (status != 'completed' ,1,0))  / count(status),2) as 'Cancellation Rate'  
from trips 
where client_id not in (select users_id from users where role = 'client' and banned = 'Yes' ) 
    and driver_id not in (select users_id from users where role = 'driver' and banned = 'Yes' )
    and request_at BETWEEN '2013-10-01' AND '2013-10-03'
group by request_at 

