execute store result storage cartographer:custom_enchantments damage double 0.01 run scoreboard players get $result_damage ca.ench_var

execute store result storage cartographer:custom_enchantments length double 0.01 run scoreboard players get $length ca.ench_soulfire_lvl

execute store result storage cartographer:custom_enchantments delay int 1 run scoreboard players get @s ca.soulfire_delay
scoreboard players add @s ca.soulfire_delay 10

data modify storage gu:main out set value "-"
function gu:generate
data modify storage cartographer:custom_enchantments owner set from storage gu:main out


execute summon item_display run function cartographer_custom_enchantments:enchantment/passive/soulfire/create_flames_macro with storage cartographer:custom_enchantments
scoreboard players add @s ca.soulfire_ct 1