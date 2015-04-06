--------------------------------------------------------------------------------
--Example #01: Use GROUPING SETS to produce exactly the results in the 
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by grouping sets ( (survey_year, candybar_name, gender, overall_rating)
                       , (survey_year, candybar_name, gender)
                       , (survey_year, candybar_name)
                       , (survey_year)
                       , ()
                       )
;
