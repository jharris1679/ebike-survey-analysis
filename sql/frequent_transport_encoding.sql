select 
  frequent_transport as feature,
  case 
    when frequent_transport = 'bicycle' then 1
    when frequent_transport = 'private motor vehicle (car, truck, SUV, van, motorcycle, gas limited speed motorcycle or moped)' then 2
    when frequent_transport = 'transit' then 3
    when frequent_transport = 'walking' then 4
    when frequent_transport = 'scooter type e-bike' then 5
    when frequent_transport = 'pedal assist type e-bike' then 6
  else 0 end as encoding,
  count(distinct(timestamp)) num_responses
from ecobike_survey.responses 
group by feature, encoding
order by num_responses desc 
