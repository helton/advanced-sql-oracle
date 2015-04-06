--------------------------------------------------------------------------------
--Example #17: Compute the average weight using the current, previous and next rows
--------------------------------------------------------------------------------
select c.*
     , round(avg(c.weight) over (partition by c.gender 
                                     order by c.weight
                                      rows between 1 preceding
                                               and 1 following), 1) as avg_3     
  from childstat c
;
