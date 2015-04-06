--------------------------------------------------------------------------------
--Motivational example: Use a GROUP BY to sum the NUMBER_BARS_CONSUMED to the
--SURVEY_YEAR, CANDYBAR_NAME, GENDER and OVERALL_RATING level.
--Produce summary levels plus grand total
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
--Vintage style
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by survey_year
       , candybar_name
       , gender
       , overall_rating
union all
select survey_year
     , candybar_name
     , gender
     , null as overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by survey_year
       , candybar_name
       , gender
union all
select survey_year
     , candybar_name
     , null as gender
     , null as overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by survey_year
       , candybar_name
union all
select survey_year
     , null as candybar_name
     , null as gender
     , null as overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by survey_year
union all
select null survey_year
     , null as candybar_name
     , null as gender
     , null as overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
;
