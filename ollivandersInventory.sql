--want to figure out what wrong with this code
 select w.id,wp.age,w.coins_needed,w.power
 from wands w
 join wands_property wp
 on wp.code = w.code
 where wp.is_evil = '0' and w.coins_needed in (select min(wands.coins_needed) from wands where wands.code = wands_property.code group by wands.power)
 order by w.power desc,wp.age desc;

select Wands.id,Wands_Property.age,Wands.coins_needed,Wands.power 
from Wands 
join Wands_Property 
on Wands.code = Wands_Property.code
where Wands_Property.is_evil = '0' and Wands.coins_needed in (select min(Wands.coins_needed)from Wands where Wands.code = Wands_Property.code group by Wands.power)
order by Wands.power desc, Wands_Property.age desc;
