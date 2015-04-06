--------------------------------------------------------------------------------
--Example #08: Re-do the ROLLUP example.
--Use GROUP_ID() to determine repeated rows
--------------------------------------------------------------------------------
select survey_year
     , candybar_name
     , gender
     , overall_rating
     , sum(number_bars_consumed) as total_bars_consumed
     , group_id() as row_id
 from candybar_consumption_data
group by survey_year
       , rollup (survey_year, candybar_name, gender, overall_rating)
;