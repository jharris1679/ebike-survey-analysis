select 
  vehicle_access as feature,
  case 
    when vehicle_access = 'No - I do not have access to a private motorized vehicle' then 1
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by num_responses desc 
