--------------------------------------------------------------------------------
--Example #03: Create a column containing distinct height counts within gender
--------------------------------------------------------------------------------
select c.*
     , count(distinct c.height) over (partition by c.gender) as dist_ht
  from childstat c
;
