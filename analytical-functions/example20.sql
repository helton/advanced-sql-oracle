--------------------------------------------------------------------------------
--Example #20: Determine the weight one heavier than the minimum weight and
--the weight one lighter than the maximum weight
--------------------------------------------------------------------------------
select c.*
     , nth_value(c.weight, 2) from first
           over (partition by c.gender
                     order by c.weight
                      rows between unbounded preceding
                               and unbounded following) next_heavy_gdr
     , nth_value(c.weight, 2) from last
           over (partition by c.gender
                     order by c.weight
                      rows between unbounded preceding
                               and unbounded following) ntolast_heavy_gdr
  from childstat c
;
