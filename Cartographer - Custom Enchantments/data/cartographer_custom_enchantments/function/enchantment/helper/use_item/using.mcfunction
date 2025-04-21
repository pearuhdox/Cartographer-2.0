execute if score @s ca.ench_regret_offh_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_offh_lvl matches 1.. run tag @s add ca.used_regret_offh

execute if score @s ca.ench_regret_main_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_main_lvl matches 1.. run tag @s add ca.used_regret_main

execute if score @s ca.ench_gluttony_offh_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_offh_lvl matches 1.. run tag @s add ca.used_gluttony_offh

execute if score @s ca.ench_gluttony_main_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_main_lvl matches 1.. run tag @s add ca.used_gluttony_main

execute if entity @s[tag=ca.used_gluttony] run function cartographer_custom_enchantments:enchantment/curse/gluttony/run
execute if entity @s[tag=ca.used_regret] run function cartographer_custom_enchantments:enchantment/curse/regret/run

advancement revoke @s only cartographer_custom_enchantments:use_item_durability/regret/using
advancement revoke @s only cartographer_custom_enchantments:use_item_durability/gluttony/using