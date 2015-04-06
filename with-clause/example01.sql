--------------------------------------------------------------------------------
--Example #01: Compute 4! using a Recursive WITH Clause
--------------------------------------------------------------------------------
with
  --rsfc = recursive subquery factory clause
  rsfc(iteration, running_factorial) as (
    --anchor query
    select num as iteration
         , 1 as running_total        
      from numbers
     where num = 1
     union all    
    --recursive query
    select r.iteration + 1
         , r.running_factorial * b.num
      from rsfc r
      join numbers b
        on (r.iteration + 1) = b.num     
  )
select iteration, running_factorial
  from rsfc
;