execute if score @s ca.ench_regret_feet_lvl matches 1.. run tag @s add ca.used_regret
execute if score @s ca.ench_regret_feet_lvl matches 1.. run tag @s add ca.used_regret_feet

execute if score @s ca.ench_gluttony_feet_lvl matches 1.. run tag @s add ca.used_gluttony
execute if score @s ca.ench_gluttony_feet_lvl matches 1.. run tag @s add ca.used_gluttony_feet

advancement revoke @s only cartographer_custom_enchantments:use_item_durability/regret/feet
advancement revoke @s only cartographer_custom_enchantments:use_item_durability/gluttony/feet