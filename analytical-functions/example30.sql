--------------------------------------------------------------------------------
--Example #30: Compute the height associated with the percentile .50 and .72
--------------------------------------------------------------------------------
select c.*
     , round(cume_dist() over (order by c.height), 4) as cumdist_height
     , percentile_disc(.50) within group (order by c.height) over () as pctdisc_50_height
     , percentile_disc(.72) within group (order by c.height) over () as pctdisc_72_height     
  from childstat c
;
