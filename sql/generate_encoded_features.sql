select 
  case 
    when age_range = '17 or younger' then 1
    when age_range = '18 to 34' then 2
    when age_range = '35 to 49' then 3
    when age_range like '50 to 64%' then 4
    when age_range = '65 years or more' then 5
  else 0 end as age_range,
  case 
    when sex = 'Male' then 1
    when sex = 'Female' then 2
  else 0 end as sex,
  case 
    when health = 'Poor' then 1
    when health = 'Fairly good' then 2
    when health = 'Good' then 3
    when health = 'Excellent' then 4
  else 0 end as health,
  case 
    when education = 'High school diploma' then 1
    when education = 'College or trade school diploma' then 2
  else 0 end as education,
  case 
    when income = 'Under $20K' then 1
    when income = '$20K to $39K' then 2
    when income = '$40K to $59K' then 3
    when income = '$60K to $79K' then 4
    when income = '$80K to $99K' then 5
    when income = '$100K+' then 6
  else 0 end as income,
  case 
    when employment = 'Student' then 1
    when employment = 'Part Time' then 2
    when employment = 'Self Employed' then 3
    when employment = 'Retired' then 4
    when employment = 'Full Time' then 5
  else 0 end as employment,
  case 
    when residence_location = 'Central Toronto, York or East York' then 1
    when residence_location = 'Etobicoke' then 2
    when residence_location = 'North York' then 3
    when residence_location = 'Scarborough' then 4
  else 0 end as residence_location,
  case 
    when commute_distance = 'Under 2 km' then 1
    when commute_distance = '5 - 10 km' then 2
    when commute_distance = '10 - 20 km' then 3
    when commute_distance = '20 -35 km' then 4
    when commute_distance = 'Over 35 km' then 5
  else 0 end as commute_distance,
  case 
    when commute_time = '15 minutes or less' then 1
    when commute_time = '16 - 29 minutes' then 2
    when commute_time = '30 - 44 minutes' then 3
    when commute_time = '45 minutes - 1 hour' then 4
    when commute_time = 'over 1 hour each way' then 5
  else 0 end as commute_time,
  case 
    when frequent_transport = 'bicycle' then 1
    when frequent_transport = 'private motor vehicle (car, truck, SUV, van, motorcycle, gas limited speed motorcycle or moped)' then 2
    when frequent_transport = 'transit' then 3
    when frequent_transport = 'walking' then 4
    when frequent_transport = 'scooter type e-bike' then 5
    when frequent_transport = 'pedal assist type e-bike' then 6
  else 0 end as frequent_transport,
  case 
    when vehicle_access = 'No - I do not have access to a private motorized vehicle' then 1
  else 0 end as vehicle_access
from ecobike_survey.responses 





