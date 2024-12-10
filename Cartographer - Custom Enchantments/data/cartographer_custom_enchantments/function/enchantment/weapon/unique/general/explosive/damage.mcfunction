
$damage @s $(damage) cartographer_custom_enchantments:enchant_damage_bypass by @n[tag=ca.explosive_owner]

execute if entity @s[type=player] if score $attack_type ca.ench_value matches 1 on attacker at @s run function carto_event:api/create_single_entity_event {event:"custom_statuses/vanilla_attribute",duration:10,delay:000,parameters:{type:"minecraft:attack_damage",tag:"ca.enchant_block_rehit",id:"enchant_block_rehit",value:-1,operation:"add_multiplied_total",tick_command:""},merge_behavior:"none"}
