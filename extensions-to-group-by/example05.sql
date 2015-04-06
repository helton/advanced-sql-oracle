--------------------------------------------------------------------------------
--Example #05: Re-do the CUBE example, but move SURVEY_YEAR from withing
--the CUBE syntax
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by survey_year
       , cube(candybar_name, gender, overall_rating)
;
