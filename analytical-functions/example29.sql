--------------------------------------------------------------------------------
--Example #29: Compute the percent rank on height
--------------------------------------------------------------------------------
select c.*
     , rank() over (order by c.height) rank_height
     , round(percent_rank() over (order by c.height), 4) pctdist_height
  from childstat c
;
