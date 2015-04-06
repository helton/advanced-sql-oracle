--------------------------------------------------------------------------------
--Setup
--------------------------------------------------------------------------------
define n_start = 1;
define n_end   = 50;

--------------------------------------------------------------------------------
--Range (with MAXRECURSION)
--------------------------------------------------------------------------------
with
  get_range(n) as (
    select &n_start
      from dual
     union all
    select n + 1
      from get_range
     where n < &n_end
  )
select * 
  from get_range
option (maxrecursion 10)
;