--------------------------------------------------------------------------------
--Example #09: Create a string of first names by gender ordered by descending weight
--------------------------------------------------------------------------------
select c.*
     , listagg(c.firstname, ', ') 
         within group (order by c.weight desc) 
                 over (partition by c.gender) as namelist
  from childstat c
;