--------------------------------------------------------------------------------
--Example #02: Create a column containing maximum height within gender
--------------------------------------------------------------------------------
select c.*
     , max(c.height) over (partition by c.gender) as max_ht
  from childstat c
;
