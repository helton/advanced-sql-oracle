--------------------------------------------------------------------------------
--Example #07: Create a column containing row numbers ordered by ascending name
--------------------------------------------------------------------------------
select c.*
     , row_number() over (order by c.firstname) as rnum
  from childstat c
;