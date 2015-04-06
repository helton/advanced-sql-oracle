--------------------------------------------------------------------------------
--Example #03: Spin thru the COMPANY table starting at MANAGER_ID = 3
--------------------------------------------------------------------------------
with
  rsfc(empid, ename, mgrid, lvl) as (
    select c.employee_id
         , c.employee_name
         , c.manager_id
         , 0 as lvl
      from company c
     where c.manager_id = 3 --is null
     union all
    select c.employee_id
         , c.employee_name
         , c.manager_id
         , r.lvl + 1
      from rsfc r
      join company c
        on r.empid = c.manager_id
  )
select r.*
     , c.employee_name mgr_name
     , lpad(' ', 2 * r.lvl)||r.ename hierarchy
  from rsfc r
  left join company c
    on c.employee_id = r.mgrid
 order by r.lvl, r.empid