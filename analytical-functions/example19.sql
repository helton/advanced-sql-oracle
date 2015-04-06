--------------------------------------------------------------------------------
--Example #19: Compute average weight within a 90-day window of the child's birthdate
--------------------------------------------------------------------------------
select c.*
     , avg(c.weight) over (order by c.birthdate
                           range between interval '30' day preceding
                                     and interval '60' day following) as avg_30_60
  from childstat c
;
