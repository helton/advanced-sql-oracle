--------------------------------------------------------------------------------
--Motivational example: Use a GROUP BY to sum the NUMBER_BARS_CONSUMED to the
--SURVEY_YEAR, CANDYBAR_NAME, GENDER and OVERALL_RATING level.
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
;