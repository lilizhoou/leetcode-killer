''' Understand LEAD() and LAG() 
Difficulty : Easy 
LeetCode Link：https://leetcode.com/problems/consecutive-available-seats/description/
'''


select
seat_id from 
(
    select 
      seat_id,
      free,
      lag(free) over(order by seat_id) as next,
      lead(free) over(order by seat_id) as pre
    from cinema 
) k 

where free = 1 and (next = free or pre =free)
order by seat_id

''' for lead and lag, if not easy to imaging, draw a table on paper is very helpful'
