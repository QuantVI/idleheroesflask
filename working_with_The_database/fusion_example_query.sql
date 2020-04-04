select * from factions;

select * from heroes;

select * from fusions;

select
    h.stars,
    h.name,
    h.id as heroes_table_id,
    fus.*,
    ih1.stars as IH1stars, ih1.name as IH1name,
    ih2.stars as IH2stars, ih2.name as IH2name
from fusions as fus

left join heroes as h
    on fus.result_hero_id = h.id

left join heroes as ih1
    on fus.input_hero_1_id = ih1.id

left join heroes as ih2
    on fus.input_hero_2_id = ih2.id

where fus.faction_id = 4

;
