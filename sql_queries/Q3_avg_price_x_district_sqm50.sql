-- Top 15 districts average prices x night
select round(avg(price), 2) as min_price_night, municipios as districts_sqm50
from airbnbtotal as a

join rent_municipios as rent
on a.postal_codes = rent.postal_codes
WHERE sq_meters <= 50
group by municipios
order by min_price_night asc
limit 15
