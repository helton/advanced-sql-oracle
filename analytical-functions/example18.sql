--------------------------------------------------------------------------------
--Example #18: Compute the sum of weight based on a range of height between 10 less
--than the current row's value to 5 more than the current row's value
--------------------------------------------------------------------------------
select c.*
     , sum(c.weight) over (order by c.height
                           range between 10 preceding
                                     and  5 following) as sum_10_5
  from childstat c
;
