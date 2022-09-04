
select count(municipios) as count , municipios
from airbnbtotal as a
-- Top 10 districts with most airbnbs
join rent_municipios as rent
on a.postal_codes = rent.postal_codes

group by municipios
order by count desc
limit 15

;