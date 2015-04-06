--------------------------------------------------------------------------------
--Example #08: Create a column containing row numbers within gender
--------------------------------------------------------------------------------
select c.*
     , row_number() over (partition by c.gender 
                          order by c.firstname) as rnum
  from childstat c
;