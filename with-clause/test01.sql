--------------------------------------------------------------------------------
--Setup
--------------------------------------------------------------------------------
define n_start = 1;
define n_end   = 50;

--------------------------------------------------------------------------------
--Range
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
;

--------------------------------------------------------------------------------
--Factorial
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
, factorial(iter, fact) as (
    select n iter
         , 1 fact
      from get_range
     where n = 1
     union all
    select f.iter + 1
         , f.fact * gr.n
      from factorial f
      join get_range gr
        on (f.iter + 1) = gr.n
  )
select iter as iteration
     , fact as factorial
  from factorial
;

--------------------------------------------------------------------------------
--Fibonacci
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
, fibonacci(iter, previous_fib, current_fib) as (
    select n iter
         , 1 previous_fib
         , 1 current_fib
      from get_range
     where n = 1
     union all
    select (f.iter + 1) as iter
         , f.current_fib as previous_fib
         , (f.previous_fib + f.current_fib) as current_fib
      from fibonacci f
      join get_range gr
        on (f.iter + 1) = gr.n
  )
select iter as iteration
     , current_fib as fibonacci
  from fibonacci
;

/*
select s seq 
  from dual
 model return all rows
 dimension by (0 d) measures (0 s)
  rules iterate (&n) (
     s[iteration_number] = 
       decode(
          iteration_number, 0, 0, 1, 1, s[iteration_number-2]
       ) + nvl(s[iteration_number-1],0)
  )
*/