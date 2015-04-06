--------------------------------------------------------------------------------
--Example #24: What is the average weight of the tallest males/females?
--------------------------------------------------------------------------------
select c.*
     , dense_rank() over (partition by c.gender
                              order by c.height) as height_denserank
     , avg(c.weight) keep (dense_rank last order by c.height)
                     over (partition by c.gender) as avg_wt
  from childstat c
;
