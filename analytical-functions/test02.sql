--------------------------------------------------------------------------------
--Exploring LAG and LEAD
--------------------------------------------------------------------------------
select c.*
     , lag(c.firstname, 2, '<none>') over (order by c.firstname) prior2_firstname
     , lag(c.firstname, 1, '<none>') over (order by c.firstname) prior_firstname
     , c.firstname
     , lead(c.firstname, 1, '<none>') over (order by c.firstname) next_firstname
     , lead(c.firstname, 2, '<none>') over (order by c.firstname) next2_firstname
  from childstat c
;

select c.gender
     , lag(c.firstname, 1, '<none>') over (partition by c.gender order by c.firstname) prior1_firstname
     , c.firstname
     , lead(c.firstname, 1, '<none>') over (partition by c.gender order by c.firstname) next_firstname
  from childstat c
;