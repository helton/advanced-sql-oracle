--------------------------------------------------------------------------------
--Example #04: Re-do the ROLLUP example, but ensure that CANDYBAR_NAME and
--GENDER act as one
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
 from candybar_consumption_data
group by rollup (survey_year, (candybar_name, gender), overall_rating)
;
