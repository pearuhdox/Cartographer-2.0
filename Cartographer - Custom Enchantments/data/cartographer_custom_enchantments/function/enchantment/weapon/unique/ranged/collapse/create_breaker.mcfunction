execute store result storage cartographer:custom_enchantments x double 0.1 run scoreboard players get @s ca.collapse_x
execute store result storage cartographer:custom_enchantments y double 0.1 run scoreboard players get @s ca.collapse_y
execute store result storage cartographer:custom_enchantments z double 0.1 run scoreboard players get @s ca.collapse_z

function cartographer_custom_enchantments:enchantment/helper/weapon/get_ench_values_data

function cartographer_custom_enchantments:enchantment/weapon/unique/ranged/collapse/create_breaker_macro with storage cartographer:custom_enchantments

execute on origin run scoreboard players add @s ca.collapse_ct 1
