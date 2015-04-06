--------------------------------------------------------------------------------
--Example #28: Use CUME_DIST() to compute the cumulative distribuition on the height
--------------------------------------------------------------------------------
select c.*
     , round(cume_dist() over (order by c.height), 4) as cumdist_height
  from childstat c
;
