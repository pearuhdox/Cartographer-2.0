scoreboard players remove $cascade_hits ca.warding_var 1

scoreboard players operation $cascade_time ca.warding_var += $cascade_time_org ca.warding_var
execute store result storage cartographer:custom_statuses cascade_time int 1 run scoreboard players get $cascade_time ca.warding_var

scoreboard players add @s ca.warding_hits 1

$function carto_event:api/create_single_entity_event {event:"custom_statuses/warding/cascade",duration:1,delay:$(cascade_time),parameters:{damage:$(cascade_damage)},merge_behavior:"merge"}

execute if score $cascade_hits ca.warding_var matches 1.. run function carto_event:event/custom_statuses/warding/cascade_rec with storage cartographer:custom_statuses