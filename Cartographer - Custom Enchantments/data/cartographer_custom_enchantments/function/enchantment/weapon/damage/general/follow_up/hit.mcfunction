scoreboard players operation $damage ca.ench_var = $follow_up ca.ench_value
scoreboard players operation $damage ca.ench_var *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_var

execute if entity @s[tag=ca.follow_uped] run function cartographer_custom_enchantments:enchantment/weapon/damage/general/follow_up/damage with storage cartographer:custom_enchantments

function carto_event:api/create_single_entity_event {event:"custom_ench/follow_up",duration:60,delay:0,parameters:{},merge_behavior:"merge"}
