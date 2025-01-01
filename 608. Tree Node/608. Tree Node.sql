
'''
Logic:
  root: no p_id 
  inner : has p_id and left join not null 
  leaf: has p_id and left join is null 
'''

  -- Solution
  
select id, 'Root' as type from Tree where p_id is null

union 

select a.id, 
case 
  when b.p_id is null then 'Leaf'
  when b.p_id is not null then 'Inner'
end as type

from Tree a left join Tree b on a.id = b.p_id where a.p_id is not null
