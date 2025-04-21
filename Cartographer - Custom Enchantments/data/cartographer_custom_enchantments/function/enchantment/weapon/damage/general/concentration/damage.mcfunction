execute store result score $silent ca.ench_value run data get entity @s Silent
execute unless score $silent ca.ench_value matches 1.. run data modify entity @s Silent set value 1b
$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass
execute unless score $silent ca.ench_value matches 1.. run data modify entity @s Silent set value 0b

execute at @s positioned ~ ~1 ~ unless entity @s[tag=ca.did_ench_particles] run particle minecraft:enchanted_hit ~ ~ ~ 0.25 0.35 0.25 0.35 35 normal
tag @s add ca.did_ench_particles

execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 on attacker at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/vanilla_attribute",duration:10,delay:0,parameters:{type:"minecraft:attack_damage",tag:"ca.enchant_block_rehit",id:"enchant_block_rehit",value:-1,operation:"add_multiplied_total",tick_command:""},merge_behavior:"none"}