select 
  employment as feature,
  case 
    when employment = 'Student' then 1
    when employment = 'Part Time' then 2
    when employment = 'Self Employed' then 3
    when employment = 'Retired' then 4
    when employment = 'Full Time' then 5
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by num_responses desc
