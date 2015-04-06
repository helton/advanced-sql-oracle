--------------------------------------------------------------------------------
--Example #10: Create two additional columns using the weight
--  the next heaviest weight
--  the prior lightest weight
--------------------------------------------------------------------------------
select c.*
     , lead(c.weight, 1, -1) over (order by c.weight) lead_1_wt
     , lag(c.weight, 2, -1) over (order by c.weight) lag_2_wt
  from childstat c
;
