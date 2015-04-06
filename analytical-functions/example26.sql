--------------------------------------------------------------------------------
--Example #26: Break up the height into quartiles
--------------------------------------------------------------------------------
select c.*
     , ntile(4) over (order by c.height) as grp4_ht
  from childstat c
;
