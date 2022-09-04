-- % of difference in renting prices vs Airbnb by sqm in a monthly basis

select municipios, airbnb_price_data_sqm, Avg_rent_realdata_sqm, round(((airbnb_price_data_sqm/Avg_rent_realdata_sqm)/100)*100, 2) as Difference_price_sqm_percent
from
(select municipios, round(avg( price_sqm_amonth),2) as airbnb_price_data_sqm , round(avg(price_sqm_amonth_alqu), 2) as Avg_rent_realdata_sqm

from airbnbtotal as a
join rent_municipios as rent
on a.postal_codes = rent.postal_codes

group by municipios) as table_avg_sqm

order by Difference_price_sqm_percent desc
limit 15