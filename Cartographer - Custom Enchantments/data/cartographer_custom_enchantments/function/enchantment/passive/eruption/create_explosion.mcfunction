execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_eruption_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_eruption_lvl
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_eruption_lvl

execute store result storage cartographer:custom_enchantments delay int 1 run scoreboard players get @s ca.eruption_delay

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

execute summon text_display run function cartographer_custom_enchantments:enchantment/passive/eruption/create_telegraphing with storage cartographer:custom_enchantments

execute summon item_display run function cartographer_custom_enchantments:enchantment/passive/eruption/create_explosion_macro with storage cartographer:custom_enchantments

scoreboard players add @s ca.eruption_ct 1
