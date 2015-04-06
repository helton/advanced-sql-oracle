--------------------------------------------------------------------------------
--Example #06: Re-do the ROLLUP example.
--Use GROUPING() on each column in GROUP BY ROLLUP
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
     , grouping(survey_year)
     , grouping(candybar_name)
     , grouping(gender)
     , grouping(overall_rating)
 from candybar_consumption_data
group by rollup (survey_year, candybar_name, gender, overall_rating)
;