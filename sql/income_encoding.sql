select 
  income as feature,
  case 
    when income = 'Under $20K' then 1
    when income = '$20K to $39K' then 2
    when income = '$40K to $59K' then 3
    when income = '$60K to $79K' then 4
    when income = '$80K to $99K' then 5
    when income = '$100K+' then 6
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by feature
