select 
  commute_distance as feature,
  case 
    when commute_distance = 'Under 2 km' then 1
    when commute_distance = '5 - 10 km' then 2
    when commute_distance = '10 - 20 km' then 3
    when commute_distance = '20 -35 km' then 4
    when commute_distance = 'Over 35 km' then 5
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by num_responses desc
