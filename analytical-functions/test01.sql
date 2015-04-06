--------------------------------------------------------------------------------
--Running totals of weight by gender
--------------------------------------------------------------------------------
select c.gender
     , c.firstname
     , c.weight
     , sum(c.weight) over (partition by c.gender order by c.weight) as wt_run
  from childstat c
;