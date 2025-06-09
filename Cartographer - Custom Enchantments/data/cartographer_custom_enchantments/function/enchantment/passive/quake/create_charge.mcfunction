execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_quake_lvl
execute store result storage cartographer:custom_enchantments half_size double 0.01 run scoreboard players get $half_size ca.ench_quake_lvl
execute store result storage cartographer:custom_enchantments size_neg_1 double 0.01 run scoreboard players get $size_neg_1 ca.ench_quake_lvl

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out

execute anchored feet positioned ^ ^-0.5 ^ run function cartographer_core:handlers/get_block/save
execute unless data storage cartographer_custom_enchantments block run data modify storage cartographer:custom_enchantments block set value "minecraft:stone"
data modify storage cartographer:custom_enchantments block set from storage cartographer_core:get_block id

execute summon text_display run function cartographer_custom_enchantments:enchantment/passive/quake/create_telegraphing with storage cartographer:custom_enchantments

execute summon marker run function cartographer_custom_enchantments:enchantment/passive/quake/create_charge_macro with storage cartographer:custom_enchantments
scoreboard players add @s ca.quake_ct 1
