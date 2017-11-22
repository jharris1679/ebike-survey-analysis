select 
  education as feature,
  case 
    when education = 'High school diploma' then 1
    when education = 'College or trade school diploma' then 2
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by feature
