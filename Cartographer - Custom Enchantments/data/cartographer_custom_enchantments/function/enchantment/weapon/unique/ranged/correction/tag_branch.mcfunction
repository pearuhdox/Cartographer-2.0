execute if score $hit ca.ench_correction_lvl matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/correction/cooldown",duration:3,delay:0,parameters:{},merge_behavior:"none"}
execute if score $hit ca.ench_correction_lvl matches 1.. run tag @s add ca.corrected_hit

tag @s add ca.corrected_check