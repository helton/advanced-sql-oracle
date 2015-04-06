--------------------------------------------------------------------------------
--Example #23: What is the average weight of the shortest males/females?
--------------------------------------------------------------------------------
select c.*
     , dense_rank() over (partition by c.gender
                              order by c.height) as height_denserank
     , avg(c.weight) keep (dense_rank first order by c.height)
                     over (partition by c.gender) as avg_wt
  from childstat c
;
