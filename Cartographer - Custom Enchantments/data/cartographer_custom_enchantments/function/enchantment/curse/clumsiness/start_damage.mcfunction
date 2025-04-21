execute if entity @s[type=player] run playsound minecraft:entity.player.attack.crit player @s ~ ~ ~ 0.45 1.5
execute if entity @s[type=player] run playsound minecraft:block.calcite.break player @s ~ ~ ~ 1 0.75

execute if entity @s[type=player] run scoreboard players set @s ca.fragility_time 10

scoreboard players operation $count ca.ench_clumsiness_lvl = @s ca.ench_clumsiness_lvl
scoreboard players operation $count ca.ench_clumsiness_lvl *= $3 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage int 1 run scoreboard players get @s ca.ench_clumsiness_lvl
execute store result storage cartographer:custom_enchantments count int 1 run scoreboard players get $count ca.ench_clumsiness_lvl

function cartographer_custom_enchantments:enchantment/curse/clumsiness/macro with storage cartographer:custom_enchantments

execute if entity @s[type=player] run function carto_event:api/create_single_entity_event {event:"custom_ench/fragility",duration:10,delay:0,parameters:{},merge_behavior:"none"}