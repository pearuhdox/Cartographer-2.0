scoreboard players set $size ca.ench_var 400
execute if score @s ca.attr_aoe_size_value matches -1999999.. run scoreboard players operation $size ca.ench_var += @s ca.attr_aoe_size_value
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_var *= @s ca.attr_aoe_size_percent
execute if score @s ca.attr_aoe_size_percent matches -1999999.. run scoreboard players operation $size ca.ench_var /= $100 ca.CONSTANT
execute store result storage cartographer:custom_enchantments size double 0.01 run scoreboard players get $size ca.ench_var

execute summon text_display run function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/create_telegraphing

scoreboard players operation $damage ca.ench_repulsion_lvl = @s ca.ench_repulsion_lvl
scoreboard players operation $damage ca.ench_repulsion_lvl *= $2 ca.CONSTANT

execute store result storage cartographer:custom_enchantments damage double 1 run scoreboard players get $damage ca.ench_repulsion_lvl

function cartographer_custom_enchantments:enchantment/weapon/unique/general/repulsion/mob_activate_macro with storage cartographer:custom_enchantments