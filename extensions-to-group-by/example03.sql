--------------------------------------------------------------------------------
--Example #03: Create all combinations of data using the variables
--SURVEY_YEAR, CANDYBAR_NAME, GENDER, OVERALL_RATING
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by cube (survey_year, candybar_name, gender, overall_rating)
;
