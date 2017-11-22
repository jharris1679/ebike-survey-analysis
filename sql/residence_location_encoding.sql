select 
  residence_location as feature,
  case 
    when residence_location = 'Central Toronto, York or East York' then 1
    when residence_location = 'Etobicoke' then 2
    when residence_location = 'North York' then 3
    when residence_location = 'Scarborough' then 4
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by num_responses desc
