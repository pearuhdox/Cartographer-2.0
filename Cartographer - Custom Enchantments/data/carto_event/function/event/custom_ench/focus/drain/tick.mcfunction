$execute as $(target) at @s unless entity @s[tag=ca.focus_active] if score @s ca.focus_stacks matches 1.. if score duration= carto_event matches 1 run scoreboard players remove @s ca.focus_stacks 1

$execute as $(target) at @s unless entity @s[tag=ca.focus_active] if score @s ca.focus_stacks matches 1.. if score duration= carto_event matches 1 run function carto_event:api/create_single_entity_event {event:"custom_ench/focus/drain",duration:17,delay:3,parameters:{},merge_behavior:"merge"}

$execute as $(target) at @s run return 1