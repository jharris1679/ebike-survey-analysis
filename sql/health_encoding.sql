select 
  health as feature,
  case 
    when health = 'Poor' then 1
    when health = 'Fairly good' then 2
    when health = 'Good' then 3
    when health = 'Excellent' then 4
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by feature
