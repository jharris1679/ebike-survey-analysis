select 
  age_range,
  case 
    when age_range = '17 or younger' then 1
    when age_range = '18 to 34' then 2
    when age_range = '35 to 49' then 3
    when age_range like '50 to 64%' then 4
    when age_range = '65 years or more' then 5
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
