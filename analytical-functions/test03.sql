--------------------------------------------------------------------------------
--Tests with RANK and DENSE_RANK
--------------------------------------------------------------------------------
select c.*
      , rank() over (order by c.height) as rank_height
      , dense_rank() over (order by c.height) as denserank_height
  from childstat c
;
