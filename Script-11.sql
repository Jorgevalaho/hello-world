# �daj o hustot� zalidn�n� population_density se u n�kter�ch zem� dost li�� od vypo�ten� hodnoty population/surface_area. N�kde nen� uvedena populace nebo surface area
# a p�esto je uvedena population_density. Pou�iju vypo�tenou hodnotu.
create table t_pop_density
select country , round (population / surface_area,4) as pop_dens
from countries c 
where population is not null and surface_area is not null
and population != 0 and surface_area != 0;

# Pridam vetu Cau