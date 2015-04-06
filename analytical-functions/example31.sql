--------------------------------------------------------------------------------
--Example #31: Compute the height associated with the percentile .50 and .72
--------------------------------------------------------------------------------
select c.*
     , percentile_cont(.50) within group (order by c.height) over () as pctcont_50_height
     , percentile_cont(.72) within group (order by c.height) over () as pctcont_72_height     
  from childstat c
;
