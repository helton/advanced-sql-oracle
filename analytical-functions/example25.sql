--------------------------------------------------------------------------------
--Example #25: Determine the median weight by gender
--------------------------------------------------------------------------------
select c.*
     , median(c.weight) over (partition by c.gender) as median_wt     
  from childstat c
;
