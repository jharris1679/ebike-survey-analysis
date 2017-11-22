select 
  sex as feature,
  case 
    when sex = 'Male' then 1
    when sex = 'Female' then 2
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by feature
