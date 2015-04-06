--------------------------------------------------------------------------------
--Example #02: Spin thru the FAMILY table starting at PARENT_KEY IS NULL
--------------------------------------------------------------------------------
with
  rsfc(ck, pk, lvl) as (
    select f.child_key
         , f.parent_key
         , 0
      from family f
     where f.parent_key is null
     union all
    select f.child_key
         , f.parent_key
         , r.lvl + 1
      from rsfc r
      join family f
        on f.parent_key = r.ck
  )
select lpad(' ', 2 * r.lvl)||r.ck hierarchy
  from rsfc r