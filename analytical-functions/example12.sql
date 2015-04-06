--------------------------------------------------------------------------------
--Example #12: Create ranks using ascending heigth within gender
--------------------------------------------------------------------------------
select c.*
      , rank() over (partition by c.gender order by c.height) as ht_rank
      , dense_rank() over (partition by c.gender order by c.height) as ht_dense_rank
  from childstat c
;
