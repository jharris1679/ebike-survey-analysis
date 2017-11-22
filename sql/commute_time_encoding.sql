select 
  commute_time as feature,
  case 
    when commute_time = '15 minutes or less' then 1
    when commute_time = '16 - 29 minutes' then 2
    when commute_time = '30 - 44 minutes' then 3
    when commute_time = '45 minutes - 1 hour' then 4
    when commute_time = 'over 1 hour each way' then 5
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by feature 
