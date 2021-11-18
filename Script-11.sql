# údaj o hustotì zalidnìní population_density se u nìkterých zemí dost liší od vypoètené hodnoty population/surface_area. Nìkde není uvedena populace nebo surface area
# a pøesto je uvedena population_density. Použiju vypoètenou hodnotu.
create table t_pop_density
select country , round (population / surface_area,4) as pop_dens
from countries c 
where population is not null and surface_area is not null
and population != 0 and surface_area != 0;

# Pridam vetu Cau