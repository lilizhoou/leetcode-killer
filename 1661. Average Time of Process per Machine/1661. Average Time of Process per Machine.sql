''' Difficulty : Easy
    Leetcode Link: https://leetcode.com/problems/average-time-of-process-per-machine/description/ '''

''' 2 ways to solve this problem, both are great, helping understand JOIN and CASE WHEN '''


# solution 1 - multiple CTE with CASE WHEN 

with cte as (

    select *, 
    round(sum(case when activity_type = 'start' then timestamp end),3)  as start,
    round(sum(case when activity_type = 'end' then timestamp end),3) as end
    from activity 
    group by machine_id,process_id

)
,
cte2 as (
  select machine_id, process_id, (end - start) as time 
  from cte group by 1,2
)

select machine_id , round(avg(time),3) as processing_time from cte2 group by machine_id;

=====
  
# solution 2 - JOIN 


select 
  e.machine_id, 
  round(avg(e.timestamp - s.timestamp),3) as processing_time
from Activity e 
join Activity s
  on e.machine_id = s.machine_id and e.process_id = s.process_id 
  and e.activity_type = 'end' and s.activity_type = 'start'
group by e.machine_id ;
