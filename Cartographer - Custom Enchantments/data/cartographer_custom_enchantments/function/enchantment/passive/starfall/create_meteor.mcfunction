execute store result storage cartographer:custom_enchantments x double 0.1 run scoreboard players get $pos_x ca.ench_starfall_lvl
execute store result storage cartographer:custom_enchantments y double 0.1 run scoreboard players get $pos_y ca.ench_starfall_lvl
execute store result storage cartographer:custom_enchantments z double 0.1 run scoreboard players get $pos_z ca.ench_starfall_lvl

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_starfall_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_starfall_lvl
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_starfall_lvl

execute store result storage cartographer:custom_enchantments delay int 1 run scoreboard players get @s ca.starfall_delay
execute run scoreboard players add @s ca.starfall_delay 5

execute anchored feet positioned ^ ^-0.5 ^ run function cartographer_core:handlers/get_block/save
data modify storage cartographer:custom_enchantments block set from storage cartographer_core:get_block id

execute summon text_display run function cartographer_custom_enchantments:enchantment/passive/starfall/create_telegraphing with storage cartographer:custom_enchantments

function cartographer_custom_enchantments:enchantment/passive/starfall/create_meteor_macro with storage cartographer:custom_enchantments
scoreboard players add @s ca.starfall_ct 1

execute run scoreboard players set @s ca.starfall_entropy 0
