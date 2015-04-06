--------------------------------------------------------------------------------
--Example #02: Use ROLLUP to produce exactly the results in the 
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by rollup (survey_year, candybar_name, gender, overall_rating)
;
