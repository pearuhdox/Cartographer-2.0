scoreboard players operation @s ca.tenacity_buffer -= $max ca.tenacity_hp

scoreboard players add @s ca.tenacity_stack 1

execute if score @s ca.tenacity_stack matches 5.. run scoreboard players set @s ca.tenacity_stack 4

function carto_event:api/create_single_entity_event {event:"custom_ench/tenacity",duration:101,delay:0,parameters:{},merge_behavior:"merge"}