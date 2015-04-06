--------------------------------------------------------------------------------
--Example #27: Break up the height into quartiles by gender
--------------------------------------------------------------------------------
select c.*
     , ntile(4) over (partition by c.gender
                          order by c.height) as grp4_ht
  from childstat c
;
