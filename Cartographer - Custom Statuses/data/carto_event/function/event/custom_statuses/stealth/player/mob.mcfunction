scoreboard players set $stealth_target ca.status_var 0

$scoreboard players set $(target) ca.stealth_value 0
execute on target run scoreboard players set @s ca.stealth_value 0

$scoreboard players add $(target) ca.stealth_value 1
execute on target run scoreboard players add @s ca.stealth_value 1

$execute as $(target) if score @s ca.stealth_value matches 2.. run scoreboard players set $stealth_target ca.status_var 1

execute if score $stealth_target ca.status_var matches 1.. run function carto_event:api/create_single_entity_event {event:"custom_statuses/vanilla_attribute",duration:5,delay:0,parameters:{type:"minecraft:follow_range",tag:"ca.stealth_mob_blindness_attr",id:"ca.stealth_blindness_mob",value:-100,operation:"add_value",tick_command:""},merge_behavior:"none"} 