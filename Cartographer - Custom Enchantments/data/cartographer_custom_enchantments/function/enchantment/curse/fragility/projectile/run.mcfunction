function cartographer_core:enchant_calculator/full_calculation {namespace:"cartographer_custom_enchantments",category:"curse/",enchantment:"projectile_fragility",type:"passive"}

execute if entity @s[type=player] run scoreboard players set @s ca.fragility_time 10

scoreboard players operation $count ca.ench_projectile_fragility_lvl = @s ca.ench_projectile_fragility_lvl
scoreboard players operation $count ca.ench_projectile_fragility_lvl *= $3 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage int 1 run scoreboard players get @s ca.ench_projectile_fragility_lvl
execute store result storage cartographer:custom_enchantments count int 1 run scoreboard players get $count ca.ench_projectile_fragility_lvl

function cartographer_custom_enchantments:enchantment/curse/fragility/projectile/macro with storage cartographer:custom_enchantments

function carto_event:api/create_single_entity_event {event:"custom_ench/fragility",duration:10,delay:0,parameters:{},merge_behavior:"none"}