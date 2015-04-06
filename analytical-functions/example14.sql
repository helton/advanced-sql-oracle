--------------------------------------------------------------------------------
--Example #14: Re-do previous example (Retrieves names of the heaviest/lightest male/female child)
--------------------------------------------------------------------------------
select c.*
      , first_value(c.firstname) over (partition by c.gender 
                                       order by c.weight
                                       rows between unbounded preceding
                                                and current row) as lt_child
      , last_value(c.firstname) over (partition by c.gender 
                                      order by c.weight
                                      rows between unbounded preceding
                                               and current row) as hv_child
  from childstat c
;
