execute store result storage cartographer:custom_enchantments x double 0.1 run scoreboard players get $pos_x ca.ench_storm_lvl
execute store result storage cartographer:custom_enchantments y double 0.1 run scoreboard players get $pos_y ca.ench_storm_lvl
execute store result storage cartographer:custom_enchantments z double 0.1 run scoreboard players get $pos_z ca.ench_storm_lvl

execute store result storage cartographer:custom_enchantments duration int 1 run scoreboard players get $duration ca.ench_storm_lvl

execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_storm_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_storm_lvl
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_storm_lvl
execute store result storage cartographer:custom_enchantments quarter_size double 0.01 run scoreboard players get $quarter_size ca.ench_storm_lvl

function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

execute summon text_display run function cartographer_custom_enchantments:enchantment/passive/storm/create_telegraphing with storage cartographer:custom_enchantments

execute as @e[type=text_display,sort=nearest,tag=ca.storm_telegraph,tag=!ca.activated,limit=1] at @s run function cartographer_custom_enchantments:enchantment/passive/storm/create_storm_macro with storage cartographer:custom_enchantments

scoreboard players add @s ca.storm_ct 1
