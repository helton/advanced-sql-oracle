--------------------------------------------------------------------------------
--Example #13: Retrieves names of the heaviest/lightest male/female child
--------------------------------------------------------------------------------
select c.*
      , first_value(c.firstname) over (partition by c.gender 
                                       order by c.weight) as lt_child
      , last_value(c.firstname) over (partition by c.gender 
                                      order by c.weight) as hv_child
  from childstat c
;
