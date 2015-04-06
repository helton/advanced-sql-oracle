--------------------------------------------------------------------------------
--Example #04: Create a column containing distinct number of genders
--------------------------------------------------------------------------------
select c.*
     , count(distinct c.gender) over () as dist_gender
  from childstat c
;
