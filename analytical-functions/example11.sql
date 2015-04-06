--------------------------------------------------------------------------------
--Example #11: Create two additional columns using the weight withing gender
--  the next heaviest weight
--  the prior lightest weight
--------------------------------------------------------------------------------
select c.*
     , lead(c.weight, 1, -1) over (partition by gender order by c.weight) lead_1_wt
     , lag(c.weight, 2, -1) over (partition by gender order by c.weight) lag_2_wt
  from childstat c
;
