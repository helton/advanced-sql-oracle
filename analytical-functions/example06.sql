--------------------------------------------------------------------------------
--Example #06: Create a column containing row counts withing gender and birth year
--------------------------------------------------------------------------------
select c.*
     , count(*) over (partition by c.gender, extract(year from c.birthdate)) cnt_gby
  from childstat c
;
