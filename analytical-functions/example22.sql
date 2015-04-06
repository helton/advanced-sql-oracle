--------------------------------------------------------------------------------
--Example #22: Use DENSE_RANK() on the height and partition by gender
--------------------------------------------------------------------------------
select c.*
     , dense_rank() over (partition by c.gender
                              order by c.height) as height_denserank
  from childstat c
;
