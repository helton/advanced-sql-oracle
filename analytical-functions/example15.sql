--------------------------------------------------------------------------------
--Example #15: Retrieve the name of the heaviest and lightest male and female child
--------------------------------------------------------------------------------
select c.*
      , first_value(c.firstname) over (partition by c.gender 
                                       order by c.weight
                                       rows between unbounded preceding
                                                and unbounded following) as lt_child
      , last_value(c.firstname) over (partition by c.gender 
                                      order by c.weight
                                      rows between unbounded preceding
                                               and unbounded following) as hv_child
  from childstat c
;
