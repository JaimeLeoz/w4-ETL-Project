-- Top 15 districts average prices x night
select round(avg(price), 2) as avg_price_night, municipios as districts
from airbnbtotal as a

join rent_municipios as rent
on a.postal_codes = rent.postal_codes
WHERE sq_meters <= 50
group by municipios
order by avg_price_night desc
limit 20

;