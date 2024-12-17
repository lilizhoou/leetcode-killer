
'''
  First intuition (aka solution 1)
  use union to combine 2 contrains, it works, but i overcomplicated this.
'''

select distinct a.account_id from loginfo a join loginfo b on a.account_id = b.account_id and a.login <= b.login and b.login <= a.logout and a.ip_address != b.ip_address

union 

select distinct a.account_id from loginfo a join loginfo b on a.account_id = b.account_id and a.login <= b.logout and b.logout <= a.logout and a.ip_address != b.ip_address



'''
Solution 2 
  the easiest way i find to understand the logic is to draw a graph, to understand how to makesure it always has overlap.
'''

select 
  distinct a.account_id from loginfo a 
  join loginfo b 
  on a.account_id = b.account_id 
  and a.ip_address != b.ip_address
  and b.login <= a.logout and b.logout >= a.login
