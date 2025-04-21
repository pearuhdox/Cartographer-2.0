scoreboard players operation $damage ca.ench_var = $first_strike ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

execute unless entity @s[tag=ca.first_striked] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/first_strike/damage with storage cartographer:custom_enchantments

execute unless entity @s[tag=ca.first_striked] run function carto_event:api/create_single_entity_event {event:"custom_ench/first_strike",duration:60,delay:0,parameters:{},merge_behavior:"merge"}
