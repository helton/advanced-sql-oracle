--------------------------------------------------------------------------------
--Example #01: Create a column containing row counts within gender
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--1st way   
--------------------------------------------------------------------------------
create table childstat_count_by_gender as
  select gender
       , count(*) as gender_count
    from childstat
   group by gender;
   
select c.*
     , cc.gender_count
  from childstat c
  join childstat_count_by_gender cc
    on c.gender = cc.gender
;

drop table childstat_count_by_gender;

--------------------------------------------------------------------------------
--2nd way   
--------------------------------------------------------------------------------
select c.*
     , cc.gender_count
  from childstat c
  join (select gender
             , count(*) as gender_count
          from childstat
         group by gender) cc
    on c.gender = cc.gender
;

--------------------------------------------------------------------------------
--3rd way
--------------------------------------------------------------------------------
select c.*
     , count(*) over (partition by gender) gender_count
  from childstat c;
