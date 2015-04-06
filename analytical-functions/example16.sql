--------------------------------------------------------------------------------
--Example #16: Motivational example #2 - Revisited
--Running total only worked because of Window Clause!
--------------------------------------------------------------------------------
select c.*
     , sum(c.weight) over (partition by c.gender 
                               order by c.weight
                                rows between unbounded preceding
                                         and current row) as wt_run
     , sum(c.weight) over (partition by c.gender 
                               order by c.weight
                                rows between unbounded preceding
                                         and unbounded following) as wt_run2
  from childstat c
;
