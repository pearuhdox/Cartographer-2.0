$execute if score duration= carto_event matches 1 as $(target) at @s run scoreboard players remove @s ca.tenacity_stack 1
$execute if score duration= carto_event matches 1 as $(target) at @s if score @s ca.tenacity_stack matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_ench/tenacity",duration:98,delay:3,parameters:{},merge_behavior:"merge"}

return 1