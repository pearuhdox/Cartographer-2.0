execute if score @s ca.ench_regret_chest_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_chest_lvl matches 1.. run tag @s add ca.used_regret_chest

execute if score @s ca.ench_gluttony_chest_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_chest_lvl matches 1.. run tag @s add ca.used_gluttony_chest

advancement revoke @s only cartographer_custom_enchantments:use_item_durability/regret/body
advancement revoke @s only cartographer_custom_enchantments:use_item_durability/gluttony/body
