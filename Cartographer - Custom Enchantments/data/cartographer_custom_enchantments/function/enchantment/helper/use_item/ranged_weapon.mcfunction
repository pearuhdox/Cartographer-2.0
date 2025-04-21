execute if score @s ca.ench_regret_offh_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_offh_lvl matches 1.. run tag @s add ca.used_regret_offh

execute if score @s ca.ench_regret_main_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_main_lvl matches 1.. run tag @s add ca.used_regret_main

execute if score @s ca.ench_gluttony_offh_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_offh_lvl matches 1.. run tag @s add ca.used_gluttony_offh

execute if score @s ca.ench_gluttony_main_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_main_lvl matches 1.. run tag @s add ca.used_gluttony_main

advancement revoke @s only cartographer_custom_enchantments:use_item_durability/regret/ranged_weapon
advancement revoke @s only cartographer_custom_enchantments:use_item_durability/gluttony/ranged_weapon